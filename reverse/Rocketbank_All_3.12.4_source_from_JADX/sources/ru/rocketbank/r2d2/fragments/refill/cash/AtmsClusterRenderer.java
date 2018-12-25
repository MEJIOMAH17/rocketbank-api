package ru.rocketbank.r2d2.fragments.refill.cash;

import android.content.Context;
import com.getkeepsafe.relinker.ReLinker;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.maps.android.clustering.ClusterItem;
import com.google.maps.android.clustering.view.DefaultClusterRenderer;
import io.realm.AtmRealmClusterManager;
import io.realm.OnCameraMoveListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.realm.RealmAtm;

/* compiled from: AtmsClusterRenderer.kt */
public final class AtmsClusterRenderer extends DefaultClusterRenderer<ReLinker<RealmAtm>> implements OnCameraMoveListener {
    private final AtmRealmClusterManager<RealmAtm> clusterManager;
    private final MarkerIconsStorage markerStorage;

    public final /* bridge */ /* synthetic */ void onBeforeClusterItemRendered(ClusterItem clusterItem, MarkerOptions markerOptions) {
        onBeforeClusterItemRendered$7fa12f39((ReLinker) clusterItem, markerOptions);
    }

    public final /* bridge */ /* synthetic */ void onClusterItemRendered(ClusterItem clusterItem, Marker marker) {
        onClusterItemRendered$6700e7d5((ReLinker) clusterItem, marker);
    }

    public final AtmRealmClusterManager<RealmAtm> getClusterManager() {
        return this.clusterManager;
    }

    public AtmsClusterRenderer(Context context, GoogleMap googleMap, AtmRealmClusterManager<RealmAtm> atmRealmClusterManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(googleMap, "map");
        Intrinsics.checkParameterIsNotNull(atmRealmClusterManager, "clusterManager");
        super(context, googleMap, atmRealmClusterManager);
        this.clusterManager = atmRealmClusterManager;
        this.markerStorage = new MarkerIconsStorage(context);
    }

    public final MarkerIconsStorage getMarkerStorage() {
        return this.markerStorage;
    }

    protected final void onBeforeClusterItemRendered$7fa12f39(ReLinker<RealmAtm> reLinker, MarkerOptions markerOptions) {
        super.onBeforeClusterItemRendered(reLinker, markerOptions);
        if (markerOptions == null) {
            Intrinsics.throwNpe();
        }
        if (reLinker == null) {
            Intrinsics.throwNpe();
        }
        markerOptions.title(reLinker.getTitle());
        markerOptions.icon(this.markerStorage.getBitmapDescriptor(AtmType.getDrawableId$default(AtmType.INSTANCE, ((RealmAtm) reLinker.getRealmObject()).realmGet$type(), false, 2, null)));
    }

    protected final void onClusterItemRendered$6700e7d5(ReLinker<RealmAtm> reLinker, Marker marker) {
        Intrinsics.checkParameterIsNotNull(marker, "marker");
        super.onClusterItemRendered(reLinker, marker);
        marker.setTag(reLinker);
    }

    public final BitmapDescriptor getSelectedMarkerIcon$12b7fc29(ReLinker<RealmAtm> reLinker) {
        Intrinsics.checkParameterIsNotNull(reLinker, "item");
        return this.markerStorage.getBitmapDescriptor(AtmType.INSTANCE.getDrawableId(((RealmAtm) reLinker.getRealmObject()).realmGet$type(), true));
    }

    public final void onCameraMove(LatLngBounds latLngBounds) {
        Intrinsics.checkParameterIsNotNull(latLngBounds, "mapClusterViewportBounds");
        this.clusterManager.filter(latLngBounds);
    }

    public final BitmapDescriptor getUnselectedMarkerIcon$12b7fc29(ReLinker<RealmAtm> reLinker) {
        Intrinsics.checkParameterIsNotNull(reLinker, "item");
        return this.markerStorage.getBitmapDescriptor(AtmType.INSTANCE.getDrawableId(((RealmAtm) reLinker.getRealmObject()).realmGet$type(), false));
    }
}
