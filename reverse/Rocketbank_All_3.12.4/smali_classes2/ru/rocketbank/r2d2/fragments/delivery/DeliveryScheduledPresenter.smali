.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;
.super Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;
.source "DeliveryScheduledPresenter.kt"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/delivery/MapPresenter<",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;",
        ">;",
        "Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;"
    }
.end annotation


# instance fields
.field private deltaY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6

    const-string v0, "mapa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const-string v1, "mapSettings"

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 39
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 41
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/manager/DeliveryManager;->getLat()D

    move-result-wide v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/manager/DeliveryManager;->getLng()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v1, 0x41880000    # 17.0f

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v5, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->deltaY:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const-string v2, "mapa.projection.fromScre\u2026int.x, point.y + deltaY))"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/DeliveryManager;->getSenderPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/manager/DeliveryManager;->getDeliveryText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;->showDeliveryInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onStart(Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onStart(Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;)V

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onStart(Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;)V
    .locals 0

    .line 11
    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->onStart(Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 24
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onStop()V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    return-void

    :cond_0
    return-void
.end method

.method public final showUser(I)V
    .locals 0

    .line 16
    iput p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->deltaY:I

    return-void
.end method
