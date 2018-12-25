.class public final Lru/rocketbank/r2d2/root/feed/FeedFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "FeedFragment.kt"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lru/rocketbank/r2d2/root/feed/Feed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedFragment.kt\nru/rocketbank/r2d2/root/feed/FeedFragment\n*L\n1#1,809:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;

.field public static final NEW_PASSPORT_REQUEST:I = 0x192

.field private static final OPERATION_LOADING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FeedFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private actionBarSize:I

.field private amount:D

.field private final authorization$delegate:Lkotlin/Lazy;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private currencyCode:Ljava/lang/String;

.field private fabMargin:I

.field private feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

.field private final feedManager$delegate:Lkotlin/Lazy;

.field private feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

.field private feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

.field private flexibleSpaceImageHeight:I

.field private flexibleSpaceShowFabOffset:I

.field private final handler:Landroid/os/Handler;

.field private isFullMoneyMode:Z

.field private isFullRocketMode:Z

.field private isSearchLocked:Z

.field private isToolbarAnimation:Z

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private loadNextPageRunnable:Ljava/lang/Runnable;

.field private miles:D

.field private final moneyFormatter$delegate:Lkotlin/Lazy;

.field private parallaxSize:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private refreshLimits:Ljava/lang/Runnable;

.field private searchMenuItem:Landroid/view/MenuItem;

.field private searchView:Landroid/support/v7/widget/SearchView;

.field private toolbarHeight:I

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field private vibrator:Landroid/os/Vibrator;

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "moneyFormatter"

    const-string v4, "getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "feedManager"

    const-string v4, "getFeedManager()Lru/rocketbank/core/manager/FeedManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "authorization"

    const-string v4, "getAuthorization()Lru/rocketbank/core/user/Authorization;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->Companion:Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->currencyCode:Ljava/lang/String;

    .line 87
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$moneyFormatter$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedFragment$moneyFormatter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->moneyFormatter$delegate:Lkotlin/Lazy;

    .line 103
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$feedManager$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedFragment$feedManager$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedManager$delegate:Lkotlin/Lazy;

    .line 107
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$authorization$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedFragment$authorization$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->authorization$delegate:Lkotlin/Lazy;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    .line 338
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->refreshLimits:Ljava/lang/Runnable;

    .line 745
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$loadNextPageRunnable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$loadNextPageRunnable$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->loadNextPageRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 1

    .line 49
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getFeedPresenter$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/r2d2/root/feed/FeedPresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    return-object p0
.end method

.method public static final synthetic access$getOPERATION_LOADING$cp()I
    .locals 1

    .line 49
    sget v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->OPERATION_LOADING:I

    return v0
.end method

.method public static final synthetic access$getProgressDialog$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$getSearchMenuItem$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/view/MenuItem;
    .locals 1

    .line 49
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchMenuItem:Landroid/view/MenuItem;

    if-nez p0, :cond_0

    const-string v0, "searchMenuItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/support/v7/widget/SearchView;
    .locals 0

    .line 49
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchView:Landroid/support/v7/widget/SearchView;

    return-object p0
.end method

.method public static final synthetic access$getUserModel$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 49
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method public static final synthetic access$isToolbarAnimation$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isToolbarAnimation:Z

    return p0
.end method

.method public static final synthetic access$setBinding$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    return-void
.end method

.method public static final synthetic access$setFeedPresenter$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setSearchMenuItem$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/view/MenuItem;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchView:Landroid/support/v7/widget/SearchView;

    return-void
.end method

.method public static final synthetic access$setToolbarAnimation$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isToolbarAnimation:Z

    return-void
.end method

.method public static final synthetic access$setUserModel$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public static final synthetic access$showSearch(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showSearch()V

    return-void
.end method

.method public static final synthetic access$showUserDetails(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showUserDetails()V

    return-void
.end method

.method private final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->authorization$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method private final getFeedManager()Lru/rocketbank/core/manager/FeedManager;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/FeedManager;

    return-object v0
.end method

.method private final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->moneyFormatter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method public static final getOPERATION_LOADING()I
    .locals 1

    sget v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->OPERATION_LOADING:I

    return v0
.end method

.method private final initializeHeaderView()V
    .locals 5

    .line 235
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->header:Landroid/widget/FrameLayout;

    .line 238
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v2, :cond_2

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->coverImage:Landroid/widget/ImageView;

    .line 240
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v3, :cond_3

    const-string v4, "feedModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getAppBarHeight()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->actionBarSize:I

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_4

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v3, :cond_5

    const-string v4, "feedModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getAppBarHeight()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 243
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_6

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 245
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    new-instance v4, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;

    invoke-direct {v4, p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/support/v7/widget/Toolbar;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "headerView"

    .line 257
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 258
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v3, :cond_7

    const-string v4, "feedModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getAppBarHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v1, :cond_8

    const-string v3, "feedModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/feed/FeedModel;->setHeaderHeight(I)V

    const-string v0, "coverImage"

    .line 262
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v1, :cond_9

    const-string v3, "feedModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getHeaderHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_a

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->cardOverlay:Landroid/view/View;

    .line 267
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_b

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->userPic:Landroid/widget/ImageView;

    const-string v2, "cardOverlay"

    .line 269
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v3, :cond_c

    const-string v4, "feedModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getHeaderHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 273
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_d

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_e

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final loadNextPageIfNeeded()V
    .locals 6

    .line 732
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string v1, "binding.feedView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 733
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 734
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 735
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getItemCount()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v0

    int-to-double v2, v2

    int-to-double v0, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v4

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    .line 741
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->loadNextPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private final moveFloatingButton(I)V
    .locals 7

    .line 748
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 749
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v2, "binding.floatingActionButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 750
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v2, :cond_2

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v3, "binding.floatingActionButton"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 751
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v3, :cond_3

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v4, "binding.floatingActionButton"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getPaddingTop()I

    move-result v3

    const-string v4, "floatingActionButton"

    .line 752
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getPaddingRight()I

    move-result v4

    .line 754
    iget-object v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v5, :cond_4

    const-string v6, "feedModel"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getHeaderHeight()I

    move-result v5

    .line 757
    div-int/lit8 v1, v1, 0x2

    sub-int v6, v5, v1

    sub-int/2addr v6, v3

    sub-int/2addr v5, p1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    int-to-float p1, v5

    int-to-float v1, v6

    const/4 v3, 0x0

    .line 760
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 761
    iget v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->windowWidth:I

    iget v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->fabMargin:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 763
    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 766
    iget v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->flexibleSpaceShowFabOffset:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5

    .line 767
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void

    .line 769
    :cond_5
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    return-void
.end method

.method private final openRefill(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 5

    .line 559
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v1, "binding.floatingActionButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 560
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v2, "binding.floatingActionButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 561
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v2, :cond_2

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v3, "binding.floatingActionButton"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getPaddingRight()I

    move-result v2

    .line 563
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v3, :cond_3

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v4, "binding.floatingActionButton"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getTranslationY()F

    move-result v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_4

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const-string v4, "binding.floatingActionButton"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v0, :cond_5

    const-string v4, "feedModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getAppBarHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 564
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->windowWidth:I

    iget v4, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->fabMargin:I

    sub-int/2addr v0, v4

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 566
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 568
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-static {v1, v2, v0, v3}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->newInstance(Ljava/lang/String;ZFF)Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    move-result-object v0

    .line 573
    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    :cond_7
    return-void
.end method

.method private final releaseSearchLock()V
    .locals 3

    .line 631
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.realToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v2, "binding.realToolbar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 634
    :cond_2
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isToolbarAnimation:Z

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 638
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->setRegularMode()V

    :cond_5
    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    return-void
.end method

.method private final setBalance(DLjava/lang/String;D)V
    .locals 0

    .line 518
    iput-wide p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->amount:D

    .line 519
    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->currencyCode:Ljava/lang/String;

    .line 520
    iput-wide p4, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->miles:D

    return-void
.end method

.method private final setInterfaceActions()V
    .locals 2

    .line 335
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupToolbar()V
    .locals 3

    .line 407
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setupToolbarSizes()V

    .line 409
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    .line 410
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    new-instance v2, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/support/v7/widget/Toolbar;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final setupToolbarSizes()V
    .locals 4

    .line 435
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 436
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 438
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 439
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v1, Landroid/view/WindowManager;

    .line 440
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 441
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getStatusBarHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->toolbarHeight:I

    .line 443
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    if-nez v0, :cond_5

    .line 444
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.realToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->toolbarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    :cond_5
    return-void
.end method

.method private final showAll()V
    .locals 2

    .line 601
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private final showAndLockSearch()V
    .locals 3

    .line 644
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v1, "showAndLockSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    .line 648
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isToolbarAnimation:Z

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 654
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_2

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.realToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_3

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 676
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->setSearchMode()V

    return-void

    :cond_5
    return-void
.end method

.method private final showMoneyAmount(DLjava/lang/String;D)V
    .locals 3

    .line 524
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "binding.toolbarTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isFullMoneyMode:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 529
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p2, :cond_2

    const-string p3, "binding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const-string p3, "binding.money"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "binding.rocketMoney"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    sget-object p3, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 5105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object p3

    .line 530
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isFullRocketMode:Z

    invoke-virtual {p2, p4, p5, p3, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showSearch()V
    .locals 5

    .line 426
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showAndLockSearch()V

    .line 427
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/4 v1, 0x0

    .line 4283
    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4285
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4286
    div-int v2, v1, v2

    .line 4305
    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4307
    instance-of v4, v3, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_1

    .line 4308
    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 4310
    :cond_1
    invoke-virtual {v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->scrollToPosition(I)V

    .line 428
    :cond_2
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeBottom()V

    .line 429
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->clear()V

    .line 430
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 431
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_6

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    return-void
.end method

.method private final showUserDetails()V
    .locals 11

    .line 448
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getBalance()D

    move-result-wide v7

    .line 453
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getMiles()F

    move-result v1

    if-eqz v0, :cond_2

    float-to-double v9, v1

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v0

    move-wide v5, v9

    .line 457
    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setBalance(DLjava/lang/String;D)V

    .line 458
    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showMoneyAmount(DLjava/lang/String;D)V

    :cond_2
    return-void
.end method

.method private final toggleMoneyMode()V
    .locals 7

    .line 223
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isFullMoneyMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isFullMoneyMode:Z

    .line 225
    iget-wide v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->amount:D

    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->currencyCode:Ljava/lang/String;

    iget-wide v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->miles:D

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showMoneyAmount(DLjava/lang/String;D)V

    return-void
.end method

.method private final toggleRocketMode()V
    .locals 7

    .line 229
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isFullRocketMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isFullRocketMode:Z

    .line 231
    iget-wide v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->amount:D

    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->currencyCode:Ljava/lang/String;

    iget-wide v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->miles:D

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showMoneyAmount(DLjava/lang/String;D)V

    return-void
.end method

.method private final updateHeaderImages()V
    .locals 9

    .line 282
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->userPic:Landroid/widget/ImageView;

    .line 284
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getUserpicUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070194

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 287
    move-object v5, p0

    check-cast v5, Landroid/support/v4/app/Fragment;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 288
    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 289
    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v3, [Lcom/bumptech/glide/load/Transformation;

    .line 292
    iget-object v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v5, :cond_2

    const-string v6, "cropCircleTransformation"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v5, Lcom/bumptech/glide/load/Transformation;

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    :cond_3
    const-string v1, "male"

    .line 295
    iget-object v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f08012f

    goto :goto_0

    :cond_5
    const v1, 0x7f080130

    .line 301
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 302
    move-object v5, p0

    check-cast v5, Landroid/support/v4/app/Fragment;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 304
    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 305
    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v2, v3, [Lcom/bumptech/glide/load/Transformation;

    .line 307
    iget-object v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v5, :cond_6

    const-string v6, "cropCircleTransformation"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    check-cast v5, Lcom/bumptech/glide/load/Transformation;

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 311
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_7

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->coverImage:Landroid/widget/ImageView;

    .line 312
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getCover()Lru/rocketbank/core/model/CoverModel;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, -0x1000000

    const/16 v6, 0x5f

    const/4 v7, 0x2

    if-eqz v2, :cond_b

    .line 314
    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    .line 316
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    new-array v2, v7, [Lcom/bumptech/glide/load/Transformation;

    .line 317
    new-instance v7, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {v6, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v7, v8, v6}, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;-><init>(Landroid/content/Context;I)V

    check-cast v7, Lcom/bumptech/glide/load/Transformation;

    aput-object v7, v2, v4

    .line 318
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v6

    const-string v7, "Glide.get(activity)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    check-cast v4, Lcom/bumptech/glide/load/Transformation;

    aput-object v4, v2, v3

    .line 317
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 320
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1043
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v2}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v3, v2}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 1019
    :cond_a
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_2
    invoke-virtual {v2}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v2

    .line 320
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->error(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 321
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 323
    :cond_b
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 324
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 3043
    sget-object v8, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 4029
    invoke-virtual {v2}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v2

    .line 3043
    invoke-virtual {v8, v2}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v2

    if-eqz v2, :cond_c

    goto :goto_3

    .line 3019
    :cond_c
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_3
    invoke-virtual {v2}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v2

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    .line 326
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    new-array v2, v7, [Lcom/bumptech/glide/load/Transformation;

    .line 327
    new-instance v7, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {v6, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v7, v8, v6}, Ljp/wasabeef/glide/transformations/ColorFilterTransformation;-><init>(Landroid/content/Context;I)V

    check-cast v7, Lcom/bumptech/glide/load/Transformation;

    aput-object v7, v2, v4

    .line 328
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v6

    const-string v7, "Glide.get(activity)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    check-cast v4, Lcom/bumptech/glide/load/Transformation;

    aput-object v4, v2, v3

    .line 327
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-nez v2, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final updateToolbarPosition(I)V
    .locals 2

    .line 719
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->toolbarHeight:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 723
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.realToolbar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 724
    iget v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->toolbarHeight:I

    if-lt v1, v0, :cond_2

    int-to-float p1, v0

    .line 728
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.realToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final disableRefresh()V
    .locals 2

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 192
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 193
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    return-void
.end method

.method public final disableSearchMode()V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->hideNotFound()V

    .line 219
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->releaseSearchLock()V

    return-void
.end method

.method public final enableSearchMode()V
    .locals 0

    .line 214
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showAndLockSearch()V

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final hideNotFound()V
    .locals 2

    .line 611
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFound:Landroid/widget/FrameLayout;

    const-string v1, "binding.nothingFound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final hideProgress()V
    .locals 1

    .line 783
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x192

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    const-string p1, "OPERATION"

    .line 202
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/NewPassportOperation;

    if-eqz p1, :cond_2

    .line 204
    new-instance p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 p3, 0x13

    check-cast p1, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {p2, p3, p1}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    .line 205
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->removeOperation(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final onBackPressed()Z
    .locals 3

    .line 392
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    .line 395
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onActionViewCollapsed()V

    .line 397
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    const-string v2, "searchMenuItem"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 398
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->showRegularFeed()V

    .line 399
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    return v1

    .line 401
    :cond_3
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    if-nez v0, :cond_0

    return-void

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 549
    :sswitch_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showProfile()V

    return-void

    .line 542
    :sswitch_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showAll()V

    return-void

    .line 554
    :sswitch_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->toggleRocketMode()V

    goto :goto_0

    .line 552
    :sswitch_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->toggleMoneyMode()V

    return-void

    .line 545
    :sswitch_4
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->openRefill(Lru/rocketbank/r2d2/activities/MainActivity;)V

    return-void

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09017f -> :sswitch_4
        0x7f090265 -> :sswitch_3
        0x7f0902f6 -> :sswitch_2
        0x7f0903e0 -> :sswitch_1
        0x7f0903ff -> :sswitch_0
    .end sparse-switch
.end method

.method public final onClose()Z
    .locals 1

    .line 605
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->showRegularFeed()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance p3, Lru/rocketbank/r2d2/root/feed/FeedModel;

    invoke-direct {p3}, Lru/rocketbank/r2d2/root/feed/FeedModel;-><init>()V

    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    const/4 p3, 0x0

    .line 115
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object p1

    const-string p2, "FragmentFeedBinding.infl\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez p2, :cond_1

    const-string p3, "feedModel"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->setFeed(Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    .line 118
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->parallaxSize:I

    .line 119
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->flexibleSpaceImageHeight:I

    .line 120
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700df

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->flexibleSpaceShowFabOffset:I

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->root:Landroid/widget/FrameLayout;

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Landroid/view/WindowManager;

    .line 123
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 125
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 127
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->windowWidth:I

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_4

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->root:Landroid/widget/FrameLayout;

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 596
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->detachPresenter()V

    .line 597
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 598
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onEvent(Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;)V
    .locals 1

    const-string v0, "refreshIsNeeded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->onRefresh()V

    return-void
.end method

.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 0

    const-string p2, "appBarLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 578
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->loadNextPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v1, "Stop refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "binding.swipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 584
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 585
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_2

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 587
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->hideProgress()V

    .line 589
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->refreshLimits:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "newText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    const/4 p1, 0x0

    return p1

    .line 483
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->showAndLockSearch()V

    .line 485
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->clear()V

    .line 486
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 487
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_5

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    .line 489
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->updateSearchString(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FeedFragment"

    .line 473
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public final onRefresh()V
    .locals 1

    .line 621
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    if-nez v0, :cond_1

    .line 622
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 623
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/FeedManager;->refreshTail()V

    .line 624
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    :cond_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->onQueryTextChange(Ljava/lang/String;)Z

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 4

    const/4 p2, 0x0

    if-gez p1, :cond_0

    move p1, p2

    :cond_0
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 685
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->parallaxSize:I

    if-le p3, v0, :cond_1

    .line 686
    iget p3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->parallaxSize:I

    .line 689
    :cond_1
    iget v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->parallaxSize:I

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x43000000    # 128.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    .line 694
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v1, :cond_2

    const-string v2, "feedModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getOverlayBackground()Landroid/databinding/ObservableInt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 696
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->header:Landroid/widget/FrameLayout;

    const-string v1, "binding.header"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 698
    iget-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez p3, :cond_4

    const-string v0, "feedModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getHeaderHeight()I

    move-result p3

    sub-int/2addr p3, p1

    .line 699
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    if-eqz v0, :cond_5

    move p3, p2

    :cond_5
    if-gez p3, :cond_6

    goto :goto_0

    :cond_6
    move p2, p3

    .line 707
    :goto_0
    iget-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p3, :cond_7

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p3, p3, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->cardOverlay:Landroid/view/View;

    const-string v0, "binding.cardOverlay"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 709
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->loadNextPageIfNeeded()V

    .line 711
    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    if-nez p2, :cond_8

    .line 712
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->updateToolbarPosition(I)V

    .line 713
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->moveFloatingButton(I)V

    :cond_8
    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 361
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedFragment$onUserModel$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$onUserModel$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 367
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v1, "New user model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 372
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->refreshLimits:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    sget-object p1, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "updateHeaderImages"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->updateHeaderImages()V

    .line 377
    sget-object p1, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "notifyItemChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemChanged(I)V

    .line 380
    sget-object p1, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "showUserDetails"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$onUserModel$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$onUserModel$2;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshIfIsNeeded()V

    .line 388
    :cond_2
    sget-object p1, Lru/rocketbank/r2d2/root/feed/FeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "New user model done"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->vibrator:Landroid/os/Vibrator;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->isSearchLocked:Z

    .line 140
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez p2, :cond_0

    const-string v0, "feedModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getStatusBarHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/root/feed/FeedModel;->setAppBarHeight(I)V

    .line 142
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    const/4 p2, 0x1

    .line 144
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setHasOptionsMenu(Z)V

    .line 145
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setupToolbar()V

    .line 146
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->initializeHeaderView()V

    .line 148
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p2, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string v0, "binding.feedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-nez p2, :cond_4

    .line 149
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 150
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p2, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string v0, "binding.feedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_3

    const-string v1, "linearLayoutManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 153
    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-nez p2, :cond_7

    .line 154
    new-instance p2, Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/feed/Feed;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v3, :cond_6

    const-string v4, "feedModel"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p2, v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;-><init>(Landroid/app/Activity;Lru/rocketbank/r2d2/root/feed/Feed;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    goto :goto_0

    .line 156
    :cond_7
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz p2, :cond_9

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v0, :cond_8

    const-string v1, "feedModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->setFeedModel(Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    .line 159
    :cond_9
    :goto_0
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez p2, :cond_e

    .line 160
    new-instance p2, Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v0, :cond_a

    const-string v1, "cropCircleTransformation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    :cond_a
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 162
    :cond_b
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    if-nez v2, :cond_c

    const-string v3, "feedModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    :cond_c
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v3, :cond_d

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    :cond_d
    invoke-direct {p2, v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/r2d2/root/feed/FeedModel;Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    goto :goto_1

    .line 165
    :cond_e
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-eqz p2, :cond_10

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_f

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->setBinding(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V

    .line 168
    :cond_10
    :goto_1
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-nez p2, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->setFeedAdapter(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V

    .line 170
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p2, :cond_12

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string v0, "binding.feedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 171
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p2, :cond_13

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p2, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setHasFixedSize(Z)V

    .line 172
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_14

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    move-object p2, p0

    check-cast p2, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 173
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_15

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    sget-object p2, Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 178
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_16

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->fabMargin:I

    .line 181
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_17

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 183
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->setInterfaceActions()V

    .line 185
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->attachPresenter()V

    .line 186
    :cond_18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->disableRefresh()V

    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 495
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    const v0, 0x7f110327

    .line 496
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v3, :cond_1

    const-string v4, "binding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFound:Landroid/widget/FrameLayout;

    const-string v4, "binding.nothingFound"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 500
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 501
    move-object v4, p0

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const v5, 0x7f080074

    .line 502
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v3, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 504
    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    .line 505
    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v4, :cond_2

    const-string v5, "binding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v4, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->catView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 507
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v3, "searchFailedString"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "binding.nothingFoundText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_4

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "binding.nothingFoundText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 511
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_6

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->catView:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 512
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_7

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->catView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    if-nez p1, :cond_8

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFound:Landroid/widget/FrameLayout;

    const-string v0, "binding.nothingFound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final showProgressExecution()V
    .locals 3

    .line 791
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 793
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 794
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 795
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 796
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedFragment$showProgressExecution$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$showProgressExecution$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 797
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
