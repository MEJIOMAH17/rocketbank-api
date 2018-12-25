.class public Lcom/google/maps/android/clustering/ClusterManager;
.super Ljava/lang/Object;
.source "ClusterManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;",
        "Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;"
    }
.end annotation


# instance fields
.field private mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/algo/Algorithm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mClusterMarkers:Lcom/google/maps/android/MarkerManager$Collection;

.field private mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager<",
            "TT;>.ClusterTask;"
        }
    .end annotation
.end field

.field private final mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mMarkerManager:Lcom/google/maps/android/MarkerManager;

.field private final mMarkers:Lcom/google/maps/android/MarkerManager$Collection;

.field private mOnClusterItemClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mPreviousCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

.field private mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/view/ClusterRenderer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/google/maps/android/MarkerManager;

    invoke-direct {v0, p2}, Lcom/google/maps/android/MarkerManager;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/maps/android/clustering/ClusterManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/google/maps/android/MarkerManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/google/maps/android/MarkerManager;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 72
    iput-object p2, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 73
    iput-object p3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkerManager:Lcom/google/maps/android/MarkerManager;

    .line 1049
    new-instance v0, Lcom/google/maps/android/MarkerManager$Collection;

    invoke-direct {v0, p3}, Lcom/google/maps/android/MarkerManager$Collection;-><init>(Lcom/google/maps/android/MarkerManager;)V

    .line 74
    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterMarkers:Lcom/google/maps/android/MarkerManager$Collection;

    .line 2049
    new-instance v0, Lcom/google/maps/android/MarkerManager$Collection;

    invoke-direct {v0, p3}, Lcom/google/maps/android/MarkerManager$Collection;-><init>(Lcom/google/maps/android/MarkerManager;)V

    .line 75
    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkers:Lcom/google/maps/android/MarkerManager$Collection;

    .line 76
    new-instance p3, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;

    invoke-direct {p3, p1, p2, p0}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/google/maps/android/clustering/ClusterManager;)V

    iput-object p3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    .line 77
    new-instance p1, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;

    new-instance p2, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;

    invoke-direct {p2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;-><init>(Lcom/google/maps/android/clustering/algo/Algorithm;)V

    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    .line 78
    new-instance p1, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;-><init>(Lcom/google/maps/android/clustering/ClusterManager;B)V

    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    .line 79
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->onAdd()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/maps/android/clustering/ClusterManager;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/maps/android/clustering/ClusterManager;)Lcom/google/maps/android/clustering/algo/Algorithm;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/maps/android/clustering/ClusterManager;)Lcom/google/maps/android/clustering/view/ClusterRenderer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    return-object p0
.end method


# virtual methods
.method public addItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/Algorithm;->addItems(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final clearItems()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/Algorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/Algorithm;->clearItems()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithmLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final cluster()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;->cancel(Z)Z

    .line 175
    new-instance v0, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;-><init>(Lcom/google/maps/android/clustering/ClusterManager;B)V

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    new-array v1, v1, [Ljava/lang/Float;

    iget-object v3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Float;

    iget-object v4, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getClusterMarkerCollection()Lcom/google/maps/android/MarkerManager$Collection;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterMarkers:Lcom/google/maps/android/MarkerManager$Collection;

    return-object v0
.end method

.method public final getMarkerCollection()Lcom/google/maps/android/MarkerManager$Collection;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkers:Lcom/google/maps/android/MarkerManager$Collection;

    return-object v0
.end method

.method public final getMarkerManager()Lcom/google/maps/android/MarkerManager;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkerManager:Lcom/google/maps/android/MarkerManager;

    return-object v0
.end method

.method public final getRenderer()Lcom/google/maps/android/clustering/view/ClusterRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/maps/android/clustering/view/ClusterRenderer<",
            "TT;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    return-object v0
.end method

.method public onCameraIdle()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    instance-of v0, v0, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    check-cast v0, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;->onCameraIdle()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mPreviousCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mPreviousCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mPreviousCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 202
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->cluster()V

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 3091
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkerManager:Lcom/google/maps/android/MarkerManager;

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/maps/android/MarkerManager;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkerManager:Lcom/google/maps/android/MarkerManager;

    .line 207
    invoke-virtual {v0, p1}, Lcom/google/maps/android/MarkerManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    return p1
.end method

.method public final setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterItemClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;

    .line 259
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    return-void
.end method

.method public final setRenderer(Lcom/google/maps/android/clustering/view/ClusterRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/view/ClusterRenderer<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterMarkers:Lcom/google/maps/android/MarkerManager$Collection;

    invoke-virtual {v0}, Lcom/google/maps/android/MarkerManager$Collection;->clear()V

    .line 98
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkers:Lcom/google/maps/android/MarkerManager$Collection;

    invoke-virtual {v0}, Lcom/google/maps/android/MarkerManager$Collection;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->onRemove()V

    .line 100
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    .line 101
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->onAdd()V

    .line 102
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {p1, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {p1, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterItemClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {p1, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->cluster()V

    return-void
.end method
