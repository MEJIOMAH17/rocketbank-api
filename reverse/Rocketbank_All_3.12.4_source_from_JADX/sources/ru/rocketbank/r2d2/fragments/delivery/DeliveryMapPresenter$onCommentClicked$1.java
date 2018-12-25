package ru.rocketbank.r2d2.fragments.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.delivery.DateResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: DeliveryMapPresenter.kt */
public final class DeliveryMapPresenter$onCommentClicked$1 extends Subscriber<DateResponse> {
    final /* synthetic */ DeliveryMapPresenter this$0;

    public final void onCompleted() {
    }

    DeliveryMapPresenter$onCommentClicked$1(DeliveryMapPresenter deliveryMapPresenter) {
        this.this$0 = deliveryMapPresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.showToast((int) C0859R.string.error_occur);
        }
        deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.hideProgressDialog();
        }
    }

    public final void onNext(DateResponse dateResponse) {
        Intrinsics.checkParameterIsNotNull(dateResponse, "t");
        dateResponse = dateResponse.getStepData();
        this.this$0.getDeliveryManager().setNearestDate(dateResponse.getNearestFreeDate());
        this.this$0.getDeliveryManager().setCurrentDate(dateResponse.getStartDate());
        this.this$0.getDeliveryManager().setIntervals(dateResponse.getIntervals());
        DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.selectDate();
        }
        deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.hideProgressDialog();
        }
    }
}
