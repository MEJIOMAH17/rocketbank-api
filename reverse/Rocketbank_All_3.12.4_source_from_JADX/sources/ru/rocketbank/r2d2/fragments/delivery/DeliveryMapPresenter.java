package ru.rocketbank.r2d2.fragments.delivery;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnCameraIdleListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.maps.android.MarkerManager.Collection;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.DeliveryManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.adapter.LatLngList;
import ru.rocketbank.core.network.api.YandexMapApi;
import ru.rocketbank.core.network.api.YandexMapApi.DefaultImpls;
import ru.rocketbank.core.network.model.delivery.DeliveryAddressBody;
import ru.rocketbank.core.network.model.delivery.DeliveryBody;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import ru.rocketbank.r2d2.data.binding.delivery.AddressClickListener;
import ru.rocketbank.r2d2.data.binding.delivery.MapLocationListener;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: DeliveryMapPresenter.kt */
public final class DeliveryMapPresenter extends MapPresenter<DeliveryMapView> implements AddressClickListener, MapLocationListener {
    private String address;
    private boolean hideError = true;
    private LatLng lastAddressCoordinates;
    private Subscription mapSubscription;
    private final YandexMapApi mapsApi = getInjector().getYandexMapApi();
    private boolean needScaleAfterCheckAddress;
    private ArrayList<LatLngList> polygones;
    private boolean polygonsAdded;
    private LatLng startPosition;

    public static final /* synthetic */ String access$getAddress$p(DeliveryMapPresenter deliveryMapPresenter) {
        deliveryMapPresenter = deliveryMapPresenter.address;
        if (deliveryMapPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("address");
        }
        return deliveryMapPresenter;
    }

    public static final /* synthetic */ LatLng access$getLastAddressCoordinates$p(DeliveryMapPresenter deliveryMapPresenter) {
        deliveryMapPresenter = deliveryMapPresenter.lastAddressCoordinates;
        if (deliveryMapPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastAddressCoordinates");
        }
        return deliveryMapPresenter;
    }

    public static final /* synthetic */ ArrayList access$getPolygones$p(DeliveryMapPresenter deliveryMapPresenter) {
        deliveryMapPresenter = deliveryMapPresenter.polygones;
        if (deliveryMapPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("polygones");
        }
        return deliveryMapPresenter;
    }

    public final void onMapReady(GoogleMap googleMap) {
        Intrinsics.checkParameterIsNotNull(googleMap, "mapa");
        super.onMapReady(googleMap);
        googleMap.setOnCameraIdleListener((OnCameraIdleListener) getView());
        googleMap = googleMap.getUiSettings();
        Intrinsics.checkExpressionValueIsNotNull(googleMap, "mapa.uiSettings");
        googleMap.setMyLocationButtonEnabled(false);
        googleMap = getLastLocation();
        if (googleMap != null) {
            showMe(new LatLng(googleMap.getLatitude(), googleMap.getLongitude()));
            return;
        }
        googleMap = this.startPosition;
        if (googleMap != null) {
            getGeolocationManager().update(false);
            showMe(googleMap);
        }
    }

    public final void onPermissionsGranted() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r2 = this;
        super.onPermissionsGranted();
        r0 = r2.getMap();	 Catch:{ SecurityException -> 0x000e }
        if (r0 == 0) goto L_0x000d;	 Catch:{ SecurityException -> 0x000e }
    L_0x0009:
        r1 = 1;	 Catch:{ SecurityException -> 0x000e }
        r0.setMyLocationEnabled(r1);	 Catch:{ SecurityException -> 0x000e }
    L_0x000d:
        return;
    L_0x000e:
        r0 = r2.getView();
        r0 = (ru.rocketbank.r2d2.fragments.delivery.DeliveryMapView) r0;
        if (r0 == 0) goto L_0x001d;
    L_0x0016:
        r1 = 2131821436; // 0x7f11037c float:1.9275615E38 double:1.0532597346E-314;
        r0.showToast(r1);
        return;
    L_0x001d:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.delivery.DeliveryMapPresenter.onPermissionsGranted():void");
    }

    public final void onMyLocationButtonClicked() {
        Location lastLocation = getLastLocation();
        if (lastLocation != null) {
            showMeAnimated(new LatLng(lastLocation.getLatitude(), lastLocation.getLongitude()));
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initLocation();
    }

    public final void onDestroy() {
        super.onDestroy();
        Subscription subscription = this.mapSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        GoogleMap map = getMap();
        if (map != null) {
            map.setOnCameraIdleListener(null);
        }
    }

    public final void onStop() {
        super.onStop();
        Subscription locationSubscription = getLocationSubscription();
        if (locationSubscription != null) {
            locationSubscription.unsubscribe();
        }
    }

    public final void onCameraIdle(int i, int i2) {
        this.needScaleAfterCheckAddress = false;
        GoogleMap map = getMap();
        if (map != null) {
            Subscription subscription = this.mapSubscription;
            if (subscription != null) {
                subscription.unsubscribe();
            }
            LatLng fromScreenLocation = map.getProjection().fromScreenLocation(new Point(i, i2));
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(String.valueOf(fromScreenLocation.longitude));
            stringBuilder.append(',');
            stringBuilder.append(String.valueOf(fromScreenLocation.latitude));
            this.mapSubscription = DefaultImpls.getAddressByCoordinates$default(this.mapsApi, null, stringBuilder.toString(), 1, null).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1(fromScreenLocation, this, i, i2));
        }
    }

    public final void onAddressClicked(GeoObject geoObject) {
        Intrinsics.checkParameterIsNotNull(geoObject, "geoObject");
        DeliveryMapView deliveryMapView = (DeliveryMapView) getView();
        if (deliveryMapView != null) {
            deliveryMapView.showSelectedAddress(geoObject.getTextAddress());
        }
        this.lastAddressCoordinates = geoObject.getPoint();
        geoObject = this.lastAddressCoordinates;
        if (geoObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastAddressCoordinates");
        }
        showMeAnimated(geoObject);
    }

    public final void checkAddress(String str) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        Subscription subscription = this.mapSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.mapSubscription = DefaultImpls.getAddressesByString$default(this.mapsApi, null, str, 1, null).subscribeOn(Schedulers.io()).observeOn(Schedulers.computation()).flatMap(new DeliveryMapPresenter$checkAddress$1(this)).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new DeliveryMapPresenter$checkAddress$2(this, str));
    }

    public final void onBackToAddressClicked() {
        DeliveryMapView deliveryMapView = (DeliveryMapView) getView();
        if (deliveryMapView != null) {
            deliveryMapView.setAddressStatus();
            String str = this.address;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("address");
            }
            DeliveryMapView.DefaultImpls.updateAddress$default(deliveryMapView, str, false, 2, null);
            GoogleMap map = getMap();
            if (map != null) {
                map.setOnCameraIdleListener((OnCameraIdleListener) getView());
                map.getUiSettings().setAllGesturesEnabled(true);
            }
        }
    }

    private final void showMeAnimated(LatLng latLng) {
        GoogleMap map = getMap();
        if (map != null) {
            map.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng, 17.0f));
        }
    }

    private final boolean checkAddressInPolygon(LatLng latLng) {
        ArrayList arrayList = this.polygones;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("polygones");
        }
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= Collection.containsLocation$4399593d(latLng, (LatLngList) it.next());
        }
        return z;
    }

    public final void searchAddress(String str) {
        Intrinsics.checkParameterIsNotNull(str, "address");
        Subscription subscription = this.mapSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.needScaleAfterCheckAddress = true;
        this.mapSubscription = this.mapsApi.getAddressesByString("json", str).subscribeOn(Schedulers.io()).observeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new DeliveryMapPresenter$searchAddress$1(this));
    }

    private final void showAddressError() {
        GoogleMap map = getMap();
        if (map != null) {
            if (!this.polygonsAdded) {
                ArrayList<LatLngList> arrayList = this.polygones;
                if (arrayList == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("polygones");
                }
                for (LatLngList<LatLng> latLngList : arrayList) {
                    PolygonOptions strokeWidth = new PolygonOptions().strokeColor(Color.parseColor("#FF00BBE4")).fillColor(Color.parseColor("#2000BBE4")).strokeWidth(4.5f);
                    for (LatLng add : latLngList) {
                        strokeWidth.add(add);
                    }
                    map.addPolygon(strokeWidth);
                }
                this.polygonsAdded = true;
            }
            map.setOnCameraIdleListener(null);
            map.animateCamera(CameraUpdateFactory.newLatLngZoom(this.startPosition, 9.5f));
            map.setOnCameraIdleListener((OnCameraIdleListener) getView());
            DeliveryMapView deliveryMapView = (DeliveryMapView) getView();
            if (deliveryMapView != null) {
                deliveryMapView.showAddressError();
            }
            this.hideError = false;
        }
    }

    protected final void onLocationChanged(Location location) {
        Intrinsics.checkParameterIsNotNull(location, Param.LOCATION);
        Subscription locationSubscription = getLocationSubscription();
        if (locationSubscription != null) {
            locationSubscription.unsubscribe();
        }
        showMe(new LatLng(location.getLatitude(), location.getLongitude()));
    }

    public final void checkLocationEnabled(Context context) {
        DeliveryMapView deliveryMapView;
        Intrinsics.checkParameterIsNotNull(context, "context");
        getGeolocationManager();
        if (!GeolocationManager.checkGPSLocation(context)) {
            getGeolocationManager();
            if (GeolocationManager.checkNetLocation(context) == null) {
                context = null;
                if (context == null) {
                    updateLocation();
                    deliveryMapView = (DeliveryMapView) getView();
                    if (deliveryMapView != null) {
                        deliveryMapView.onLocationChecked();
                    }
                }
                deliveryMapView = (DeliveryMapView) getView();
                if (deliveryMapView != null) {
                    deliveryMapView.onLocationNotChecked();
                    return;
                }
                return;
            }
        }
        context = true;
        if (context == null) {
            deliveryMapView = (DeliveryMapView) getView();
            if (deliveryMapView != null) {
                deliveryMapView.onLocationNotChecked();
                return;
            }
            return;
        }
        updateLocation();
        deliveryMapView = (DeliveryMapView) getView();
        if (deliveryMapView != null) {
            deliveryMapView.onLocationChecked();
        }
    }

    private final void showMe(LatLng latLng) {
        GoogleMap map = getMap();
        if (map != null) {
            map.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng, 17.0f));
        }
    }

    public final void loadDelivery(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        DeliveryMapView deliveryMapView = (DeliveryMapView) getView();
        if (deliveryMapView != null) {
            deliveryMapView.showProgressDialog();
        }
        getDeliveryApi().getDelivery(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new DeliveryMapPresenter$loadDelivery$1(this));
    }

    public final void onCommentClicked(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
        DeliveryMapView deliveryMapView = (DeliveryMapView) getView();
        if (deliveryMapView != null) {
            deliveryMapView.showProgressDialog();
        }
        DeliveryManager deliveryManager = getDeliveryManager();
        LatLng latLng = this.lastAddressCoordinates;
        if (latLng == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastAddressCoordinates");
        }
        deliveryManager.setLat(latLng.latitude);
        deliveryManager = getDeliveryManager();
        latLng = this.lastAddressCoordinates;
        if (latLng == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastAddressCoordinates");
        }
        deliveryManager.setLng(latLng.longitude);
        String str3 = this.address;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("address");
        }
        latLng = this.lastAddressCoordinates;
        if (latLng == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastAddressCoordinates");
        }
        double d = latLng.latitude;
        latLng = this.lastAddressCoordinates;
        if (latLng == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastAddressCoordinates");
        }
        getDeliveryApi().selectAddress(str, new DeliveryBody(new DeliveryAddressBody(str2, d, latLng.longitude, str3))).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Subscriber) new DeliveryMapPresenter$onCommentClicked$1(this));
    }

    public final void updateLocation() {
        getGeolocationManager().update();
    }
}
