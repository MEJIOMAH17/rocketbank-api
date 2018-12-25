package io.realm;

import android.content.Context;
import com.getkeepsafe.relinker.ReLinker;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnCameraMoveListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.maps.android.clustering.ClusterManager;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

public class AtmRealmClusterManager<M extends RealmObject> extends ClusterManager<ReLinker<M>> {
    private GoogleMap map;
    private LatLngBounds mapClusterViewportBounds;
    private Subscription subscription;
    private long titleColumnIndex = -1;
    private List<ReLinker<M>> wrappedItems;

    /* renamed from: io.realm.AtmRealmClusterManager$2 */
    class C14572 implements Action1<List<ReLinker<M>>> {
        C14572() {
        }

        public final /* bridge */ /* synthetic */ void call(Object obj) {
            List list = (List) obj;
            super.clearItems();
            super.addItems(list);
            AtmRealmClusterManager.this.cluster();
        }
    }

    public AtmRealmClusterManager(Context context, final GoogleMap googleMap) {
        super(context, googleMap);
        this.map = googleMap;
        googleMap.setOnCameraMoveListener(new OnCameraMoveListener() {
            public final void onCameraMove() {
                if (AtmRealmClusterManager.this.getRenderer() instanceof OnCameraMoveListener) {
                    ((OnCameraMoveListener) AtmRealmClusterManager.this.getRenderer()).onCameraMove(AtmRealmClusterManager.getBounds(googleMap));
                }
            }
        });
    }

    private static LatLngBounds getBounds(GoogleMap googleMap) {
        if (googleMap == null) {
            return null;
        }
        googleMap = googleMap.getProjection().getVisibleRegion().latLngBounds;
        LatLng latLng = googleMap.northeast;
        googleMap = googleMap.southwest;
        double d = (latLng.latitude - googleMap.latitude) * 0.15d;
        double d2 = (latLng.longitude - googleMap.longitude) * 0.15d;
        return new LatLngBounds(new LatLng(googleMap.latitude - d, googleMap.longitude - d2), new LatLng(latLng.latitude + d, latLng.longitude + d2));
    }

    public final void addItems(Collection<ReLinker<M>> collection) {
        throw new IllegalStateException("Use updateRealmResults instead");
    }

    public final void updateRealmResults(Realm realm, RealmResults<M> realmResults, String str, String str2, String str3) {
        OrderedRealmCollectionImpl orderedRealmCollectionImpl = realmResults;
        super.clearItems();
        Table table = orderedRealmCollectionImpl.collection.getTable();
        this.titleColumnIndex = table.getColumnIndex(str);
        if (this.titleColumnIndex == -1) {
            throw new IllegalStateException("titleColumnName not valid.");
        }
        long columnIndex = table.getColumnIndex(str2);
        if (columnIndex == -1) {
            throw new IllegalStateException("latitudeColumnName not valid.");
        }
        long columnIndex2 = table.getColumnIndex(str3);
        if (columnIndex2 == -1) {
            throw new IllegalStateException("longitudeColumnName not valid.");
        }
        r0.wrappedItems = new ArrayList(realmResults.size());
        for (int i = 0; i < realmResults.size(); i++) {
            RealmModel realmModel = (RealmObject) orderedRealmCollectionImpl.get(i);
            Row row$realm = ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm();
            ReLinker reLinker = r10;
            ReLinker reLinker2 = new ReLinker((RealmObject) realm.copyFromRealm(realmModel), row$realm.getString(r0.titleColumnIndex), getValue(row$realm, table.getColumnType(columnIndex), columnIndex), getValue(row$realm, table.getColumnType(columnIndex2), columnIndex2));
            r0.wrappedItems.add(reLinker);
        }
        filter(getBounds(r0.map));
    }

    private static double getValue(Row row, RealmFieldType realmFieldType, long j) {
        if (realmFieldType == RealmFieldType.DOUBLE) {
            return row.getDouble(j);
        }
        if (realmFieldType == RealmFieldType.FLOAT) {
            return (double) row.getFloat(j);
        }
        if (realmFieldType == RealmFieldType.INTEGER) {
            return (double) row.getLong(j);
        }
        throw new IllegalStateException("The value type needs to be of double, float or int");
    }

    public final void filter(final LatLngBounds latLngBounds) {
        if (this.wrappedItems != null) {
            if (latLngBounds != null) {
                this.mapClusterViewportBounds = latLngBounds;
                if (!(this.subscription == null || this.subscription.isUnsubscribed())) {
                    this.subscription.unsubscribe();
                }
                this.subscription = Observable.from(this.wrappedItems).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).filter(new Func1<ReLinker<M>, Boolean>() {
                    public final /* bridge */ /* synthetic */ Object call(Object obj) {
                        return Boolean.valueOf(latLngBounds.contains(((ReLinker) obj).getPosition()));
                    }
                }).toList().subscribe(new C14572());
            }
        }
    }
}
