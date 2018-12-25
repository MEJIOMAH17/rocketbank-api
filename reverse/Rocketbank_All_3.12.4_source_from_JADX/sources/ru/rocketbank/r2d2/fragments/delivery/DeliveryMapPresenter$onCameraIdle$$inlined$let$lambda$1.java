package ru.rocketbank.r2d2.fragments.delivery;

import android.util.Log;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import rx.Subscriber;

/* compiled from: DeliveryMapPresenter.kt */
public final class DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1 extends Subscriber<ArrayList<GeoObject>> {
    final /* synthetic */ LatLng $latlng;
    final /* synthetic */ int $x$inlined;
    final /* synthetic */ int $y$inlined;
    final /* synthetic */ DeliveryMapPresenter this$0;

    public final void onCompleted() {
    }

    DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1(LatLng latLng, DeliveryMapPresenter deliveryMapPresenter, int i, int i2) {
        this.$latlng = latLng;
        this.this$0 = deliveryMapPresenter;
        this.$x$inlined = i;
        this.$y$inlined = i2;
    }

    public final void onNext(ArrayList<GeoObject> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "t");
        arrayList = ((GeoObject) arrayList.get(0)).getTextAddress();
        DeliveryMapPresenter deliveryMapPresenter = this.this$0;
        LatLng latLng = this.$latlng;
        Intrinsics.checkExpressionValueIsNotNull(latLng, "latlng");
        deliveryMapPresenter.lastAddressCoordinates = latLng;
        DeliveryMapView deliveryMapView = (DeliveryMapView) this.this$0.getView();
        if (deliveryMapView != null) {
            deliveryMapView.updateAddress(arrayList, this.this$0.hideError);
        }
        this.this$0.hideError = true;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("DeliveryPresenter", th.getMessage(), th);
    }
}
