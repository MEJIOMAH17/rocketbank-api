package com.google.maps.android.clustering.algo;

import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import java.util.Collection;
import java.util.Set;

public interface Algorithm<T extends ClusterItem> {
    void addItems(Collection<T> collection);

    void clearItems();

    Set<? extends Cluster<T>> getClusters(double d);
}
