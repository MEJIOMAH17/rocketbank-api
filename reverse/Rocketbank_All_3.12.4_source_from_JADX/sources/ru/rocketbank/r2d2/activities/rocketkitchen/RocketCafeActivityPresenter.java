package ru.rocketbank.r2d2.activities.rocketkitchen;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.CafeApi;
import ru.rocketbank.core.network.model.cafe.CafeRefillBody;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: RocketCafeActivityPresenter.kt */
public final class RocketCafeActivityPresenter extends Presenter {
    private Subscription apiSubscription;
    private final CafeApi cafeApi = RocketApplication.Companion.getInjector().getRocketCafeApi();
    private RocketCafeView view;

    public final void onCreate(Bundle bundle, RocketCafeView rocketCafeView) {
        Intrinsics.checkParameterIsNotNull(rocketCafeView, "view");
        super.onCreate(bundle);
        this.view = rocketCafeView;
    }

    public final void fillSafe(long j) {
        this.apiSubscription = this.cafeApi.refillMoney(new CafeRefillBody(j)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new RocketCafeActivityPresenter$fillSafe$1(this));
    }

    public final void onDestroy() {
        this.view = null;
        Subscription subscription = this.apiSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        super.onDestroy();
    }
}
