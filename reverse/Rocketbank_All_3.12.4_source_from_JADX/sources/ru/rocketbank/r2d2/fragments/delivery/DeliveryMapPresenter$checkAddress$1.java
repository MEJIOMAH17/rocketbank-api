package ru.rocketbank.r2d2.fragments.delivery;

import java.util.ArrayList;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: DeliveryMapPresenter.kt */
final class DeliveryMapPresenter$checkAddress$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ DeliveryMapPresenter this$0;

    DeliveryMapPresenter$checkAddress$1(DeliveryMapPresenter deliveryMapPresenter) {
        this.this$0 = deliveryMapPresenter;
    }

    public final Observable<Boolean> call(ArrayList<GeoObject> arrayList) {
        boolean access$checkAddressInPolygon = arrayList.size() > 0 ? this.this$0.checkAddressInPolygon(((GeoObject) arrayList.get(0)).getPoint()) : false;
        this.this$0.lastAddressCoordinates = ((GeoObject) arrayList.get(0)).getPoint();
        return Observable.just(Boolean.valueOf(access$checkAddressInPolygon));
    }
}
