package com.google.maps.android.clustering;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import bolts.Task;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnCameraIdleListener;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Marker;
import com.google.maps.android.MarkerManager;
import com.google.maps.android.MarkerManager.Collection;
import com.google.maps.android.clustering.algo.Algorithm;
import com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm;
import com.google.maps.android.clustering.algo.PreCachingAlgorithmDecorator;
import com.google.maps.android.clustering.view.ClusterRenderer;
import com.google.maps.android.clustering.view.DefaultClusterRenderer;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ClusterManager<T extends ClusterItem> implements OnCameraIdleListener, OnInfoWindowClickListener, OnMarkerClickListener {
    private Algorithm<T> mAlgorithm;
    private final ReadWriteLock mAlgorithmLock;
    private final Collection mClusterMarkers;
    private ClusterTask mClusterTask;
    private final ReadWriteLock mClusterTaskLock;
    private GoogleMap mMap;
    private final MarkerManager mMarkerManager;
    private final Collection mMarkers;
    private OnClusterItemClickListener<T> mOnClusterItemClickListener;
    private CameraPosition mPreviousCameraPosition;
    private ClusterRenderer<T> mRenderer;

    class ClusterTask extends AsyncTask<Float, Void, Set<? extends Cluster<T>>> {
        private ClusterTask() {
        }

        protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
            ClusterManager.this.mRenderer.onClustersChanged((Set) obj);
        }

        private Set<? extends Cluster<T>> doInBackground(Float... fArr) {
            ClusterManager.this.mAlgorithmLock.readLock().lock();
            try {
                fArr = ClusterManager.this.mAlgorithm.getClusters((double) fArr[0].floatValue());
                return fArr;
            } finally {
                ClusterManager.this.mAlgorithmLock.readLock().unlock();
            }
        }
    }

    public interface OnClusterClickListener<T extends ClusterItem> {
        boolean onClusterClick$6feeac45();
    }

    public interface OnClusterInfoWindowClickListener<T extends ClusterItem> {
        void onChanged(int i, int i2, Object obj);

        void onInserted(int i, int i2);

        void onMoved(int i, int i2);

        void onRemoved(int i, int i2);
    }

    public interface OnClusterItemClickListener<T extends ClusterItem> {
        boolean onClusterItemClick(T t);
    }

    public interface OnClusterItemInfoWindowClickListener<TTaskResult, TContinuationResult> {
        TContinuationResult then(Task<TTaskResult> task) throws Exception;
    }

    public ClusterManager(Context context, GoogleMap googleMap) {
        this(context, googleMap, new MarkerManager(googleMap));
    }

    private ClusterManager(Context context, GoogleMap googleMap, MarkerManager markerManager) {
        this.mAlgorithmLock = new ReentrantReadWriteLock();
        this.mClusterTaskLock = new ReentrantReadWriteLock();
        this.mMap = googleMap;
        this.mMarkerManager = markerManager;
        this.mClusterMarkers = new Collection();
        this.mMarkers = new Collection();
        this.mRenderer = new DefaultClusterRenderer(context, googleMap, this);
        this.mAlgorithm = new PreCachingAlgorithmDecorator(new NonHierarchicalDistanceBasedAlgorithm());
        this.mClusterTask = new ClusterTask();
        this.mRenderer.onAdd();
    }

    public final Collection getMarkerCollection() {
        return this.mMarkers;
    }

    public final Collection getClusterMarkerCollection() {
        return this.mClusterMarkers;
    }

    public final MarkerManager getMarkerManager() {
        return this.mMarkerManager;
    }

    public final void setRenderer(ClusterRenderer<T> clusterRenderer) {
        this.mRenderer.setOnClusterClickListener(null);
        this.mRenderer.setOnClusterItemClickListener(null);
        this.mClusterMarkers.clear();
        this.mMarkers.clear();
        this.mRenderer.onRemove();
        this.mRenderer = clusterRenderer;
        this.mRenderer.onAdd();
        this.mRenderer.setOnClusterClickListener(null);
        this.mRenderer.setOnClusterInfoWindowClickListener(null);
        this.mRenderer.setOnClusterItemClickListener(this.mOnClusterItemClickListener);
        this.mRenderer.setOnClusterItemInfoWindowClickListener(null);
        cluster();
    }

    public final ClusterRenderer<T> getRenderer() {
        return this.mRenderer;
    }

    public final void clearItems() {
        this.mAlgorithmLock.writeLock().lock();
        try {
            this.mAlgorithm.clearItems();
        } finally {
            this.mAlgorithmLock.writeLock().unlock();
        }
    }

    public void addItems(java.util.Collection<T> collection) {
        this.mAlgorithmLock.writeLock().lock();
        try {
            this.mAlgorithm.addItems(collection);
        } finally {
            this.mAlgorithmLock.writeLock().unlock();
        }
    }

    public final void cluster() {
        this.mClusterTaskLock.writeLock().lock();
        try {
            this.mClusterTask.cancel(true);
            this.mClusterTask = new ClusterTask();
            if (VERSION.SDK_INT < 11) {
                this.mClusterTask.execute(new Float[]{Float.valueOf(this.mMap.getCameraPosition().zoom)});
            } else {
                this.mClusterTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Float[]{Float.valueOf(this.mMap.getCameraPosition().zoom)});
            }
            this.mClusterTaskLock.writeLock().unlock();
        } catch (Throwable th) {
            this.mClusterTaskLock.writeLock().unlock();
        }
    }

    public void onCameraIdle() {
        if (this.mRenderer instanceof OnCameraIdleListener) {
            ((OnCameraIdleListener) this.mRenderer).onCameraIdle();
        }
        CameraPosition cameraPosition = this.mMap.getCameraPosition();
        if (this.mPreviousCameraPosition == null || this.mPreviousCameraPosition.zoom != cameraPosition.zoom) {
            this.mPreviousCameraPosition = this.mMap.getCameraPosition();
            cluster();
        }
    }

    public final void setOnClusterItemClickListener(OnClusterItemClickListener<T> onClusterItemClickListener) {
        this.mOnClusterItemClickListener = onClusterItemClickListener;
        this.mRenderer.setOnClusterItemClickListener(onClusterItemClickListener);
    }

    public boolean onMarkerClick(Marker marker) {
        return this.mMarkerManager.onMarkerClick(marker);
    }

    public void onInfoWindowClick(Marker marker) {
        this.mMarkerManager.onInfoWindowClick(marker);
    }
}
