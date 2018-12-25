.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;
.source "DeliveryMapFragment.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lru/rocketbank/core/data/binding/ButtonAddressListener;
.implements Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;,
        Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;,
        Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment<",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;",
        ">;",
        "Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;",
        "Lru/rocketbank/core/data/binding/ButtonAddressListener;",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;

.field private static final INPUT_TIMEOUT:J = 0x3e8L

.field private static final LOCATION_REQUEST:I = 0x2442


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

.field private addressTextForRequest:Ljava/lang/String;

.field private addressView:Lru/rocketbank/core/widgets/RocketAddressView;

.field private final addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

.field private recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private userImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;-><init>()V

    .line 55
    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    .line 56
    new-instance v0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    return-void
.end method

.method public static final synthetic access$getAddressTextForRequest$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressTextForRequest:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "addressTextForRequest"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getAddressView$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Lru/rocketbank/core/widgets/RocketAddressView;
    .locals 1

    .line 39
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez p0, :cond_0

    const-string v0, "addressView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getINPUT_TIMEOUT$cp()J
    .locals 2

    .line 39
    sget-wide v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->INPUT_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getLOCATION_REQUEST$cp()I
    .locals 1

    .line 39
    sget v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->LOCATION_REQUEST:I

    return v0
.end method

.method public static final synthetic access$getPresenter$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    return-object p0
.end method

.method public static final synthetic access$setAddressTextForRequest$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressTextForRequest:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setAddressView$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;Lru/rocketbank/core/widgets/RocketAddressView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->createPresenter()Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;
    .locals 2

    .line 97
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "2c82d5f4-c5be-44d3-be61-476b0623f2d1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"2c82d5f\u2026-44d3-be61-476b0623f2d1\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    return-object v0
.end method

.method public final getTitleResID()I
    .locals 1

    const v0, 0x7f110384

    return v0
.end method

.method public final initMap()V
    .locals 3

    .line 182
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 183
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->checkLocationEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 210
    sget p2, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->LOCATION_REQUEST:I

    if-ne p1, p2, :cond_1

    .line 211
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p3, "context!!"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->checkLocationEnabled(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final onBackToAddressClicked()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onBackToAddressClicked()V

    return-void
.end method

.method public final onCameraIdle()V
    .locals 3

    .line 238
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMarkerDownX()I

    move-result v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMarkerDownY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onCameraIdle(II)V

    .line 239
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->loadDelivery(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    move-result-object p1

    const-string p2, "FragmentDeliveryMapBindi\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;)V

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->setListener(Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;)V

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    const-string p2, "binding.markerImg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->setMarkerImg(Landroid/widget/ImageView;)V

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->mapView:Lcom/google/android/gms/maps/MapView;

    const-string p2, "binding.mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->setMapView(Lcom/google/android/gms/maps/MapView;)V

    .line 110
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_4

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    const-string p2, "binding.addressView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_5

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->markerImg:Landroid/widget/ImageView;

    const-string p2, "binding.markerImg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->userImageView:Landroid/widget/ImageView;

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_6

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->addressesList:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string p2, "binding.addressesList"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    .line 113
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMarkerImg()Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->setPivotMarkerView(Landroid/view/View;)V

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_7

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance p1, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    invoke-direct {p1, p2}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_8

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    if-nez p2, :cond_9

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 126
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    if-nez p1, :cond_a

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 167
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onDestroyView()V

    .line 168
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onDestroy()V

    .line 169
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onLocationChecked()V
    .locals 2

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;->getMyLocationHidden()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final onLocationNotChecked()V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryMapData;->getMyLocationHidden()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 193
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110285

    .line 194
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110472

    .line 195
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 197
    new-instance v3, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$1;

    invoke-direct {v3, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 200
    new-instance v3, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$2;

    invoke-direct {v3, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$2;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 v2, -0x1

    .line 205
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f060208

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, -0x2

    .line 206
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060095

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final onNextClicked(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAddressView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->checkAddress(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 247
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v1, :cond_2

    const-string v2, "addressView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketAddressView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onCommentClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onPause()V

    .line 163
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onPause()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 178
    :goto_0
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 148
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onStart()V

    .line 149
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onStart(Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;)V

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/core/data/binding/ButtonAddressListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAddressView;->setListener(Lru/rocketbank/core/data/binding/ButtonAddressListener;)V

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_1

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 155
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onStop()V

    .line 156
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onStop()V

    .line 157
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAddressView;->setListener(Lru/rocketbank/core/data/binding/ButtonAddressListener;)V

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_1

    const-string v2, "recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 1

    const-string v0, "scrollState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez p1, :cond_0

    const-string p2, "addressView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketAddressView;->addTextWatcher(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final selectDate()V
    .locals 1

    const/4 v0, 0x2

    .line 270
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->nextStep(I)V

    return-void
.end method

.method public final setAddressStatus()V
    .locals 2

    .line 229
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressMode()V

    .line 230
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_1

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAddressView;->addTextWatcher(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setCommentStatus()V
    .locals 3

    .line 215
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAddressView;->setCommentMode()V

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_1

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAddressView;->removeTextWatcher(Landroid/text/TextWatcher;)V

    .line 217
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    if-nez v0, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->swap(Ljava/util/ArrayList;)V

    .line 218
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v1, :cond_5

    const-string v2, "addressView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketAddressView;->getEditText()Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public final showAddressError()V
    .locals 2

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressError()V

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    if-nez v0, :cond_1

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->swap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final showSelectedAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 265
    invoke-static {p0, p1, v1, v2, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView$DefaultImpls;->updateAddress$default(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    if-nez p1, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->swap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final updateAddress(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_0

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAddressView;->removeTextWatcher(Landroid/text/TextWatcher;)V

    .line 257
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez v0, :cond_1

    const-string v1, "addressView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketAddressView;->setText(Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez p1, :cond_2

    const-string v0, "addressView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressWatcher:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketAddressView;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 259
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez p1, :cond_3

    const-string v0, "addressView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketAddressView;->isError()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 260
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->addressView:Lru/rocketbank/core/widgets/RocketAddressView;

    if-nez p1, :cond_4

    const-string p2, "addressView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketAddressView;->reset()V

    :cond_5
    return-void
.end method

.method public final updateAddressesList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addresses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->adapter:Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/adapters/delivery/AddressesAdapter;->swap(Ljava/util/ArrayList;)V

    return-void
.end method
