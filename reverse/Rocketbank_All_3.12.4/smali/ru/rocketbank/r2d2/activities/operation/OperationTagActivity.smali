.class public Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "OperationTagActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;,
        Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;,
        Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;,
        Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;
    }
.end annotation


# static fields
.field private static final ACTIONS:I = 0x1

.field private static final BAR:I = 0x4

.field private static final CATEGORY:I = 0x2

.field private static final FEED_IMAGE_LOADING_TAG:Ljava/lang/String; = "OperationLogo"

.field private static final HEADER:I = 0x0

.field private static INTERNAL_CASH_IN:Ljava/lang/String; = "internal_cash_in"

.field private static final MAP:I = 0x3

.field private static final MILES:I = 0x6

.field private static final MILES_COMPENSATED:I = 0x7

.field private static final OPERATION:I = 0x9

.field private static final OPERATION_EXTRA:Ljava/lang/String; = "OPERATION_EXTRA"

.field private static final OPERATION_LOADING:I = 0x8

.field private static final ROCKETRUBLE_OPERATION:I = 0xa

.field private static final STAT:I = 0x5

.field private static final STATUS_IN:I = 0x1b5

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_OUT:I = 0x170

.field private static final TAG:Ljava/lang/String; = "OperationTagActivity"

.field private static TRANSFER_CASH_IN:Ljava/lang/String; = "transfer_cash_in"


# instance fields
.field private adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

.field private amount:D

.field amountView:Landroid/widget/TextView;

.field appBarLayout:Landroid/widget/FrameLayout;

.field private barChartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

.field cardOverlay:Landroid/view/View;

.field private contextSubscription:Lrx/Subscription;

.field private currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private currentDateCalendar:Ljava/util/Calendar;

.field private feedManager:Lru/rocketbank/core/manager/FeedManager;

.field private headerHeight:I

.field headerOverlay:Landroid/view/View;

.field headerVideoView:Landroid/view/TextureView;

.field headerView:Landroid/view/View;

.field private isCanBeHidden:Z

.field private isFullMode:Z

.field private isFullMoneyMode:Z

.field private isListLoadingInProgress:Z

.field private isLockedKeyBoard:Z

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field final navigationClickListner:Landroid/view/View$OnClickListener;

.field private onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private operationApi:Lru/rocketbank/core/network/api/OperationApi;

.field operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private operationLoader:Lru/rocketbank/core/manager/loader/TagOperationLoader;

.field private operationReceiptModel:Lru/rocketbank/r2d2/activities/operation/model/OperationReceiptModel;

.field operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private paralaxSize:I

.field realToolbar:Landroid/support/v7/widget/Toolbar;

.field realToolbarTittleView:Lru/rocketbank/core/widgets/RocketTextView;

.field private rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private tag:Ljava/lang/String;

.field private tagAnalytics:Lru/rocketbank/core/network/model/TagAnalytics;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field toolbarWrapperView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMode:Z

    .line 136
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMoneyMode:Z

    .line 138
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isCanBeHidden:Z

    .line 139
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isLockedKeyBoard:Z

    .line 144
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isListLoadingInProgress:Z

    .line 233
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$2;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->navigationClickListner:Landroid/view/View$OnClickListener;

    .line 280
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$3;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isLockedKeyBoard:Z

    return p1
.end method

.method static synthetic access$1000(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    return p0
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isListLoadingInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;D)D
    .locals 0

    .line 73
    iput-wide p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->amount:D

    return-wide p1
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/core/network/model/TagAnalytics;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->tagAnalytics:Lru/rocketbank/core/network/model/TagAnalytics;

    return-object p0
.end method

.method static synthetic access$402(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Lru/rocketbank/core/network/model/TagAnalytics;)Lru/rocketbank/core/network/model/TagAnalytics;
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->tagAnalytics:Lru/rocketbank/core/network/model/TagAnalytics;

    return-object p1
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->barChartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->fillItems()V

    return-void
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Ljava/util/Calendar;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->currentDateCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$900(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMoneyMode:Z

    return p0
.end method

.method static synthetic access$902(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMoneyMode:Z

    return p1
.end method

.method private colorFromCurrency(Ljava/lang/String;)I
    .locals 2

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x10da2

    if-eq v0, v1, :cond_1

    const v1, 0x13e5f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RUB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "EUR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 415
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06024c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 413
    :pswitch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 411
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06022e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fillItems()V
    .locals 2

    .line 699
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->clearTop()V

    .line 701
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/Item;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/operation/Item;-><init>()V

    const/4 v1, 0x0

    .line 702
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/operation/Item;->setType(I)V

    .line 704
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/activities/operation/Item;)V

    .line 706
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/Item;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/operation/Item;-><init>()V

    const/4 v1, 0x5

    .line 707
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/operation/Item;->setType(I)V

    .line 709
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/activities/operation/Item;)V

    .line 711
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/Item;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/operation/Item;-><init>()V

    const/4 v1, 0x4

    .line 712
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/operation/Item;->setType(I)V

    .line 714
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/activities/operation/Item;)V

    .line 715
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private loadNext()V
    .locals 2

    .line 518
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isListLoadingInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationLoader:Lru/rocketbank/core/manager/loader/TagOperationLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/TagOperationLoader;->loadNextPage()Lrx/Observable;

    move-result-object v0

    .line 523
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    .line 524
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private loadNextPageIfNeeded()V
    .locals 6

    .line 495
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 496
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 497
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 498
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->getItemCount()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v0

    int-to-double v2, v2

    int-to-double v0, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v4

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 503
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isListLoadingInProgress:Z

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->requestNextPage()V

    :cond_0
    return-void
.end method

.method private refreshData()V
    .locals 2

    .line 327
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->contextSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->contextSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->contextSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 331
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/OperationApi;->tagAnalytics(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 332
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    .line 333
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->contextSubscription:Lrx/Subscription;

    return-void
.end method

.method private requestNextPage()V
    .locals 2

    .line 511
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationLoader:Lru/rocketbank/core/manager/loader/TagOperationLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/TagOperationLoader;->isLastLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OperationTagActivity"

    const-string v1, "load next page"

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->loadNext()V

    :cond_0
    return-void
.end method

.method private setupHeaderSize()V
    .locals 4

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    .line 254
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 257
    iget v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    .line 259
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 262
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 264
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 268
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 274
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->cardOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 275
    iget v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->cardOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setupWindowProps()V
    .locals 2

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 246
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private showVideo()V
    .locals 1

    .line 400
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OPERATION_EXTRA"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateToolbarPosition(I)V
    .locals 2

    .line 550
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 556
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    if-lt v0, p1, :cond_1

    int-to-float v1, p1

    .line 561
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    neg-float v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public changeMode()V
    .locals 1

    .line 390
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMode:Z

    .line 391
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->showAmount()V

    return-void
.end method

.method public getRawPath(I)Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->setupWindowProps()V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->currentDateCalendar:Ljava/util/Calendar;

    .line 164
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0049

    .line 165
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->setContentView(I)V

    const p1, 0x7f0901b2

    .line 167
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerVideoView:Landroid/view/TextureView;

    const p1, 0x7f09004d

    .line 168
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->amountView:Landroid/widget/TextView;

    const p1, 0x7f0901ae

    .line 169
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerView:Landroid/view/View;

    const p1, 0x7f0903de

    .line 171
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbarWrapperView:Landroid/widget/FrameLayout;

    const p1, 0x7f0903db

    .line 172
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const p1, 0x7f0903d8

    .line 173
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p1, 0x7f09005a

    .line 175
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->appBarLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0901b5

    .line 176
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerOverlay:Landroid/view/View;

    const p1, 0x7f090292

    .line 178
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const p1, 0x7f0900c7

    .line 179
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->cardOverlay:Landroid/view/View;

    const p1, 0x7f09036b

    .line 180
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const p1, 0x7f0902ca

    .line 182
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->realToolbarTittleView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 184
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->amountView:Landroid/widget/TextView;

    new-instance v0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$1;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    .line 192
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 193
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 194
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 195
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 196
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 198
    new-instance p1, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {p1, p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 199
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 200
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 202
    new-instance v1, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {v1, p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060228

    .line 203
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 205
    invoke-virtual {v1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 207
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->navigationClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->realToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->navigationClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07015f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->paralaxSize:I

    .line 214
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "OPERATION_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->tag:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->setupHeaderSize()V

    .line 219
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->swipeRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 221
    new-instance p1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    .line 222
    new-instance p1, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->barChartAdapter:Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p1, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 225
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 227
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 228
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 229
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0, p1, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->onScrollChanged(IZZ)V

    return-void
.end method

.method public onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 376
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    .line 378
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->hideProgressDialog()V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 575
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->refreshData()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 293
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 294
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->refreshData()V

    .line 296
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/FeedManager;->getTagOperationLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/TagOperationLoader;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationLoader:Lru/rocketbank/core/manager/loader/TagOperationLoader;

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isListLoadingInProgress:Z

    .line 299
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationLoader:Lru/rocketbank/core/manager/loader/TagOperationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/TagOperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    .line 300
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$4;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    .line 301
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public onScrollChanged(IZZ)V
    .locals 4

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 463
    iget-boolean p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isCanBeHidden:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isLockedKeyBoard:Z

    if-nez p3, :cond_0

    .line 464
    iput-boolean p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isCanBeHidden:Z

    .line 465
    invoke-static {p0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 469
    iget v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->paralaxSize:I

    if-le p3, v0, :cond_1

    .line 470
    iget p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->paralaxSize:I

    .line 473
    :cond_1
    iget v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->paralaxSize:I

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

    .line 478
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerOverlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 479
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->appBarLayout:Landroid/widget/FrameLayout;

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 481
    iget p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerHeight:I

    sub-int/2addr p3, p1

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    move p2, p3

    .line 487
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->loadNextPageIfNeeded()V

    .line 489
    iget-object p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->cardOverlay:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 491
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->updateToolbarPosition(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 383
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 385
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->showVideo()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 421
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 424
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 425
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const p1, 0x7f10004c

    .line 426
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getRawPath(I)Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 429
    iget-object p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 431
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 432
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 433
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 434
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 436
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 448
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 449
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 451
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 371
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->adapter:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showAmount()V
    .locals 6

    .line 395
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->realToolbarTittleView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-wide v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->amount:D

    const-string v4, "rub"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->amountView:Landroid/widget/TextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-wide v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->amount:D

    const-string v4, "rub"

    iget-boolean v5, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->isFullMode:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
