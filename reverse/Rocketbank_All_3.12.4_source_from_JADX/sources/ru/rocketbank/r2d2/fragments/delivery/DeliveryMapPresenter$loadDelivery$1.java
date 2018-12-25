package ru.rocketbank.r2d2.fragments.delivery;

import com.google.android.gms.maps.model.LatLng;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.delivery.DeliveryResponse;
import rx.Subscriber;

/* compiled from: DeliveryMapPresenter.kt */
public final class DeliveryMapPresenter$loadDelivery$1 extends Subscriber<DeliveryResponse> {
    final /* synthetic */ DeliveryMapPresenter this$0;

    public final void onCompleted() {
    }

    DeliveryMapPresenter$loadDelivery$1(DeliveryMapPresenter deliveryMapPresenter) {
        this.this$0 = deliveryMapPresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.hideProgressDialog();
        }
    }

    public final void onNext(DeliveryResponse deliveryResponse) {
        Intrinsics.checkParameterIsNotNull(deliveryResponse, "t");
        this.this$0.startPosition = new LatLng(deliveryResponse.getCity().getLat(), deliveryResponse.getCity().getLng());
        this.this$0.polygones = deliveryResponse.getCity().getPolygons();
        DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.initMap();
        }
        deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.hideProgressDialog();
        }
    }
}
