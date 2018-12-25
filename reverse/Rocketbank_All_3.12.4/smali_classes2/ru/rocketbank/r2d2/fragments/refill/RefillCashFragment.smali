.class public final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;
.super Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;
.source "RefillCashFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/MapActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRefillCashFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefillCashFragment.kt\nru/rocketbank/r2d2/fragments/refill/RefillCashFragment\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,340:1\n49#2,2:341\n*E\n*S KotlinDebug\n*F\n+ 1 RefillCashFragment.kt\nru/rocketbank/r2d2/fragments/refill/RefillCashFragment\n*L\n48#1,2:341\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "CashFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private behavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

.field private currentHeight:I

.field private fabParams:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

.field private mapData:Lru/rocketbank/r2d2/data/binding/MapData;

.field private nowShowing:Z

.field private selectedMarker:Lcom/google/android/gms/maps/model/Marker;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBehavior$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "behavior"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentHeight$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->currentHeight:I

    return p0
.end method

.method public static final synthetic access$getFabParams$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->fabParams:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez p0, :cond_0

    const-string v0, "fabParams"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMapData$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Lru/rocketbank/r2d2/data/binding/MapData;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez p0, :cond_0

    const-string v0, "mapData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setBehavior$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-void
.end method

.method public static final synthetic access$setBinding$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    return-void
.end method

.method public static final synthetic access$setCurrentHeight$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;I)V
    .locals 0

    .line 27
    iput p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->currentHeight:I

    return-void
.end method

.method public static final synthetic access$setFabParams$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->fabParams:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    return-void
.end method

.method public static final synthetic access$setMapData$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;Lru/rocketbank/r2d2/data/binding/MapData;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    return-void
.end method

.method public static final synthetic access$updateMap(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->updateMap()V

    return-void
.end method

.method private final deselectMarker()V
    .locals 3

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->selectedMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->selectedMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getkeepsafe/relinker/ReLinker;

    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->renderer:Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;

    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->getUnselectedMarkerIcon$12b7fc29(Lcom/getkeepsafe/relinker/ReLinker;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method private final hideDescriptionWindowHeader()V
    .locals 2

    .line 282
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "behavior"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method private final showDescription(Lru/rocketbank/core/realm/RealmAtm;)V
    .locals 5

    .line 269
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->nowShowing:Z

    const/4 v1, 0x1

    .line 270
    iput-boolean v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->nowShowing:Z

    .line 271
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->showDescriptionWindowHeader(Z)V

    .line 273
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez v0, :cond_0

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getInstructionType()Landroid/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    .line 1027
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$type()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->instructionType(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez v0, :cond_1

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getLimits()Landroid/databinding/ObservableField;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    .line 2027
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$type()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v4, "context!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->limits(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez v0, :cond_3

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getAtmsName()Landroid/databinding/ObservableField;

    move-result-object v0

    .line 3026
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez v0, :cond_4

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getAtmsAddress()Landroid/databinding/ObservableField;

    move-result-object v0

    .line 4024
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez v0, :cond_5

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getAtmsWorkingTime()Landroid/databinding/ObservableField;

    move-result-object v0

    .line 4025
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$hours()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final showDescriptionWindowHeader(Z)V
    .locals 3

    .line 286
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->header:Landroid/widget/LinearLayout;

    .line 288
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    const-string v1, "view"

    .line 290
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    const-string v2, "viewTreeObserver"

    .line 291
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    new-instance v2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;

    invoke-direct {v2, p0, v0, p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;Landroid/widget/LinearLayout;Z)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getDefaultLatitude()D
    .locals 2

    const-wide v0, 0x404be00000000000L    # 55.75

    return-wide v0
.end method

.method public final getDefaultLongitude()D
    .locals 2

    const-wide v0, 0x4042cef0068db8bbL    # 37.6167

    return-wide v0
.end method

.method protected final getLatitudeColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "lat"

    return-object v0
.end method

.method protected final getLongitudeColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "lon"

    return-object v0
.end method

.method protected final getTitleColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method

.method protected final getTypes()[Ljava/lang/String;
    .locals 6

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 33
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->isMkbWorks()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 34
    :goto_0
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lru/rocketbank/core/model/UserModel;->getActiveAccount()Lru/rocketbank/core/model/facade/Account;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lru/rocketbank/core/model/TariffModel;->getHaveCommissionInMkb()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 36
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez v3, :cond_3

    const-string v5, "binding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtmsSwitcher:Landroid/support/v7/widget/SwitchCompat;

    const-string v5, "binding.commissionAtmsSwitcher"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 37
    sget-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getMKB_WITH_COMMISSION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getMKB_ATM_WITH_COMMISSION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_4
    sget-object v3, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getOPENBANK_ATM()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v3, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getOPENBANK_OFFICE()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 43
    sget-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getMKB_WITH_COMMISSION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getMKB_ATM_WITH_COMMISSION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_5
    :goto_3
    check-cast v0, Ljava/util/Collection;

    .line 342
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getUserModel()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public final navigateMe(Landroid/view/View;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->selectedMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "google.navigation:q="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&mode=d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.apps.maps"

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public final onClusterItemClicked$36ed8276(Lcom/getkeepsafe/relinker/ReLinker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onClusterItemClicked$36ed8276(Lcom/getkeepsafe/relinker/ReLinker;)V

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/ReLinker;->getRealmObject()Lio/realm/RealmObject;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/realm/RealmAtm;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 250
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->showDescription(Lru/rocketbank/core/realm/RealmAtm;)V

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance p3, Lru/rocketbank/r2d2/data/binding/MapData;

    invoke-direct {p3}, Lru/rocketbank/r2d2/data/binding/MapData;-><init>()V

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    const/4 p3, 0x0

    .line 140
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p1

    const-string p2, "AtmsMapFragmentBinding.i\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    .line 141
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez p2, :cond_1

    const-string v0, "mapData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->setData(Lru/rocketbank/r2d2/data/binding/MapData;)V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/MapActionListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->setZoom(Lru/rocketbank/r2d2/data/binding/MapActionListener;)V

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtmsSwitcher:Landroid/support/v7/widget/SwitchCompat;

    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez p1, :cond_4

    const-string p2, "mapData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/MapData;->getShowMyLocation()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->lastLocation:Landroid/location/Location;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    move p3, v0

    :cond_5
    invoke-virtual {p1, p3}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 146
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_6

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->bottomSheetHolder:Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    const-string p2, "BottomSheetBehavior.from\u2026inding.bottomSheetHolder)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 147
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez p1, :cond_7

    const-string p2, "behavior"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez p1, :cond_8

    const-string p2, "behavior"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_9

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const-string p2, "binding.fab"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.design.widget.CoordinatorLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->fabParams:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_b

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x0

    .line 154
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 155
    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$2;-><init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 170
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->fabParams:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez p1, :cond_c

    const-string p2, "fabParams"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    const/16 p2, 0x51

    iput p2, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez p1, :cond_d

    const-string p2, "behavior"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;-><init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V

    check-cast p2, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 233
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->binding:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    if-nez p1, :cond_e

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onLocation(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->moveOnMyLocation()V

    return-void
.end method

.method protected final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez v0, :cond_0

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/MapData;->getShowMyLocation()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 257
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->deselectMarker()V

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->nowShowing:Z

    .line 260
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->hideDescriptionWindowHeader()V

    return-void
.end method

.method public final onMarkerSelected(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onMarkerSelected(Lcom/google/android/gms/maps/model/Marker;)V

    .line 84
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->deselectMarker()V

    .line 86
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->selectedMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getkeepsafe/relinker/ReLinker;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->renderer:Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;->getSelectedMarkerIcon$12b7fc29(Lcom/getkeepsafe/relinker/ReLinker;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    :cond_1
    return-void
.end method

.method public final onScaleDown(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomOut()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onScaleUp(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 118
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 121
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getActiveAccount()Lru/rocketbank/core/model/facade/Account;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->isMkbWorks()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez p1, :cond_0

    const-string v1, "mapData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/MapData;->getCommissionAtmsSwitcherVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/TariffModel;->getHaveCommissionInMkb()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->mapData:Lru/rocketbank/r2d2/data/binding/MapData;

    if-nez p1, :cond_3

    const-string v0, "mapData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/MapData;->getCommissionAtmsSwitcherVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 128
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->updateMap()V

    return-void
.end method

.method public final runAnimation(II)V
    .locals 2

    const/4 v0, 0x2

    .line 325
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 327
    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimation$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimation$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V

    check-cast p2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final runAnimationButton(II)V
    .locals 2

    const/4 v0, 0x2

    .line 313
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 315
    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimationButton$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$runAnimationButton$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V

    check-cast p2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 321
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method
