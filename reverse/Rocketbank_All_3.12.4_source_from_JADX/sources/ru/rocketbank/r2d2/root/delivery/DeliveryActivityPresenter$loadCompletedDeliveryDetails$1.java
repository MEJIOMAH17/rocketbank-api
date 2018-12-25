package ru.rocketbank.r2d2.root.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Miles;
import ru.rocketbank.core.network.model.delivery.DeliveryResponse;
import rx.Subscriber;

/* compiled from: DeliveryActivityPresenter.kt */
public final class DeliveryActivityPresenter$loadCompletedDeliveryDetails$1 extends Subscriber<DeliveryResponse> {
    final /* synthetic */ DeliveryActivityPresenter this$0;

    public final void onCompleted() {
    }

    DeliveryActivityPresenter$loadCompletedDeliveryDetails$1(DeliveryActivityPresenter deliveryActivityPresenter) {
        this.this$0 = deliveryActivityPresenter;
    }

    public final void onNext(DeliveryResponse deliveryResponse) {
        Intrinsics.checkParameterIsNotNull(deliveryResponse, "t");
        if (Intrinsics.areEqual(deliveryResponse.getStatus(), Miles.STATUS_COMPLETED)) {
            deliveryResponse = deliveryResponse.getDelivery();
            if (deliveryResponse != null) {
                this.this$0.getDeliveryManager().setDeliveryText(deliveryResponse.getText());
                this.this$0.getDeliveryManager().setLat(deliveryResponse.getLat());
                this.this$0.getDeliveryManager().setLng(deliveryResponse.getLng());
                this.this$0.getDeliveryManager().setSenderPhoto(deliveryResponse.getSender().getAvatarUrl());
                deliveryResponse = this.this$0.view;
                if (deliveryResponse != null) {
                    deliveryResponse.onDeliveryDetailsLoaded();
                    return;
                }
                return;
            }
            return;
        }
        deliveryResponse = this.this$0.view;
        if (deliveryResponse != null) {
            deliveryResponse.onLoadFail();
        }
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0.view;
        if (th != null) {
            th.onLoadFail();
        }
    }
}
