.class public abstract Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;
.source "AbstractMapFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;",
        "PR:",
        "Lru/rocketbank/r2d2/fragments/delivery/MapPresenter<",
        "TV;>;>",
        "Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment<",
        "TPR;>;",
        "Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractMapFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractMapFragment.kt\nru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,103:1\n624#2:104\n713#2,2:105\n1519#2,2:107\n49#3,2:109\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractMapFragment.kt\nru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment\n*L\n75#1:104\n75#1,2:105\n76#1,2:107\n78#1,2:109\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$Companion;

.field private static final PERMISSION_REQUEST:I = 0x162e


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected mapView:Lcom/google/android/gms/maps/MapView;

.field private markerDownX:I

.field private markerDownY:I

.field protected markerImg:Landroid/widget/ImageView;

.field protected pivotMarkerView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public checkPermissions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-gt v0, v3, :cond_0

    .line 1552
    sget-object v0, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    .line 2069
    invoke-static {}, Lkotlin/ranges/IntRange;->access$getEMPTY$cp()Lkotlin/ranges/IntRange;

    move-result-object v0

    goto :goto_0

    .line 1553
    :cond_0
    new-instance v3, Lkotlin/ranges/IntRange;

    sub-int/2addr v0, v1

    invoke-direct {v3, v2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    move-object v0, v3

    .line 74
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v6, Landroid/content/Context;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_4
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 107
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 76
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 77
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 78
    check-cast p1, Ljava/util/Collection;

    .line 110
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p1, [Ljava/lang/String;

    .line 78
    sget v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->PERMISSION_REQUEST:I

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method protected final getMapView()Lcom/google/android/gms/maps/MapView;
    .locals 2

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_0

    const-string v1, "mapView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getMarkerDownX()I
    .locals 1

    .line 23
    iget v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerDownX:I

    return v0
.end method

.method protected final getMarkerDownY()I
    .locals 1

    .line 24
    iget v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerDownY:I

    return v0
.end method

.method protected final getMarkerImg()Landroid/widget/ImageView;
    .locals 2

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerImg:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "markerImg"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getPivotMarkerView()Landroid/view/View;
    .locals 2

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->pivotMarkerView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "pivotMarkerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected initMarkerCoordinates()V
    .locals 6

    const/4 v0, 0x2

    .line 66
    new-array v1, v0, [I

    .line 67
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->pivotMarkerView:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v3, "pivotMarkerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.delivery.DeliveryActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v2, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 69
    :goto_0
    aget v3, v1, v3

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->pivotMarkerView:Landroid/view/View;

    if-nez v4, :cond_3

    const-string v5, "pivotMarkerView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerDownX:I

    const/4 v0, 0x1

    .line 70
    aget v0, v1, v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->pivotMarkerView:Landroid/view/View;

    if-nez v1, :cond_4

    const-string v3, "pivotMarkerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerDownY:I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 49
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onDestroyView()V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_0

    const-string v1, "mapView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 44
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onLowMemory()V

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_0

    const-string v1, "mapView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 33
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onPause()V

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_0

    const-string v1, "mapView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string p1, "permissions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 84
    array-length v0, p3

    move v1, p1

    move v2, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p3, v1

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    move v2, p2

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onPermissionsGranted()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 28
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onResume()V

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_0

    const-string v1, "mapView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 39
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onStart()V

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onStart(Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->pivotMarkerView:Landroid/view/View;

    if-nez p2, :cond_0

    const-string v0, "pivotMarkerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    const-string v0, "viewTreeObserver"

    .line 55
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;Landroid/view/View;)V

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method protected final setMapView(Lcom/google/android/gms/maps/MapView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    return-void
.end method

.method protected final setMarkerDownX(I)V
    .locals 0

    .line 23
    iput p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerDownX:I

    return-void
.end method

.method protected final setMarkerDownY(I)V
    .locals 0

    .line 24
    iput p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerDownY:I

    return-void
.end method

.method protected final setMarkerImg(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->markerImg:Landroid/widget/ImageView;

    return-void
.end method

.method protected final setPivotMarkerView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->pivotMarkerView:Landroid/view/View;

    return-void
.end method

.method public showToast(I)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
