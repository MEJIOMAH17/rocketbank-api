package ru.rocketbank.r2d2.root.delivery;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.fragments.delivery.AbstractDeliveryPresenter;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: DeliveryActivityPresenter.kt */
public final class DeliveryActivityPresenter extends AbstractDeliveryPresenter {
    private Subscription apiSubscription = Subscriptions.empty();
    private DeliveryActivityView view;

    public final void onCreate(Bundle bundle, DeliveryActivityView deliveryActivityView) {
        Intrinsics.checkParameterIsNotNull(deliveryActivityView, "v");
        super.onCreate(bundle);
        this.view = deliveryActivityView;
    }

    public final void loadCompletedDeliveryDetails(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.apiSubscription = getDeliveryApi().getDelivery(str).retry(10).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Subscriber) new DeliveryActivityPresenter$loadCompletedDeliveryDetails$1(this));
    }

    public final void onDestroy() {
        this.apiSubscription.unsubscribe();
        super.onDestroy();
    }
}
