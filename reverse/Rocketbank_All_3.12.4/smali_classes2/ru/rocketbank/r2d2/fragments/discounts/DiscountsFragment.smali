.class public final Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "DiscountsFragment.kt"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lru/rocketbank/r2d2/ActionBarTitleInstaller;
.implements Lru/rocketbank/r2d2/IHostFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "DiscountsFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

.field private collectionSubscription:Lrx/Subscription;

.field private discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

.field public discountCache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->Companion:Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDiscountAdapter$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;
    .locals 1

    .line 25
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    if-nez p0, :cond_0

    const-string v0, "discountAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSwipeRefresh$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .line 25
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez p0, :cond_0

    const-string v0, "swipeRefresh"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$setDiscountAdapter$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    return-void
.end method

.method public static final synthetic access$setSwipeRefresh$p(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method

.method private final load(Z)V
    .locals 3

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountCache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    if-nez v0, :cond_0

    const-string v1, "discountCache"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    if-nez v0, :cond_1

    const-string v1, "discountAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountCache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    if-nez v1, :cond_2

    const-string v2, "discountCache"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;->getLastCollection()Lru/rocketbank/core/model/discounts/DiscountsCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->swap(Lru/rocketbank/core/model/discounts/DiscountsCollection;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 116
    :cond_4
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_5

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->getDiscounts()Lrx/Observable;

    move-result-object v0

    .line 117
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 118
    new-instance v1, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment$load$1;-><init>(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;Z)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->collectionSubscription:Lrx/Subscription;

    return-void
.end method

.method static bridge synthetic load$default(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->load(Z)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final canBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final canShowMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getActionBarTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1101bc

    .line 47
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.fragment_discounts_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDiscountCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;
    .locals 2

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountCache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    if-nez v0, :cond_0

    const-string v1, "discountCache"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 2

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final moveBack()V
    .locals 0

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 51
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    move-result-object p1

    const-string p2, "FragmentDiscountsBinding\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string p2, "binding.swipeRefresh"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 53
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez p1, :cond_1

    const-string p2, "swipeRefresh"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x7f060208

    aput v0, p2, p3

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 54
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 100
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    if-nez v0, :cond_0

    const-string v1, "discountAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;->onDestroy()V

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onEvent(Lru/rocketbank/r2d2/fragments/discounts/DiscountUpdateEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, p1, v0, v1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->load$default(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onRefresh()V
    .locals 2

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v1, "swipeRefresh"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 106
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->load(Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 66
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStart()V

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v1, "swipeRefresh"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 71
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStop()V

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->collectionSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->hideSpinner()V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_1

    const-string v1, "swipeRefresh"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDiscountCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountCache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    .line 84
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string p2, "binding.recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_1

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;->toolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 89
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 91
    new-instance p1, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    invoke-direct {p1}, Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_4

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountAdapter:Lru/rocketbank/r2d2/adapters/discounts/CachingDiscountsAdapter;

    if-nez p2, :cond_5

    const-string v0, "discountAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 94
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->discounts()V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->load$default(Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setDiscountCache(Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->discountCache:Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    return-void
.end method

.method public final setRocketAPI(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method
