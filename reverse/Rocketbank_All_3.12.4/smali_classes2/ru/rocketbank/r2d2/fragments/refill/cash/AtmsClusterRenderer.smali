.class public final Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;
.super Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;
.source "AtmsClusterRenderer.kt"

# interfaces
.implements Lio/realm/OnCameraMoveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/maps/android/clustering/view/DefaultClusterRenderer<",
        "Lcom/getkeepsafe/relinker/ReLinker<",
        "Lru/rocketbank/core/realm/RealmAtm;",
        ">;>;",
        "Lio/realm/OnCameraMoveListener;"
    }
.end annotation


# instance fields
.field private final clusterManager:Lio/realm/AtmRealmClusterManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/AtmRealmClusterManager<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;"
        }
    .end annotation
.end field

.field private final markerStorage:Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lio/realm/AtmRealmClusterManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Lio/realm/AtmRealmClusterManager<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clusterManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p3

    check-cast v0, Lcom/google/maps/android/clustering/ClusterManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/google/maps/android/clustering/ClusterManager;)V

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->clusterManager:Lio/realm/AtmRealmClusterManager;

    .line 19
    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->markerStorage:Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;

    return-void
.end method


# virtual methods
.method public final getClusterManager()Lio/realm/AtmRealmClusterManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/AtmRealmClusterManager<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->clusterManager:Lio/realm/AtmRealmClusterManager;

    return-object v0
.end method

.method public final getMarkerStorage()Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->markerStorage:Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;

    return-object v0
.end method

.method public final getSelectedMarkerIcon$12b7fc29(Lcom/getkeepsafe/relinker/ReLinker;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/ReLinker;->getRealmObject()Lio/realm/RealmObject;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/realm/RealmAtm;

    .line 2027
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getDrawableId(Ljava/lang/String;Z)I

    move-result p1

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->markerStorage:Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;->getBitmapDescriptor(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final getUnselectedMarkerIcon$12b7fc29(Lcom/getkeepsafe/relinker/ReLinker;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/ReLinker;->getRealmObject()Lio/realm/RealmObject;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/realm/RealmAtm;

    .line 3027
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getDrawableId(Ljava/lang/String;Z)I

    move-result p1

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->markerStorage:Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;->getBitmapDescriptor(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onBeforeClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/getkeepsafe/relinker/ReLinker;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->onBeforeClusterItemRendered$7fa12f39(Lcom/getkeepsafe/relinker/ReLinker;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    return-void
.end method

.method protected final onBeforeClusterItemRendered$7fa12f39(Lcom/getkeepsafe/relinker/ReLinker;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ")V"
        }
    .end annotation

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/google/maps/android/clustering/ClusterItem;

    invoke-super {p0, v0, p2}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;->onBeforeClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    if-nez p2, :cond_0

    .line 24
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/ReLinker;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/ReLinker;->getRealmObject()Lio/realm/RealmObject;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/realm/RealmAtm;

    .line 1027
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 26
    invoke-static {v0, p1, v1, v2, v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getDrawableId$default(Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result p1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->markerStorage:Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/MarkerIconsStorage;->getBitmapDescriptor(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    return-void
.end method

.method public final onCameraMove(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1

    const-string v0, "mapClusterViewportBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->clusterManager:Lio/realm/AtmRealmClusterManager;

    invoke-virtual {v0, p1}, Lio/realm/AtmRealmClusterManager;->filter(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-void
.end method

.method public final bridge synthetic onClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/getkeepsafe/relinker/ReLinker;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->onClusterItemRendered$6700e7d5(Lcom/getkeepsafe/relinker/ReLinker;Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method protected final onClusterItemRendered$6700e7d5(Lcom/getkeepsafe/relinker/ReLinker;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;",
            "Lcom/google/android/gms/maps/model/Marker;",
            ")V"
        }
    .end annotation

    const-string v0, "marker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/google/maps/android/clustering/ClusterItem;

    invoke-super {p0, v0, p2}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;->onClusterItemRendered(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/android/gms/maps/model/Marker;)V

    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    return-void
.end method
