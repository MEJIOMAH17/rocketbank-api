package ru.rocketbank.r2d2.activities.webauth;

import android.os.CountDownTimer;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.data.binding.webauth.Sec3dAuthListener;
import rx.Observable;
import rx.subscriptions.CompositeSubscription;

/* compiled from: Sec3dPresenter.kt */
public final class Sec3dPresenter extends Presenter implements Sec3dAuthListener {
    private final UserApi api = RocketApplication.Companion.getInjector().getUserApi();
    private String authId = "";
    private final Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    private final CompositeSubscription compositeSubscribers = new CompositeSubscription();
    private int createdAt;
    private final SimpleDateFormat format = new SimpleDateFormat("mm:ss", Locale.getDefault());
    private CountDownTimer timer;
    private int ttl;
    private Sec3dView view;

    public final int getTtl() {
        return this.ttl;
    }

    public final void setTtl(int i) {
        this.ttl = i;
    }

    public final int getCreatedAt() {
        return this.createdAt;
    }

    public final void setCreatedAt(int i) {
        this.createdAt = i;
    }

    public final String getAuthId() {
        return this.authId;
    }

    public final void setAuthId(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.authId = str;
    }

    public final void onAttached(Sec3dView sec3dView) {
        Intrinsics.checkParameterIsNotNull(sec3dView, "view");
        this.view = sec3dView;
    }

    public final void onDetached() {
        this.view = null;
        stopTimer();
        this.compositeSubscribers.unsubscribe();
    }

    public final void cancelClicked() {
        Observable doOnUnsubscribe = this.api.cancel3dSec(this.authId).doOnUnsubscribe(new Sec3dPresenter$cancelClicked$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doOnUnsubscribe, "api.cancel3dSec(authId)\n…ancel()\n                }");
        runRequest(doOnUnsubscribe);
    }

    public final void payClicked() {
        Observable confirm3dSec = this.api.confirm3dSec(this.authId);
        Intrinsics.checkExpressionValueIsNotNull(confirm3dSec, "api.confirm3dSec(authId)");
        runRequest(confirm3dSec);
    }

    public final void notMeClicked() {
        Observable notMe3dSec = this.api.notMe3dSec(this.authId);
        Intrinsics.checkExpressionValueIsNotNull(notMe3dSec, "api.notMe3dSec(authId)");
        runRequest(notMe3dSec);
    }

    private final void runRequest(Observable<Void> observable) {
        Sec3dView sec3dView = this.view;
        if (sec3dView != null) {
            sec3dView.showProgress();
        }
        this.compositeSubscribers.add(observable.subscribe(new Sec3dPresenter$runRequest$subscription$1(this), new Sec3dPresenter$runRequest$subscription$2(this)));
    }

    private final void stopTimer() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    public final void runTimer() {
        long currentTimeMillis = (((long) (this.createdAt + this.ttl)) * 1000) - System.currentTimeMillis();
        Sec3dView sec3dView;
        if (currentTimeMillis <= 0) {
            sec3dView = this.view;
            if (sec3dView != null) {
                sec3dView.onTimeOut();
            }
            return;
        }
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        sec3dView = this.view;
        if (sec3dView != null) {
            sec3dView.updateButtons(true);
        }
        this.timer = new Sec3dPresenter$runTimer$1(this, currentTimeMillis, currentTimeMillis, 100);
        countDownTimer = this.timer;
        if (countDownTimer == null) {
            Intrinsics.throwNpe();
        }
        countDownTimer.start();
    }
}
