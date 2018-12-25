package ru.rocketbank.r2d2.fragments.refill.cash;

import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.getkeepsafe.relinker.ReLinker;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.maps.android.clustering.ClusterItem;
import com.google.maps.android.clustering.ClusterManager.OnClusterItemClickListener;
import io.realm.AtmRealmClusterManager;
import io.realm.Realm;
import io.realm.RealmResults;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AtmsManager;
import ru.rocketbank.core.manager.AtmsManager.RecreateListener;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.realm.RealmAtm;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;

public abstract class ClusterMapFragment extends RocketFragment implements OnMapReadyCallback {
    private static final String BUNDLE_LATITUDE = "latitude";
    private static final String BUNDLE_LONGITUDE = "longitude";
    private static final String BUNDLE_ZOOM = "zoom";
    private static final double DEFAULT_LATITUDE = 37.791116d;
    private static final double DEFAULT_LONGITUDE = -122.403816d;
    private static final int DEFAULT_ZOOM = 10;
    private static final int REQUEST_CODE = 10;
    AtmsManager atmsManager;
    private Subscription atsmSubscription;
    private MapState defferedSettings = null;
    GeolocationManager geolocationManager;
    private boolean isMapInitializationInProgres = false;
    protected Location lastLocation;
    private Subscription locationSubscription;
    protected GoogleMap map;
    private Realm realm;
    private Class<RealmAtm> realmAtmClass = RealmAtm.class;
    private AtmRealmClusterManager<RealmAtm> realmClusterManager;
    protected AtmsClusterRenderer renderer = null;

    static class MapState {
        public double lat;
        public double lon;
        public float zoom;

        MapState() {
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$1 */
    class C16711 implements RecreateListener {
        C16711() {
        }

        public void onRealmRecreated() {
            ClusterMapFragment.this.realm = Realm.getInstance(AtmsManager.getConfiguration(ClusterMapFragment.this.getContext()));
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$3 */
    class C16723 implements OnClusterItemClickListener<ReLinker<RealmAtm>> {
        C16723() {
        }

        public /* bridge */ /* synthetic */ boolean onClusterItemClick(ClusterItem clusterItem) {
            return onClusterItemClick$36ed8272((ReLinker) clusterItem);
        }

        public boolean onClusterItemClick$36ed8272(ReLinker<RealmAtm> reLinker) {
            ClusterMapFragment.this.onClusterItemClicked$36ed8276(reLinker);
            return true;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$4 */
    class C16734 implements OnMarkerClickListener {
        C16734() {
        }

        public boolean onMarkerClick(Marker marker) {
            ClusterMapFragment.this.onMarkerSelected(marker);
            return ClusterMapFragment.this.realmClusterManager.onMarkerClick(marker);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$5 */
    class C16745 implements OnMapClickListener {
        C16745() {
        }

        public void onMapClick(LatLng latLng) {
            ClusterMapFragment.this.onMapClicked(latLng);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$2 */
    class C17522 extends Subscriber<Location> {
        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        C17522() {
        }

        public void onNext(Location location) {
            ClusterMapFragment.this.lastLocation = location;
            ClusterMapFragment.this.onLocationChanged(location);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$6 */
    class C17536 extends Subscriber<RealmResults<RealmAtm>> {
        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        C17536() {
        }

        public void onNext(RealmResults<RealmAtm> realmResults) {
            ClusterMapFragment.this.realmClusterManager.updateRealmResults(ClusterMapFragment.this.realm, realmResults, ClusterMapFragment.this.getTitleColumnName(), ClusterMapFragment.this.getLatitudeColumnName(), ClusterMapFragment.this.getLongitudeColumnName());
        }
    }

    public double getDefaultLatitude() {
        return DEFAULT_LATITUDE;
    }

    public double getDefaultLongitude() {
        return DEFAULT_LONGITUDE;
    }

    public int getDefaultZoom() {
        return 10;
    }

    protected abstract String getLatitudeColumnName();

    protected abstract String getLongitudeColumnName();

    protected abstract String getTitleColumnName();

    protected abstract String[] getTypes();

    public void onClusterItemClicked$36ed8276(ReLinker<RealmAtm> reLinker) {
    }

    protected abstract void onLocationChanged(Location location);

    public void onMapClicked(LatLng latLng) {
    }

    public void onViewCreated(android.view.View r3, android.os.Bundle r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r2 = this;
        super.onViewCreated(r3, r4);
        r3 = r2.getInjector();
        r3 = r3.getGeolocationManager();
        r2.geolocationManager = r3;
        r3 = r2.getInjector();
        r3 = r3.getAtmsManager();
        r2.atmsManager = r3;
        r3 = r2.getContext();	 Catch:{ Throwable -> 0x0026 }
        r3 = ru.rocketbank.core.manager.AtmsManager.getConfiguration(r3);	 Catch:{ Throwable -> 0x0026 }
        r3 = io.realm.Realm.getInstance(r3);	 Catch:{ Throwable -> 0x0026 }
        r2.realm = r3;	 Catch:{ Throwable -> 0x0026 }
        goto L_0x0030;
    L_0x0026:
        r3 = r2.atmsManager;
        r0 = new ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$1;
        r0.<init>();
        r3.recreateRealmWithListener(r0);
    L_0x0030:
        r2.setUpMapIfNeeded();
        if (r4 == 0) goto L_0x005b;
    L_0x0035:
        r3 = new ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$MapState;
        r3.<init>();
        r2.defferedSettings = r3;
        r3 = r2.defferedSettings;
        r0 = "latitude";
        r0 = r4.getDouble(r0);
        r3.lat = r0;
        r3 = r2.defferedSettings;
        r0 = "longitude";
        r0 = r4.getDouble(r0);
        r3.lon = r0;
        r3 = r2.defferedSettings;
        r0 = "zoom";
        r4 = r4.getFloat(r0);
        r3.zoom = r4;
        goto L_0x0080;
    L_0x005b:
        r3 = r2.geolocationManager;
        r3 = r3.getLocation();
        if (r3 == 0) goto L_0x0080;
    L_0x0063:
        r4 = new ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$MapState;
        r4.<init>();
        r2.defferedSettings = r4;
        r4 = r2.defferedSettings;
        r0 = r3.getLatitude();
        r4.lat = r0;
        r4 = r2.defferedSettings;
        r0 = r3.getLongitude();
        r4.lon = r0;
        r3 = r2.defferedSettings;
        r4 = 1096810496; // 0x41600000 float:14.0 double:5.41896386E-315;
        r3.zoom = r4;
    L_0x0080:
        r3 = r2.geolocationManager;
        r3 = r3.getLocationUpdate();
        r4 = rx.android.schedulers.AndroidSchedulers.mainThread();
        r3 = r3.observeOn(r4);
        r4 = new ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment$2;
        r4.<init>();
        r3 = r3.subscribe(r4);
        r2.locationSubscription = r3;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment.onViewCreated(android.view.View, android.os.Bundle):void");
    }

    public void onDestroyView() {
        if (!(this.locationSubscription == null || this.locationSubscription.isUnsubscribed())) {
            this.locationSubscription.unsubscribe();
        }
        try {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Fragment findFragmentById = childFragmentManager.findFragmentById(C0859R.id.support_map_fragment);
            if (findFragmentById != null) {
                FragmentTransaction beginTransaction = childFragmentManager.beginTransaction();
                beginTransaction.remove(findFragmentById);
                beginTransaction.commitAllowingStateLoss();
            }
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
        }
        this.map = null;
        super.onDestroyView();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (getMap() != null) {
            CameraPosition cameraPosition = getMap().getCameraPosition();
            bundle.putDouble(BUNDLE_LATITUDE, cameraPosition.target.latitude);
            bundle.putDouble(BUNDLE_LONGITUDE, cameraPosition.target.longitude);
            bundle.putFloat(BUNDLE_ZOOM, cameraPosition.zoom);
        }
        maybeCloseRealm();
    }

    public void onStart() {
        setUpMapIfNeeded();
        this.geolocationManager.startLocationUpdate();
        super.onStart();
    }

    public void onResume() {
        super.onResume();
        if (this.realm == null) {
            this.realm = Realm.getInstance(AtmsManager.getConfiguration(getContext()));
        }
    }

    public void onPause() {
        super.onPause();
        maybeCloseRealm();
        this.geolocationManager.endLocationUpdate();
    }

    private void maybeCloseRealm() {
        if (this.atsmSubscription != null && this.atsmSubscription.isUnsubscribed()) {
            this.atsmSubscription.unsubscribe();
            this.atsmSubscription = null;
        }
        if (this.realm != null) {
            this.realm.close();
            this.realm = null;
        }
    }

    private void setUpMapIfNeeded() {
        if (this.map == null && !this.isMapInitializationInProgres) {
            this.isMapInitializationInProgres = true;
            Fragment findFragmentById = isAdded() ? getChildFragmentManager().findFragmentById(C0859R.id.support_map_fragment) : null;
            if (findFragmentById == null) {
                this.isMapInitializationInProgres = false;
            } else {
                ((SupportMapFragment) findFragmentById).getMapAsync(this);
            }
        }
    }

    public void onMarkerSelected(Marker marker) {
        marker = CameraUpdateFactory.newLatLngZoom(marker.getPosition(), 14.0f);
        GoogleMap map = getMap();
        if (map != null) {
            map.animateCamera(marker);
        }
    }

    private GoogleMap getMap() {
        setUpMapIfNeeded();
        return this.map;
    }

    private static Class<?> getClass(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                type = ((ParameterizedType) type).getRawType();
            } else if (!(type instanceof GenericArrayType)) {
                return null;
            } else {
                type = getClass(((GenericArrayType) type).getGenericComponentType());
                if (type != null) {
                    return Array.newInstance(type, 0).getClass();
                }
                return null;
            }
        }
        return (Class) type;
    }

    public void onMapReady(GoogleMap googleMap) {
        this.map = googleMap;
        googleMap = null;
        this.isMapInitializationInProgres = false;
        this.map.getUiSettings().setMyLocationButtonEnabled(false);
        boolean z = ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") != 0 ? true : null;
        if (ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            googleMap = 1;
        }
        if (!z) {
            if (googleMap == null) {
                this.map.setMyLocationEnabled(true);
                if (this.realm == null) {
                    if (this.defferedSettings == null) {
                        getMap().moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(this.defferedSettings.lat, this.defferedSettings.lon), this.defferedSettings.zoom));
                        this.defferedSettings = null;
                    } else {
                        getMap().moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(getDefaultLatitude(), getDefaultLongitude()), (float) getDefaultZoom()));
                    }
                    this.realmClusterManager = new AtmRealmClusterManager(getActivity(), getMap());
                    this.renderer = new AtmsClusterRenderer(getActivity(), getMap(), this.realmClusterManager);
                    this.realmClusterManager.setRenderer(this.renderer);
                    this.realmClusterManager.setOnClusterItemClickListener(new C16723());
                    getMap().setOnCameraIdleListener(this.realmClusterManager);
                    getMap().setOnMarkerClickListener(new C16734());
                    getMap().setOnMapClickListener(new C16745());
                    getMap().setOnInfoWindowClickListener(this.realmClusterManager);
                    updateMap();
                }
            }
        }
        ArrayList arrayList = new ArrayList(2);
        if (z) {
            arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        }
        if (googleMap != null) {
            arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
        }
        requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), 10);
        if (this.realm == null) {
            if (this.defferedSettings == null) {
                getMap().moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(getDefaultLatitude(), getDefaultLongitude()), (float) getDefaultZoom()));
            } else {
                getMap().moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(this.defferedSettings.lat, this.defferedSettings.lon), this.defferedSettings.zoom));
                this.defferedSettings = null;
            }
            this.realmClusterManager = new AtmRealmClusterManager(getActivity(), getMap());
            this.renderer = new AtmsClusterRenderer(getActivity(), getMap(), this.realmClusterManager);
            this.realmClusterManager.setRenderer(this.renderer);
            this.realmClusterManager.setOnClusterItemClickListener(new C16723());
            getMap().setOnCameraIdleListener(this.realmClusterManager);
            getMap().setOnMarkerClickListener(new C16734());
            getMap().setOnMapClickListener(new C16745());
            getMap().setOnInfoWindowClickListener(this.realmClusterManager);
            updateMap();
        }
    }

    protected void updateMap() {
        if (this.realm != null) {
            unsubscribe(this.atsmSubscription);
            this.atsmSubscription = this.realm.where(this.realmAtmClass).equalTo(RealmAtm.FIELD_HIDDEN, Boolean.FALSE).in("type", getTypes()).findAllAsync().asObservable().subscribe(new C17536());
        }
    }

    protected void moveOnMyLocation() {
        Location location = this.lastLocation;
        if (location != null && getMap() != null) {
            getMap().animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(location.getLatitude(), location.getLongitude()), 14.0f));
        }
    }

    public void onRequestPermissionsResult(int r5, java.lang.String[] r6, int[] r7) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r4 = this;
        r5 = 0;
        r6 = 1;
        r0 = r7.length;
        r1 = r5;
        r2 = r6;
    L_0x0005:
        if (r1 >= r0) goto L_0x0013;
    L_0x0007:
        r3 = r7[r1];
        if (r2 == 0) goto L_0x000f;
    L_0x000b:
        if (r3 != 0) goto L_0x000f;
    L_0x000d:
        r2 = r6;
        goto L_0x0010;
    L_0x000f:
        r2 = r5;
    L_0x0010:
        r1 = r1 + 1;
        goto L_0x0005;
    L_0x0013:
        if (r2 == 0) goto L_0x0023;
    L_0x0015:
        r5 = r4.getMap();
        if (r5 == 0) goto L_0x0023;
    L_0x001b:
        r5 = r4.getMap();	 Catch:{ SecurityException -> 0x0023 }
        r5.setMyLocationEnabled(r6);	 Catch:{ SecurityException -> 0x0023 }
        return;
    L_0x0023:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.refill.cash.ClusterMapFragment.onRequestPermissionsResult(int, java.lang.String[], int[]):void");
    }
}
