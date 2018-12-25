package com.google.maps.android.clustering.algo;

import com.google.android.gms.maps.model.LatLng;
import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class StaticCluster<T extends ClusterItem> implements Cluster<T> {
    private final LatLng mCenter;
    private final List<T> mItems = new ArrayList();

    public StaticCluster(LatLng latLng) {
        this.mCenter = latLng;
    }

    public final boolean add(T t) {
        return this.mItems.add(t);
    }

    public final LatLng getPosition() {
        return this.mCenter;
    }

    public final boolean remove(T t) {
        return this.mItems.remove(t);
    }

    public final Collection<T> getItems() {
        return this.mItems;
    }

    public final int getSize() {
        return this.mItems.size();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("StaticCluster{mCenter=");
        stringBuilder.append(this.mCenter);
        stringBuilder.append(", mItems.size=");
        stringBuilder.append(this.mItems.size());
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public final int hashCode() {
        return this.mCenter.hashCode() + this.mItems.hashCode();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StaticCluster)) {
            return false;
        }
        StaticCluster staticCluster = (StaticCluster) obj;
        if (!staticCluster.mCenter.equals(this.mCenter) || staticCluster.mItems.equals(this.mItems) == null) {
            return false;
        }
        return true;
    }
}
