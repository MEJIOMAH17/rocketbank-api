package com.google.maps.android.clustering.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue.IdleHandler;
import android.support.v7.appcompat.C0219R.color;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.SparseArray;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.Projection;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.maps.android.MarkerManager;
import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import com.google.maps.android.clustering.ClusterManager;
import com.google.maps.android.clustering.ClusterManager.OnClusterClickListener;
import com.google.maps.android.clustering.ClusterManager.OnClusterInfoWindowClickListener;
import com.google.maps.android.clustering.ClusterManager.OnClusterItemClickListener;
import com.google.maps.android.clustering.ClusterManager.OnClusterItemInfoWindowClickListener;
import com.google.maps.android.projection.SphericalMercatorProjection;
import com.google.maps.android.ui.IconGenerator;
import com.google.maps.android.ui.SquareTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import ru.rocketbank.r2d2.C0859R;

public class DefaultClusterRenderer<T extends ClusterItem> implements ClusterRenderer<T> {
    private static final TimeInterpolator ANIMATION_INTERP = new DecelerateInterpolator();
    private static final int[] BUCKETS = new int[]{10, 20, 50, 100, Callback.DEFAULT_DRAG_ANIMATION_DURATION, 500, 1000};
    private static final boolean SHOULD_ANIMATE = (VERSION.SDK_INT >= 11);
    private OnClusterClickListener<T> mClickListener;
    private final ClusterManager<T> mClusterManager;
    private Map<Cluster<T>, Marker> mClusterToMarker = new HashMap();
    private Set<? extends Cluster<T>> mClusters;
    private ShapeDrawable mColoredCircleBackground;
    private final float mDensity;
    private final IconGenerator mIconGenerator;
    private SparseArray<BitmapDescriptor> mIcons = new SparseArray();
    private OnClusterInfoWindowClickListener<T> mInfoWindowClickListener;
    private OnClusterItemClickListener<T> mItemClickListener;
    private OnClusterItemInfoWindowClickListener<T> mItemInfoWindowClickListener;
    private final GoogleMap mMap;
    private MarkerCache<T> mMarkerCache = new MarkerCache();
    private Map<Marker, Cluster<T>> mMarkerToCluster = new HashMap();
    private Set<MarkerWithPosition> mMarkers = Collections.newSetFromMap(new ConcurrentHashMap());
    private int mMinClusterSize = 4;
    private final ViewModifier mViewModifier = new ViewModifier();
    private float mZoom;

    @TargetApi(12)
    class AnimationTask extends AnimatorListenerAdapter implements AnimatorUpdateListener {
        private final LatLng from;
        private MarkerManager mMarkerManager;
        private boolean mRemoveOnComplete;
        private final Marker marker;
        private final MarkerWithPosition markerWithPosition;
        private final LatLng to;

        private AnimationTask(MarkerWithPosition markerWithPosition, LatLng latLng, LatLng latLng2) {
            this.markerWithPosition = markerWithPosition;
            this.marker = markerWithPosition.marker;
            this.from = latLng;
            this.to = latLng2;
        }

        public final void onAnimationEnd(Animator animator) {
            if (this.mRemoveOnComplete != null) {
                DefaultClusterRenderer.this.mClusterToMarker.remove((Cluster) DefaultClusterRenderer.this.mMarkerToCluster.get(this.marker));
                DefaultClusterRenderer.this.mMarkerCache.remove(this.marker);
                DefaultClusterRenderer.this.mMarkerToCluster.remove(this.marker);
                this.mMarkerManager.remove(this.marker);
            }
            this.markerWithPosition.position = this.to;
        }

        public final void removeOnAnimationComplete(MarkerManager markerManager) {
            this.mMarkerManager = markerManager;
            this.mRemoveOnComplete = true;
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            double animatedFraction = (double) valueAnimator.getAnimatedFraction();
            double d = ((this.to.latitude - this.from.latitude) * animatedFraction) + this.from.latitude;
            double d2 = this.to.longitude - this.from.longitude;
            if (Math.abs(d2) > 180.0d) {
                d2 -= Math.signum(d2) * 360.0d;
            }
            this.marker.setPosition(new LatLng(d, (d2 * animatedFraction) + this.from.longitude));
        }
    }

    class CreateMarkerTask {
        private final LatLng animateFrom;
        private final Cluster<T> cluster;
        private final Set<MarkerWithPosition> newMarkers;

        public CreateMarkerTask(Cluster<T> cluster, Set<MarkerWithPosition> set, LatLng latLng) {
            this.cluster = cluster;
            this.newMarkers = set;
            this.animateFrom = latLng;
        }

        static /* synthetic */ void access$2000(CreateMarkerTask createMarkerTask, MarkerModifier markerModifier) {
            if (DefaultClusterRenderer.this.shouldRenderAsCluster(createMarkerTask.cluster)) {
                MarkerOptions position = new MarkerOptions().position(createMarkerTask.animateFrom == null ? createMarkerTask.cluster.getPosition() : createMarkerTask.animateFrom);
                DefaultClusterRenderer.this.onBeforeClusterRendered(createMarkerTask.cluster, position);
                Marker addMarker = DefaultClusterRenderer.this.mClusterManager.getClusterMarkerCollection().addMarker(position);
                DefaultClusterRenderer.this.mMarkerToCluster.put(addMarker, createMarkerTask.cluster);
                DefaultClusterRenderer.this.mClusterToMarker.put(createMarkerTask.cluster, addMarker);
                MarkerWithPosition markerWithPosition = new MarkerWithPosition(addMarker);
                if (createMarkerTask.animateFrom != null) {
                    markerModifier.animate(markerWithPosition, createMarkerTask.animateFrom, createMarkerTask.cluster.getPosition());
                }
                DefaultClusterRenderer.this.onClusterRendered(createMarkerTask.cluster, addMarker);
                createMarkerTask.newMarkers.add(markerWithPosition);
                return;
            }
            for (Object obj : createMarkerTask.cluster.getItems()) {
                Object markerWithPosition2;
                Marker marker = DefaultClusterRenderer.this.mMarkerCache.get(obj);
                if (marker == null) {
                    MarkerOptions markerOptions = new MarkerOptions();
                    if (createMarkerTask.animateFrom != null) {
                        markerOptions.position(createMarkerTask.animateFrom);
                    } else {
                        markerOptions.position(obj.getPosition());
                    }
                    DefaultClusterRenderer.this.onBeforeClusterItemRendered(obj, markerOptions);
                    marker = DefaultClusterRenderer.this.mClusterManager.getMarkerCollection().addMarker(markerOptions);
                    markerWithPosition2 = new MarkerWithPosition(marker);
                    DefaultClusterRenderer.this.mMarkerCache.put(obj, marker);
                    if (createMarkerTask.animateFrom != null) {
                        markerModifier.animate(markerWithPosition2, createMarkerTask.animateFrom, obj.getPosition());
                    }
                } else {
                    markerWithPosition2 = new MarkerWithPosition(marker);
                }
                DefaultClusterRenderer.this.onClusterItemRendered(obj, marker);
                createMarkerTask.newMarkers.add(markerWithPosition2);
            }
        }
    }

    static class MarkerCache<T> {
        private Map<T, Marker> mCache;
        private Map<Marker, T> mCacheReverse;

        private MarkerCache() {
            this.mCache = new HashMap();
            this.mCacheReverse = new HashMap();
        }

        public final Marker get(T t) {
            return (Marker) this.mCache.get(t);
        }

        public final T get(Marker marker) {
            return this.mCacheReverse.get(marker);
        }

        public final void put(T t, Marker marker) {
            this.mCache.put(t, marker);
            this.mCacheReverse.put(marker, t);
        }

        public final void remove(Marker marker) {
            Object obj = this.mCacheReverse.get(marker);
            this.mCacheReverse.remove(marker);
            this.mCache.remove(obj);
        }
    }

    @SuppressLint({"HandlerLeak"})
    class MarkerModifier extends Handler implements IdleHandler {
        private final Condition busyCondition;
        private final Lock lock;
        private Queue<AnimationTask> mAnimationTasks;
        private Queue<CreateMarkerTask> mCreateMarkerTasks;
        private boolean mListenerAdded;
        private Queue<CreateMarkerTask> mOnScreenCreateMarkerTasks;
        private Queue<Marker> mOnScreenRemoveMarkerTasks;
        private Queue<Marker> mRemoveMarkerTasks;

        private MarkerModifier() {
            super(Looper.getMainLooper());
            this.lock = new ReentrantLock();
            this.busyCondition = this.lock.newCondition();
            this.mCreateMarkerTasks = new LinkedList();
            this.mOnScreenCreateMarkerTasks = new LinkedList();
            this.mRemoveMarkerTasks = new LinkedList();
            this.mOnScreenRemoveMarkerTasks = new LinkedList();
            this.mAnimationTasks = new LinkedList();
        }

        public final void add(boolean z, CreateMarkerTask createMarkerTask) {
            this.lock.lock();
            sendEmptyMessage(0);
            if (z) {
                this.mOnScreenCreateMarkerTasks.add(createMarkerTask);
            } else {
                this.mCreateMarkerTasks.add(createMarkerTask);
            }
            this.lock.unlock();
        }

        public final void remove(boolean z, Marker marker) {
            this.lock.lock();
            sendEmptyMessage(0);
            if (z) {
                this.mOnScreenRemoveMarkerTasks.add(marker);
            } else {
                this.mRemoveMarkerTasks.add(marker);
            }
            this.lock.unlock();
        }

        public final void animate(MarkerWithPosition markerWithPosition, LatLng latLng, LatLng latLng2) {
            this.lock.lock();
            this.mAnimationTasks.add(new AnimationTask(markerWithPosition, latLng, latLng2));
            this.lock.unlock();
        }

        @TargetApi(11)
        public final void animateThenRemove(MarkerWithPosition markerWithPosition, LatLng latLng, LatLng latLng2) {
            this.lock.lock();
            AnimationTask animationTask = new AnimationTask(markerWithPosition, latLng, latLng2);
            animationTask.removeOnAnimationComplete(DefaultClusterRenderer.this.mClusterManager.getMarkerManager());
            this.mAnimationTasks.add(animationTask);
            this.lock.unlock();
        }

        public final void handleMessage(Message message) {
            if (this.mListenerAdded == null) {
                Looper.myQueue().addIdleHandler(this);
                this.mListenerAdded = true;
            }
            removeMessages(0);
            this.lock.lock();
            int i = 0;
            while (i < 10) {
                try {
                    if (!this.mOnScreenRemoveMarkerTasks.isEmpty()) {
                        removeMarker((Marker) this.mOnScreenRemoveMarkerTasks.poll());
                    } else if (!this.mAnimationTasks.isEmpty()) {
                        AnimationTask animationTask = (AnimationTask) this.mAnimationTasks.poll();
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
                        ofFloat.setInterpolator(DefaultClusterRenderer.ANIMATION_INTERP);
                        ofFloat.addUpdateListener(animationTask);
                        ofFloat.addListener(animationTask);
                        ofFloat.start();
                    } else if (!this.mOnScreenCreateMarkerTasks.isEmpty()) {
                        CreateMarkerTask.access$2000((CreateMarkerTask) this.mOnScreenCreateMarkerTasks.poll(), this);
                    } else if (!this.mCreateMarkerTasks.isEmpty()) {
                        CreateMarkerTask.access$2000((CreateMarkerTask) this.mCreateMarkerTasks.poll(), this);
                    } else if (!this.mRemoveMarkerTasks.isEmpty()) {
                        removeMarker((Marker) this.mRemoveMarkerTasks.poll());
                    }
                    i++;
                } catch (Throwable th) {
                    this.lock.unlock();
                }
            }
            if (isBusy()) {
                sendEmptyMessageDelayed(0, 10);
            } else {
                this.mListenerAdded = false;
                Looper.myQueue().removeIdleHandler(this);
                this.busyCondition.signalAll();
            }
            this.lock.unlock();
        }

        private void removeMarker(Marker marker) {
            DefaultClusterRenderer.this.mClusterToMarker.remove((Cluster) DefaultClusterRenderer.this.mMarkerToCluster.get(marker));
            DefaultClusterRenderer.this.mMarkerCache.remove(marker);
            DefaultClusterRenderer.this.mMarkerToCluster.remove(marker);
            DefaultClusterRenderer.this.mClusterManager.getMarkerManager().remove(marker);
        }

        private boolean isBusy() {
            try {
                boolean z;
                this.lock.lock();
                if (this.mCreateMarkerTasks.isEmpty() && this.mOnScreenCreateMarkerTasks.isEmpty() && this.mOnScreenRemoveMarkerTasks.isEmpty() && this.mRemoveMarkerTasks.isEmpty()) {
                    if (this.mAnimationTasks.isEmpty()) {
                        z = false;
                        this.lock.unlock();
                        return z;
                    }
                }
                z = true;
                this.lock.unlock();
                return z;
            } catch (Throwable th) {
                this.lock.unlock();
            }
        }

        public final void waitUntilFree() {
            while (isBusy()) {
                sendEmptyMessage(0);
                this.lock.lock();
                try {
                    if (isBusy()) {
                        this.busyCondition.await();
                    }
                    this.lock.unlock();
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                } catch (Throwable th) {
                    this.lock.unlock();
                }
            }
        }

        public final boolean queueIdle() {
            sendEmptyMessage(0);
            return true;
        }
    }

    static class MarkerWithPosition {
        private final Marker marker;
        private LatLng position;

        private MarkerWithPosition(Marker marker) {
            this.marker = marker;
            this.position = marker.getPosition();
        }

        public final boolean equals(Object obj) {
            return obj instanceof MarkerWithPosition ? this.marker.equals(((MarkerWithPosition) obj).marker) : null;
        }

        public final int hashCode() {
            return this.marker.hashCode();
        }
    }

    class RenderTask implements Runnable {
        final Set<? extends Cluster<T>> clusters;
        private Runnable mCallback;
        private float mMapZoom;
        private Projection mProjection;
        private SphericalMercatorProjection mSphericalMercatorProjection;

        private RenderTask(Set<? extends Cluster<T>> set) {
            this.clusters = set;
        }

        public final void setCallback(Runnable runnable) {
            this.mCallback = runnable;
        }

        public final void setProjection(Projection projection) {
            this.mProjection = projection;
        }

        public final void setMapZoom(float f) {
            this.mMapZoom = f;
            this.mSphericalMercatorProjection = new SphericalMercatorProjection(256.0d * Math.pow(2.0d, (double) Math.min(f, DefaultClusterRenderer.this.mZoom)));
        }

        @SuppressLint({"NewApi"})
        public final void run() {
            if (this.clusters.equals(DefaultClusterRenderer.this.mClusters)) {
                this.mCallback.run();
                return;
            }
            List list;
            byte b = (byte) 0;
            MarkerModifier markerModifier = new MarkerModifier();
            float f = this.mMapZoom;
            if (f > DefaultClusterRenderer.this.mZoom) {
                b = (byte) 1;
            }
            float access$1000 = f - DefaultClusterRenderer.this.mZoom;
            Set<MarkerWithPosition> access$1300 = DefaultClusterRenderer.this.mMarkers;
            LatLngBounds latLngBounds = this.mProjection.getVisibleRegion().latLngBounds;
            List list2 = null;
            if (DefaultClusterRenderer.this.mClusters == null || !DefaultClusterRenderer.SHOULD_ANIMATE) {
                list = null;
            } else {
                list = new ArrayList();
                for (Cluster cluster : DefaultClusterRenderer.this.mClusters) {
                    if (DefaultClusterRenderer.this.shouldRenderAsCluster(cluster) && latLngBounds.contains(cluster.getPosition())) {
                        list.add(this.mSphericalMercatorProjection.toPoint(cluster.getPosition()));
                    }
                }
            }
            Object newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            for (Cluster cluster2 : this.clusters) {
                boolean contains = latLngBounds.contains(cluster2.getPosition());
                if (b != (byte) 0 && contains && DefaultClusterRenderer.SHOULD_ANIMATE) {
                    color access$1500$7df40e70 = DefaultClusterRenderer.findClosestCluster$7df40e70(list, this.mSphericalMercatorProjection.toPoint(cluster2.getPosition()));
                    if (access$1500$7df40e70 != null) {
                        markerModifier.add(true, new CreateMarkerTask(cluster2, newSetFromMap, this.mSphericalMercatorProjection.toLatLng$d83856a(access$1500$7df40e70)));
                    } else {
                        markerModifier.add(true, new CreateMarkerTask(cluster2, newSetFromMap, null));
                    }
                } else {
                    markerModifier.add(contains, new CreateMarkerTask(cluster2, newSetFromMap, null));
                }
            }
            markerModifier.waitUntilFree();
            access$1300.removeAll(newSetFromMap);
            if (DefaultClusterRenderer.SHOULD_ANIMATE) {
                list2 = new ArrayList();
                for (Cluster cluster3 : this.clusters) {
                    if (DefaultClusterRenderer.this.shouldRenderAsCluster(cluster3) && latLngBounds.contains(cluster3.getPosition())) {
                        list2.add(this.mSphericalMercatorProjection.toPoint(cluster3.getPosition()));
                    }
                }
            }
            for (MarkerWithPosition markerWithPosition : access$1300) {
                boolean contains2 = latLngBounds.contains(markerWithPosition.position);
                if (b == (byte) 0 && access$1000 > -3.0f && contains2 && DefaultClusterRenderer.SHOULD_ANIMATE) {
                    color access$1500$7df40e702 = DefaultClusterRenderer.findClosestCluster$7df40e70(list2, this.mSphericalMercatorProjection.toPoint(markerWithPosition.position));
                    if (access$1500$7df40e702 != null) {
                        markerModifier.animateThenRemove(markerWithPosition, markerWithPosition.position, this.mSphericalMercatorProjection.toLatLng$d83856a(access$1500$7df40e702));
                    } else {
                        markerModifier.remove(true, markerWithPosition.marker);
                    }
                } else {
                    markerModifier.remove(contains2, markerWithPosition.marker);
                }
            }
            markerModifier.waitUntilFree();
            DefaultClusterRenderer.this.mMarkers = newSetFromMap;
            DefaultClusterRenderer.this.mClusters = this.clusters;
            DefaultClusterRenderer.this.mZoom = f;
            this.mCallback.run();
        }
    }

    @SuppressLint({"HandlerLeak"})
    class ViewModifier extends Handler {
        private RenderTask mNextClusters;
        private boolean mViewModificationInProgress;

        /* renamed from: com.google.maps.android.clustering.view.DefaultClusterRenderer$ViewModifier$1 */
        class C06521 implements Runnable {
            C06521() {
            }

            public final void run() {
                ViewModifier.this.sendEmptyMessage(1);
            }
        }

        private ViewModifier() {
            this.mViewModificationInProgress = null;
            this.mNextClusters = null;
        }

        public final void handleMessage(Message message) {
            if (message.what == 1) {
                this.mViewModificationInProgress = false;
                if (this.mNextClusters != null) {
                    sendEmptyMessage(0);
                }
                return;
            }
            removeMessages(0);
            if (this.mViewModificationInProgress == null && this.mNextClusters != null) {
                message = DefaultClusterRenderer.this.mMap.getProjection();
                if (message != null) {
                    Runnable runnable;
                    synchronized (this) {
                        runnable = this.mNextClusters;
                        this.mNextClusters = null;
                        this.mViewModificationInProgress = true;
                    }
                    runnable.setCallback(new C06521());
                    runnable.setProjection(message);
                    runnable.setMapZoom(DefaultClusterRenderer.this.mMap.getCameraPosition().zoom);
                    new Thread(runnable).start();
                }
            }
        }

        public final void queue(Set<? extends Cluster<T>> set) {
            synchronized (this) {
                this.mNextClusters = new RenderTask(set);
            }
            sendEmptyMessage(0);
        }
    }

    /* renamed from: com.google.maps.android.clustering.view.DefaultClusterRenderer$1 */
    class C12601 implements OnMarkerClickListener {
        C12601() {
        }

        public final boolean onMarkerClick(Marker marker) {
            return (DefaultClusterRenderer.this.mItemClickListener == null || DefaultClusterRenderer.this.mItemClickListener.onClusterItemClick((ClusterItem) DefaultClusterRenderer.this.mMarkerCache.get(marker)) == null) ? null : true;
        }
    }

    /* renamed from: com.google.maps.android.clustering.view.DefaultClusterRenderer$2 */
    class C12612 implements OnInfoWindowClickListener {
        C12612() {
        }

        public final void onInfoWindowClick(Marker marker) {
            if (DefaultClusterRenderer.this.mItemInfoWindowClickListener != null) {
                DefaultClusterRenderer.this.mItemInfoWindowClickListener;
                DefaultClusterRenderer.this.mMarkerCache.get(marker);
            }
        }
    }

    /* renamed from: com.google.maps.android.clustering.view.DefaultClusterRenderer$3 */
    class C12623 implements OnMarkerClickListener {
        C12623() {
        }

        public final boolean onMarkerClick(Marker marker) {
            if (DefaultClusterRenderer.this.mClickListener != null) {
                OnClusterClickListener access$500 = DefaultClusterRenderer.this.mClickListener;
                DefaultClusterRenderer.this.mMarkerToCluster.get(marker);
                if (access$500.onClusterClick$6feeac45() != null) {
                    return true;
                }
            }
            return null;
        }
    }

    /* renamed from: com.google.maps.android.clustering.view.DefaultClusterRenderer$4 */
    class C12634 implements OnInfoWindowClickListener {
        C12634() {
        }

        public final void onInfoWindowClick(Marker marker) {
            if (DefaultClusterRenderer.this.mInfoWindowClickListener != null) {
                DefaultClusterRenderer.this.mInfoWindowClickListener;
                DefaultClusterRenderer.this.mMarkerToCluster.get(marker);
            }
        }
    }

    protected void onBeforeClusterItemRendered(T t, MarkerOptions markerOptions) {
    }

    protected void onClusterItemRendered(T t, Marker marker) {
    }

    protected void onClusterRendered(Cluster<T> cluster, Marker marker) {
    }

    public DefaultClusterRenderer(Context context, GoogleMap googleMap, ClusterManager<T> clusterManager) {
        this.mMap = googleMap;
        this.mDensity = context.getResources().getDisplayMetrics().density;
        this.mIconGenerator = new IconGenerator(context);
        this.mIconGenerator.setContentView(makeSquareTextView(context));
        this.mIconGenerator.setTextAppearance$13462e();
        this.mIconGenerator.setBackground(makeClusterBackground());
        this.mClusterManager = clusterManager;
    }

    public void onAdd() {
        this.mClusterManager.getMarkerCollection().setOnMarkerClickListener(new C12601());
        this.mClusterManager.getMarkerCollection().setOnInfoWindowClickListener(new C12612());
        this.mClusterManager.getClusterMarkerCollection().setOnMarkerClickListener(new C12623());
        this.mClusterManager.getClusterMarkerCollection().setOnInfoWindowClickListener(new C12634());
    }

    public void onRemove() {
        this.mClusterManager.getMarkerCollection().setOnMarkerClickListener(null);
        this.mClusterManager.getClusterMarkerCollection().setOnMarkerClickListener(null);
    }

    private LayerDrawable makeClusterBackground() {
        this.mColoredCircleBackground = new ShapeDrawable(new OvalShape());
        new ShapeDrawable(new OvalShape()).getPaint().setColor(-2130706433);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{r0, this.mColoredCircleBackground});
        int i = (int) (this.mDensity * 3.0f);
        layerDrawable.setLayerInset(1, i, i, i, i);
        return layerDrawable;
    }

    private SquareTextView makeSquareTextView(Context context) {
        SquareTextView squareTextView = new SquareTextView(context);
        squareTextView.setLayoutParams(new LayoutParams(-2, -2));
        squareTextView.setId(C0859R.id.amu_text);
        context = (int) (12.0f * this.mDensity);
        squareTextView.setPadding(context, context, context, context);
        return squareTextView;
    }

    protected int getColor(int i) {
        float min = 300.0f - Math.min((float) i, 300.0f);
        return Color.HSVToColor(new float[]{((min * min) / 1202702336) * 1130102784, 1065353216, 1058642330});
    }

    protected String getClusterText(int i) {
        if (i < BUCKETS[0]) {
            return String.valueOf(i);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(i));
        stringBuilder.append(org.slf4j.Marker.ANY_NON_NULL_MARKER);
        return stringBuilder.toString();
    }

    protected int getBucket(Cluster<T> cluster) {
        cluster = cluster.getSize();
        int i = 0;
        if (cluster <= BUCKETS[0]) {
            return cluster;
        }
        while (i < BUCKETS.length - 1) {
            int i2 = i + 1;
            if (cluster < BUCKETS[i2]) {
                return BUCKETS[i];
            }
            i = i2;
        }
        cluster = BUCKETS;
        return cluster[cluster.length - 1];
    }

    public int getMinClusterSize() {
        return this.mMinClusterSize;
    }

    public void setMinClusterSize(int i) {
        this.mMinClusterSize = i;
    }

    protected boolean shouldRenderAsCluster(Cluster<T> cluster) {
        return cluster.getSize() > this.mMinClusterSize ? true : null;
    }

    public void onClustersChanged(Set<? extends Cluster<T>> set) {
        this.mViewModifier.queue(set);
    }

    public void setOnClusterClickListener(OnClusterClickListener<T> onClusterClickListener) {
        this.mClickListener = onClusterClickListener;
    }

    public void setOnClusterInfoWindowClickListener(OnClusterInfoWindowClickListener<T> onClusterInfoWindowClickListener) {
        this.mInfoWindowClickListener = onClusterInfoWindowClickListener;
    }

    public void setOnClusterItemClickListener(OnClusterItemClickListener<T> onClusterItemClickListener) {
        this.mItemClickListener = onClusterItemClickListener;
    }

    public void setOnClusterItemInfoWindowClickListener(OnClusterItemInfoWindowClickListener<T> onClusterItemInfoWindowClickListener) {
        this.mItemInfoWindowClickListener = onClusterItemInfoWindowClickListener;
    }

    private static double distanceSquared$71581145(color color, color color2) {
        return ((color.f5x - color2.f5x) * (color.f5x - color2.f5x)) + ((color.f6y - color2.f6y) * (color.f6y - color2.f6y));
    }

    private static color findClosestCluster$7df40e70(List<color> list, color color) {
        color color2 = null;
        if (list != null) {
            if (!list.isEmpty()) {
                double d = 10000.0d;
                for (color color3 : list) {
                    double distanceSquared$71581145 = distanceSquared$71581145(color3, color);
                    if (distanceSquared$71581145 < d) {
                        color2 = color3;
                        d = distanceSquared$71581145;
                    }
                }
                return color2;
            }
        }
        return null;
    }

    protected void onBeforeClusterRendered(Cluster<T> cluster, MarkerOptions markerOptions) {
        cluster = getBucket(cluster);
        BitmapDescriptor bitmapDescriptor = (BitmapDescriptor) this.mIcons.get(cluster);
        if (bitmapDescriptor == null) {
            this.mColoredCircleBackground.getPaint().setColor(getColor(cluster));
            bitmapDescriptor = BitmapDescriptorFactory.fromBitmap(this.mIconGenerator.makeIcon(getClusterText(cluster)));
            this.mIcons.put(cluster, bitmapDescriptor);
        }
        markerOptions.icon(bitmapDescriptor);
    }

    public Marker getMarker(T t) {
        return this.mMarkerCache.get((Object) t);
    }

    public T getClusterItem(Marker marker) {
        return (ClusterItem) this.mMarkerCache.get(marker);
    }

    public Marker getMarker(Cluster<T> cluster) {
        return (Marker) this.mClusterToMarker.get(cluster);
    }

    public Cluster<T> getCluster(Marker marker) {
        return (Cluster) this.mMarkerToCluster.get(marker);
    }
}
