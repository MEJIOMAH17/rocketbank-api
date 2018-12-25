package ru.rocketbank.r2d2.fragments.delivery;

import com.google.android.gms.maps.GoogleMap.OnCameraIdleListener;
import java.util.ArrayList;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;

/* compiled from: DeliveryMapView.kt */
public interface DeliveryMapView extends OnCameraIdleListener, MapViewInterface {

    /* compiled from: DeliveryMapView.kt */
    public static final class DefaultImpls {
        public static /* bridge */ /* synthetic */ void updateAddress$default(DeliveryMapView deliveryMapView, String str, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateAddress");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            deliveryMapView.updateAddress(str, z);
        }
    }

    void initMap();

    void onLocationChecked();

    void onLocationNotChecked();

    void selectDate();

    void setAddressStatus();

    void setCommentStatus();

    void showAddressError();

    void showSelectedAddress(String str);

    void updateAddress(String str, boolean z);

    void updateAddressesList(ArrayList<GeoObject> arrayList);
}
