package ru.rocketbank.r2d2.firebase;

import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FireCMManager;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: RocketFirebaseInstanceIDService.kt */
public final class RocketFirebaseInstanceIDService extends FirebaseInstanceIdService {
    private final String TAG = "RocketIIDService";
    public FireCMManager fireCMManager;
    public RocketAPI rocketApi;

    public final RocketAPI getRocketApi() {
        RocketAPI rocketAPI = this.rocketApi;
        if (rocketAPI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketApi");
        }
        return rocketAPI;
    }

    public final void setRocketApi(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "<set-?>");
        this.rocketApi = rocketAPI;
    }

    public final FireCMManager getFireCMManager() {
        FireCMManager fireCMManager = this.fireCMManager;
        if (fireCMManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fireCMManager");
        }
        return fireCMManager;
    }

    public final void setFireCMManager(FireCMManager fireCMManager) {
        Intrinsics.checkParameterIsNotNull(fireCMManager, "<set-?>");
        this.fireCMManager = fireCMManager;
    }

    public final void onCreate() {
        super.onCreate();
        this.rocketApi = RocketApplication.Companion.getInjector().getRocketApi();
        this.fireCMManager = RocketApplication.Companion.getInjector().getFireCMManager();
    }

    public final void onTokenRefresh() {
        FirebaseInstanceId instance = FirebaseInstanceId.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "FirebaseInstanceId.getInstance()");
        String token = instance.getToken();
        Log.d(this.TAG, "Refreshed token: ".concat(String.valueOf(token)));
        sendRegistrationToServer(token);
    }

    private final void sendRegistrationToServer(String str) {
        FireCMManager fireCMManager = this.fireCMManager;
        if (fireCMManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fireCMManager");
        }
        fireCMManager.storeAndSendGcmToken(str);
    }
}
