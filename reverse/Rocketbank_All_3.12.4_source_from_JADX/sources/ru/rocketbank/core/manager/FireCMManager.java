package ru.rocketbank.core.manager;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.ValueRequest;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.rx.RetryWithDelayAndLimitIf;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

public final class FireCMManager {
    private Authorization authorization;
    private Handler handler = new Handler();
    private HeaderManager headerManager;
    private Runnable postSendingAction = new C07831();
    private RocketAPI rocketAPI;
    private SharedPreferences sharedPreferences;

    /* renamed from: ru.rocketbank.core.manager.FireCMManager$1 */
    class C07831 implements Runnable {
        C07831() {
        }

        public final void run() {
            FireCMManager.this.sendTokenIfNeededExecute();
        }
    }

    /* renamed from: ru.rocketbank.core.manager.FireCMManager$2 */
    class C14262 extends Subscriber<Empty> {
        public final void onCompleted() {
        }

        C14262() {
        }

        public final void onError(Throwable th) {
            Log.e("FireCMManager", "Sending token error [user]: ", th);
        }

        public final /* bridge */ /* synthetic */ void onNext(Object obj) {
            Log.v("FireCMManager", "Sending token done [user]: ");
            FireCMManager.this.sharedPreferences.edit().putBoolean("FCM_SENT", true).apply();
            FireCMManager.this.sharedPreferences.edit().putBoolean("GCM_SENT_LEAD_DEAD", true).apply();
        }
    }

    /* renamed from: ru.rocketbank.core.manager.FireCMManager$3 */
    class C14273 implements Func1<Throwable, Boolean> {
        C14273() {
        }

        public final /* bridge */ /* synthetic */ Object call(Object obj) {
            Throwable th = (Throwable) obj;
            Log.e("FireCMManager", "Sending token error [user]: ", th);
            if (th instanceof RocketResponseException) {
                RocketResponseException rocketResponseException = (RocketResponseException) th;
                if (!(rocketResponseException.getResponse() == null || rocketResponseException.isStatusEqual(401) == null)) {
                    return Boolean.FALSE;
                }
            }
            return Boolean.TRUE;
        }
    }

    public FireCMManager(Authorization authorization, RocketAPI rocketAPI, HeaderManager headerManager) {
        this.authorization = authorization;
        this.rocketAPI = rocketAPI;
        this.headerManager = headerManager;
    }

    public final void sendTokenIfNeeded() {
        this.handler.removeCallbacks(this.postSendingAction);
        this.handler.postDelayed(this.postSendingAction, 500);
    }

    public final void sendTokenIfNeededExecute() {
        Log.v("FireCMManager", "Sening token");
        String string = getSharedPref().getString("FIRE_TOKEN_4_U", null);
        if (string == null) {
            Log.v("FireCMManager", "Noting to send");
            return;
        }
        String status = this.authorization.getStatus();
        this.headerManager.setFcmToken(string);
        if (RegistrationStatus.LeadStatus.equals(status)) {
            sendUserFcmToken(string);
            return;
        }
        Authorization authorization = this.authorization;
        Object obj = (authorization.getToken() == null || !Intrinsics.areEqual(RegistrationStatus.UserFeed, authorization.getStatus())) ? null : 1;
        if (obj != null) {
            sendUserFcmToken(string);
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    public final synchronized void storeAndSendGcmToken(String str) {
        Log.v("FireCMManager", "Get new token ".concat(String.valueOf(str)));
        getSharedPref().edit().putBoolean("GCM_SENT_LEAD_DEAD", false).putBoolean("FCM_SENT", false).putString("FIRE_TOKEN_4_U", str).commit();
        this.handler.removeCallbacks(this.postSendingAction);
        this.handler.postDelayed(this.postSendingAction, 500);
    }

    private synchronized SharedPreferences getSharedPref() {
        if (this.sharedPreferences == null) {
            this.sharedPreferences = BaseRocketApplication.getContext().getSharedPreferences("FireCMManager", 0);
        }
        return this.sharedPreferences;
    }

    private void sendUserFcmToken(String str) {
        ValueRequest valueRequest = new ValueRequest();
        valueRequest.setValue(str);
        if (this.authorization.getToken() != null) {
            this.rocketAPI.sendApnToken(valueRequest).retryWhen(new RetryWithDelayAndLimitIf(2, 10, TimeUnit.SECONDS, new C14273())).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14262());
        }
    }
}
