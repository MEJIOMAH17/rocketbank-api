package ru.rocketbank.r2d2.fragments.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.delivery.DeliveryResponse;
import rx.Subscriber;

/* compiled from: DeliverySelectDatePresenter.kt */
public final class DeliverySelectDatePresenter$nextPressed$1 extends Subscriber<DeliveryResponse> {
    final /* synthetic */ DeliverySelectDatePresenter this$0;

    public final void onCompleted() {
    }

    DeliverySelectDatePresenter$nextPressed$1(DeliverySelectDatePresenter deliverySelectDatePresenter) {
        this.this$0 = deliverySelectDatePresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0.getView();
        if (th != null) {
            th.hideProgressDialog();
        }
    }

    public final void onNext(DeliveryResponse deliveryResponse) {
        Intrinsics.checkParameterIsNotNull(deliveryResponse, "t");
        deliveryResponse = deliveryResponse.getDelivery();
        if (deliveryResponse != null) {
            this.this$0.getDeliveryManager().setLat(deliveryResponse.getLat());
            this.this$0.getDeliveryManager().setLng(deliveryResponse.getLng());
            this.this$0.getDeliveryManager().setDeliveryText(deliveryResponse.getText());
            this.this$0.getDeliveryManager().setSenderPhoto(deliveryResponse.getSender().getAvatarUrl());
            deliveryResponse = this.this$0.getView();
            if (deliveryResponse != null) {
                deliveryResponse.nextStep();
            }
        }
        deliveryResponse = this.this$0.getView();
        if (deliveryResponse != null) {
            deliveryResponse.hideProgressDialog();
        }
    }
}
