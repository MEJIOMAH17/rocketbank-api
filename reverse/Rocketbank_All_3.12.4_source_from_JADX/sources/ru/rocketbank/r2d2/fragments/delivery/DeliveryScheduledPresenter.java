package ru.rocketbank.r2d2.fragments.delivery;

import android.graphics.Point;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.LatLng;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeliveryScheduledPresenter.kt */
public final class DeliveryScheduledPresenter extends MapPresenter<DeliveryScheduledView> implements OnMapClickListener {
    private int deltaY;

    public final void onMapClick(LatLng latLng) {
        Intrinsics.checkParameterIsNotNull(latLng, "p0");
    }

    public final void showUser(int i) {
        this.deltaY = i;
    }

    public final void onStop() {
        super.onStop();
        GoogleMap map = getMap();
        if (map != null) {
            map.setOnMapClickListener(null);
        }
    }

    public final void onStart(DeliveryScheduledView deliveryScheduledView) {
        Intrinsics.checkParameterIsNotNull(deliveryScheduledView, "view");
        super.onStart(deliveryScheduledView);
        deliveryScheduledView = getMap();
        if (deliveryScheduledView != null) {
            deliveryScheduledView.setOnMapClickListener(this);
        }
    }

    public final void onMapReady(GoogleMap googleMap) {
        Intrinsics.checkParameterIsNotNull(googleMap, "mapa");
        super.onMapReady(googleMap);
        UiSettings uiSettings = googleMap.getUiSettings();
        Intrinsics.checkExpressionValueIsNotNull(uiSettings, "mapSettings");
        uiSettings.setMapToolbarEnabled(false);
        uiSettings.setAllGesturesEnabled(false);
        googleMap.setOnMapClickListener(this);
        LatLng latLng = new LatLng(getDeliveryManager().getLat(), getDeliveryManager().getLng());
        googleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng, 17.0f));
        Point toScreenLocation = googleMap.getProjection().toScreenLocation(latLng);
        latLng = googleMap.getProjection().fromScreenLocation(new Point(toScreenLocation.x, toScreenLocation.y + this.deltaY));
        Intrinsics.checkExpressionValueIsNotNull(latLng, "mapa.projection.fromScre…int.x, point.y + deltaY))");
        googleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng, 17.0f));
        DeliveryScheduledView deliveryScheduledView = (DeliveryScheduledView) getView();
        if (deliveryScheduledView != null) {
            deliveryScheduledView.showDeliveryInfo(getDeliveryManager().getSenderPhoto(), getDeliveryManager().getDeliveryText());
        }
    }
}
