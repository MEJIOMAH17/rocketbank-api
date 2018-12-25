package ru.rocketbank.r2d2.fragments.delivery;

import android.location.Location;
import android.util.Log;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.Arrays;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.manager.GeolocationManager;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: MapPresenter.kt */
public abstract class MapPresenter<V extends MapViewInterface> extends AbstractDeliveryPresenter implements OnMapReadyCallback {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(MapPresenter.class), "geolocationManager", "getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;"))};
    private final Lazy geolocationManager$delegate = ExceptionsKt__ExceptionsKt.lazy(MapPresenter$geolocationManager$2.INSTANCE);
    private Location lastLocation;
    private Subscription locationSubscription;
    private GoogleMap map;
    private V view;

    public final GeolocationManager getGeolocationManager() {
        return (GeolocationManager) this.geolocationManager$delegate.getValue();
    }

    protected void onLocationChanged(Location location) {
        Intrinsics.checkParameterIsNotNull(location, Param.LOCATION);
    }

    protected final GoogleMap getMap() {
        return this.map;
    }

    protected final void setMap(GoogleMap googleMap) {
        this.map = googleMap;
    }

    protected final Subscription getLocationSubscription() {
        return this.locationSubscription;
    }

    protected final void setLocationSubscription(Subscription subscription) {
        this.locationSubscription = subscription;
    }

    protected final Location getLastLocation() {
        return this.lastLocation;
    }

    protected final void setLastLocation(Location location) {
        this.lastLocation = location;
    }

    protected final V getView() {
        return this.view;
    }

    protected final void setView(V v) {
        this.view = v;
    }

    protected final void initLocation() {
        this.locationSubscription = getGeolocationManager().getLocationUpdate().observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new MapPresenter$initLocation$1(this));
    }

    public void onStart(V v) {
        Intrinsics.checkParameterIsNotNull(v, "view");
        this.view = v;
        Log.v("MapPresenter", "checkPermitions");
        getGeolocationManager();
        if (GeolocationManager.checkForPermissions()) {
            getGeolocationManager().update();
            return;
        }
        List asList = Arrays.asList(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"});
        Intrinsics.checkExpressionValueIsNotNull(asList, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        v.checkPermissions(asList);
    }

    public void onDestroy() {
        super.onDestroy();
        Subscription subscription = this.locationSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.view = null;
    }

    public void onStop() {
        getGeolocationManager().endLocationUpdate();
    }

    public void onMapReady(GoogleMap googleMap) {
        Intrinsics.checkParameterIsNotNull(googleMap, "mapa");
        this.map = googleMap;
    }

    public void onPermissionsGranted() {
        initLocation();
        Location location = getGeolocationManager().getLocation();
        if (location != null) {
            onLocationChanged(location);
        } else {
            getGeolocationManager().update();
        }
    }
}
