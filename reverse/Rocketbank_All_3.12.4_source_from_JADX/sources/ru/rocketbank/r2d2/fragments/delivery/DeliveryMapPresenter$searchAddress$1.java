package ru.rocketbank.r2d2.fragments.delivery;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import rx.Subscriber;

/* compiled from: DeliveryMapPresenter.kt */
public final class DeliveryMapPresenter$searchAddress$1 extends Subscriber<ArrayList<GeoObject>> {
    final /* synthetic */ DeliveryMapPresenter this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    DeliveryMapPresenter$searchAddress$1(DeliveryMapPresenter deliveryMapPresenter) {
        this.this$0 = deliveryMapPresenter;
    }

    public final void onNext(ArrayList<GeoObject> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "t");
        if (arrayList.size() > 0) {
            DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
            if (deliveryMapView != null) {
                deliveryMapView.updateAddressesList(arrayList);
            }
        }
    }
}
