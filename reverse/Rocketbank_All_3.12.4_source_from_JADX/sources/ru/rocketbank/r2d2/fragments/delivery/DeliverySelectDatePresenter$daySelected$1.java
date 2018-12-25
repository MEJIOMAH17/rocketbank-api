package ru.rocketbank.r2d2.fragments.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.delivery.IntervalResponse;
import rx.Subscriber;

/* compiled from: DeliverySelectDatePresenter.kt */
public final class DeliverySelectDatePresenter$daySelected$1 extends Subscriber<IntervalResponse> {
    final /* synthetic */ DeliverySelectDatePresenter this$0;

    public final void onCompleted() {
    }

    DeliverySelectDatePresenter$daySelected$1(DeliverySelectDatePresenter deliverySelectDatePresenter) {
        this.this$0 = deliverySelectDatePresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0.getView();
        if (th != null) {
            th.hideProgressDialog();
        }
    }

    public final void onNext(IntervalResponse intervalResponse) {
        Intrinsics.checkParameterIsNotNull(intervalResponse, "t");
        DeliverySelectDateView view = this.this$0.getView();
        if (view != null) {
            view.intervalsLoaded(intervalResponse.getIntervals());
            view.hideProgressDialog();
        }
    }
}
