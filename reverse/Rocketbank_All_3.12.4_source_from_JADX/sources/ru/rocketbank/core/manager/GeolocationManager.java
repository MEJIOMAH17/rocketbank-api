package ru.rocketbank.core.manager;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import de.greenrobot.event.EventBus;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.events.ResultPermissionEvent;
import ru.rocketbank.core.model.RequestPermissionEvent;
import rx.subjects.BehaviorSubject;

/* compiled from: GeolocationManager.kt */
public final class GeolocationManager implements ConnectionCallbacks, OnConnectionFailedListener, LocationListener {
    private GoogleApiClient googleApiClient;
    private Location lastLocation;
    private final BehaviorSubject<Location> locationUpdate;
    private LocationRequest locationUpdateRequest;
    private boolean locationUpdating;
    private Function1<? super Location, Unit> onLocationAction;
    private boolean pendingAction;
    private boolean pendingSingleEvent;

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Intrinsics.checkParameterIsNotNull(connectionResult, "p0");
    }

    public final void onConnectionSuspended(int i) {
    }

    public GeolocationManager() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r3.<init>();
        r0 = rx.subjects.BehaviorSubject.create();
        r1 = "BehaviorSubject.create()";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r3.locationUpdate = r0;
        r0 = new com.google.android.gms.common.api.GoogleApiClient$Builder;	 Catch:{ Exception -> 0x003a }
        r1 = ru.rocketbank.core.BaseRocketApplication.getContext();	 Catch:{ Exception -> 0x003a }
        r1 = (android.content.Context) r1;	 Catch:{ Exception -> 0x003a }
        r0.<init>(r1);	 Catch:{ Exception -> 0x003a }
        r1 = com.google.android.gms.location.LocationServices.API;	 Catch:{ Exception -> 0x003a }
        r0 = r0.addApi(r1);	 Catch:{ Exception -> 0x003a }
        r1 = r3;	 Catch:{ Exception -> 0x003a }
        r1 = (com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks) r1;	 Catch:{ Exception -> 0x003a }
        r0 = r0.addConnectionCallbacks(r1);	 Catch:{ Exception -> 0x003a }
        r1 = r3;	 Catch:{ Exception -> 0x003a }
        r1 = (com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener) r1;	 Catch:{ Exception -> 0x003a }
        r0 = r0.addOnConnectionFailedListener(r1);	 Catch:{ Exception -> 0x003a }
        r0 = r0.build();	 Catch:{ Exception -> 0x003a }
        r3.googleApiClient = r0;	 Catch:{ Exception -> 0x003a }
        r0 = r3.googleApiClient;	 Catch:{ Exception -> 0x003a }
        if (r0 == 0) goto L_0x003a;	 Catch:{ Exception -> 0x003a }
    L_0x0037:
        r0.connect();	 Catch:{ Exception -> 0x003a }
    L_0x003a:
        r0 = new com.google.android.gms.location.LocationRequest;
        r0.<init>();
        r3.locationUpdateRequest = r0;
        r0 = r3.locationUpdateRequest;
        r1 = 120000; // 0x1d4c0 float:1.68156E-40 double:5.9288E-319;
        r0.setInterval(r1);
        r0 = r3.locationUpdateRequest;
        r1 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        r0.setFastestInterval(r1);
        r0 = r3.locationUpdateRequest;
        r1 = 100;
        r0.setPriority(r1);
        r0 = de.greenrobot.event.EventBus.getDefault();
        r0.register(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.GeolocationManager.<init>():void");
    }

    public final BehaviorSubject<Location> getLocationUpdate() {
        return this.locationUpdate;
    }

    public final Location getLocation() {
        return this.lastLocation;
    }

    public final void onLocationChanged(Location location) {
        if (location != null) {
            Function1 function1 = this.onLocationAction;
            if (function1 != null) {
                function1.invoke(location);
            }
            this.onLocationAction = null;
            this.locationUpdate.onNext(location);
            this.lastLocation = location;
        }
    }

    public final void onConnected(Bundle bundle) {
        update(true);
    }

    public static boolean checkForPermissions() {
        BaseRocketApplication context = BaseRocketApplication.getContext();
        if (VERSION.SDK_INT >= 23) {
            Context context2 = context;
            if (!(ContextCompat.checkSelfPermission(context2, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(context2, "android.permission.ACCESS_COARSE_LOCATION") == 0)) {
                return false;
            }
        }
        return true;
    }

    public final void startLocationUpdate() {
        this.locationUpdating = true;
        GoogleApiClient googleApiClient = this.googleApiClient;
        boolean isConnected = googleApiClient != null ? googleApiClient.isConnected() : false;
        if (!checkForPermissions()) {
            this.pendingAction = true;
        } else if (this.googleApiClient != null && isConnected) {
            try {
                LocationServices.FusedLocationApi.requestLocationUpdates(this.googleApiClient, this.locationUpdateRequest, (LocationListener) this);
            } catch (Throwable th) {
                AnalyticsManager.logException(th);
            }
        }
    }

    public final void endLocationUpdate() {
        boolean z = false;
        this.locationUpdating = false;
        GoogleApiClient googleApiClient = this.googleApiClient;
        if (googleApiClient != null) {
            z = googleApiClient.isConnected();
        }
        if (this.googleApiClient != null && r0) {
            try {
                LocationServices.FusedLocationApi.removeLocationUpdates(this.googleApiClient, (LocationListener) this);
            } catch (Throwable th) {
                AnalyticsManager.logException(th);
            }
        }
    }

    private static boolean validatePermissionOrRequest(boolean z) {
        if (checkForPermissions()) {
            return true;
        }
        if (z) {
            return false;
        }
        EventBus.getDefault().post(new RequestPermissionEvent(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}));
        return false;
    }

    public final void updateWithAction(Function1<? super Location, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "onLocation");
        this.onLocationAction = function1;
        update(true);
    }

    public final void update() {
        update(false);
    }

    public final void update(boolean z) {
        GoogleApiClient googleApiClient = this.googleApiClient;
        if (googleApiClient != null) {
            LocationRequest locationRequest = new LocationRequest();
            locationRequest.setInterval(10000);
            locationRequest.setFastestInterval(5000);
            locationRequest.setPriority(100);
            locationRequest.setNumUpdates(1);
            if (googleApiClient.isConnected()) {
                if (!googleApiClient.isConnecting()) {
                    if (validatePermissionOrRequest(z)) {
                        try {
                            LocationServices.FusedLocationApi.requestLocationUpdates(googleApiClient, locationRequest, (LocationListener) this);
                        } catch (boolean z2) {
                            AnalyticsManager.logException(z2);
                        }
                    } else if (!z2) {
                        this.pendingSingleEvent = true;
                    }
                }
            }
        }
    }

    public final void onEvent(ResultPermissionEvent resultPermissionEvent) {
        Intrinsics.checkParameterIsNotNull(resultPermissionEvent, "permissionEvent");
        if (resultPermissionEvent.isPermitted() != null) {
            resultPermissionEvent = this.googleApiClient;
            resultPermissionEvent = resultPermissionEvent != null ? resultPermissionEvent.isConnected() : null;
            if (this.googleApiClient != null || resultPermissionEvent != null) {
                try {
                    if (this.pendingSingleEvent != null) {
                        LocationRequest locationRequest = new LocationRequest();
                        locationRequest.setInterval(15000);
                        locationRequest.setFastestInterval(5000);
                        locationRequest.setPriority(100);
                        locationRequest.setNumUpdates(1);
                        LocationServices.FusedLocationApi.requestLocationUpdates(this.googleApiClient, locationRequest, (LocationListener) this);
                    } else {
                        LocationServices.FusedLocationApi.requestLocationUpdates(this.googleApiClient, this.locationUpdateRequest, (LocationListener) this);
                    }
                } catch (ResultPermissionEvent resultPermissionEvent2) {
                    AnalyticsManager.logException(resultPermissionEvent2);
                }
                this.pendingAction = false;
                this.pendingSingleEvent = false;
            }
        }
    }

    public static boolean checkGPSLocation(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        String str = "gps";
        context = context.getSystemService(Param.LOCATION);
        if (context != null) {
            return ((LocationManager) context).isProviderEnabled(str);
        }
        throw new TypeCastException("null cannot be cast to non-null type android.location.LocationManager");
    }

    public static boolean checkNetLocation(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        String str = "network";
        context = context.getSystemService(Param.LOCATION);
        if (context != null) {
            return ((LocationManager) context).isProviderEnabled(str);
        }
        throw new TypeCastException("null cannot be cast to non-null type android.location.LocationManager");
    }
}
