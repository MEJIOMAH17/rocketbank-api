.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;
.source "DeliveryScheduledFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment<",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryScheduledFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryScheduledFragment.kt\nru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment\n*L\n1#1,81:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;

.field private static final KEY_TOOLBAR_HEIGHT:Ljava/lang/String; = "KEY_TOOLBAR_HEIGHT"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

.field private userPic:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;-><init>()V

    .line 24
    new-instance v0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    return-void
.end method

.method public static final synthetic access$getKEY_TOOLBAR_HEIGHT$cp()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->KEY_TOOLBAR_HEIGHT:Ljava/lang/String;

    return-object v0
.end method

.method public static final getKEY_TOOLBAR_HEIGHT()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->KEY_TOOLBAR_HEIGHT:Ljava/lang/String;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;I)Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;->newInstance(Ljava/lang/String;I)Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->createPresenter()Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;
    .locals 2

    .line 32
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "724f4986-9046-4e77-8e74-780313009ba8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"724f498\u2026-4e77-8e74-780313009ba8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;

    return-object v0
.end method

.method public final getTitleResID()I
    .locals 1

    const v0, 0x7f110138

    return v0
.end method

.method protected final initMarkerCoordinates()V
    .locals 4

    const/4 v0, 0x2

    .line 51
    new-array v1, v0, [I

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getPivotMarkerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->KEY_TOOLBAR_HEIGHT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 54
    aget v1, v1, v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getMarkerImg()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/MapView;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->showUser(I)V

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;

    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledPresenter;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 38
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    move-result-object p1

    const-string p2, "FragmentDeliverySchedule\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;)V

    .line 41
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->markerImg:Landroid/widget/ImageView;

    const-string p2, "binding.markerImg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->setMarkerImg(Landroid/widget/ImageView;)V

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->userPic:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string p2, "binding.userPic"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->userPic:Landroid/widget/ImageView;

    .line 43
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->mapView:Lcom/google/android/gms/maps/MapView;

    const-string p2, "binding.mapView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->setMapView(Lcom/google/android/gms/maps/MapView;)V

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    if-nez p1, :cond_4

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->contentLayout:Landroid/widget/LinearLayout;

    const-string p2, "binding.contentLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->setPivotMarkerView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    if-nez p1, :cond_5

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final showDeliveryInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryScheduledData;->getText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 63
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const p2, 0x7f060095

    .line 64
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->userPic:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const-string v0, "userPic"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_1
    return-void
.end method
