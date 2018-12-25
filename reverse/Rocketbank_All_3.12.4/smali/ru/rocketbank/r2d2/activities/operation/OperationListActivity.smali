.class public final Lru/rocketbank/r2d2/activities/operation/OperationListActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "OperationListActivity.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;,
        Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;

.field private static final OPEATION:Ljava/lang/String; = "OPEATION"


# instance fields
.field private final STATUS_NONE:I

.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private isListLoadingInProgress:Z

.field private operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

.field public operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->Companion:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const-string v0, "OperationListActivity"

    .line 42
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    if-nez p0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getOPEATION$cp()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->OPEATION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOperationFormatter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez p0, :cond_0

    const-string v0, "operationFormatter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$isListLoadingInProgress$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->isListLoadingInProgress:Z

    return p0
.end method

.method public static final synthetic access$setAdapter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    return-void
.end method

.method public static final synthetic access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->isListLoadingInProgress:Z

    return-void
.end method

.method public static final synthetic access$setOperationFormatter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method private final loadNext()V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->isListLoadingInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_1

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadNextPage()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private final loadNextPageIfNeeded()V
    .locals 6

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "operationView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 240
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 241
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 242
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    if-nez v2, :cond_2

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->getItemCount()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v0

    int-to-double v2, v2

    int-to-double v0, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v4

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    .line 247
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->isListLoadingInProgress:Z

    if-nez v0, :cond_3

    .line 248
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->requestNextPage()V

    :cond_3
    return-void
.end method

.method private final requestNextPage()V
    .locals 2

    .line 255
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->isLastLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->TAG:Ljava/lang/String;

    const-string v1, "load next page"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->loadNext()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getOperationView()Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "operationView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0047

    .line 58
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->setContentView(I)V

    .line 61
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    const v0, 0x7f090292

    .line 63
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    .line 64
    new-instance v0, Lru/rocketbank/core/utils/MoneyFormatter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    const-string v3, "authorization"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 65
    new-instance p1, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-direct {p1, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 67
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/FeedManager;->getOperationLoader()Lru/rocketbank/core/manager/loader/OperationSimpleLoader;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/manager/loader/OperationLoader;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    .line 69
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_1

    const-string v1, "operationView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 72
    new-instance p1, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v0, :cond_2

    const-string v1, "cropCircleTransformation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layoutInflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Ljp/wasabeef/glide/transformations/CropCircleTransformation;Landroid/view/LayoutInflater;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    .line 73
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_3

    const-string v0, "operationView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    if-nez v0, :cond_4

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_5

    const-string v0, "operationView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    move-object v0, p0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    return-void
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method protected final onPause()V
    .locals 0

    .line 107
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    const v0, 0x7f11033e

    .line 81
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    .line 84
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 85
    new-instance v1, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$onResume$1;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->loadNextPageIfNeeded()V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public final setOperationView(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    return-void
.end method
