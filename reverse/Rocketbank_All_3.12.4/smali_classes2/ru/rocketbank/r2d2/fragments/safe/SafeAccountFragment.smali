.class public Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;,
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;,
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;,
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;,
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$HeaderViewHolder;,
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;,
        Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;
    }
.end annotation


# static fields
.field private static final ACTION_ACCOUNT_DETAIL:I = 0x2

.field private static final ACTION_CLOSE:I = 0x3

.field private static final ACTION_INFO:I = 0x1

.field private static final ACTION_SEND_MY:I = 0x0

.field private static final DELIMITER_ACTION:I = 0x0

.field private static final DELIMITER_HISTORY:I = 0x1

.field private static final OPERATION_FRIEND_LOADING:I = -0x1

.field private static final REQUEST_CODE_CLOSE:I = 0x0

.field private static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private actionHeadItems:[Lru/rocketbank/core/network/model/FeedItem;

.field appBarLayout:Landroid/widget/FrameLayout;

.field private authSubscription:Lrx/Subscription;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field cardOverlay:Landroid/view/View;

.field private changeSubscription:Lrx/Subscription;

.field currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field feedManager:Lru/rocketbank/core/manager/FeedManager;

.field feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private headerHeight:I

.field headerOverlay:Landroid/view/View;

.field headerVideoView:Landroid/view/TextureView;

.field private isFullMoneyMode:Z

.field private isInitialized:Z

.field private isListLoadingInProgress:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field money:Landroid/widget/TextView;

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

.field private pageRefreshSubscription:Lrx/Subscription;

.field private pageRequestSubscription:Lrx/Subscription;

.field private paralaxSize:I

.field realToolbar:Landroid/support/v7/widget/Toolbar;

.field private renameDialogFragment:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

.field rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

.field rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field private safeAccount:Lru/rocketbank/core/model/SafeAccount;

.field private safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

.field swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private token:Ljava/lang/String;

.field toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 71
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isFullMoneyMode:Z

    .line 132
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isListLoadingInProgress:Z

    .line 133
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isInitialized:Z

    const/4 v1, 0x7

    .line 702
    new-array v1, v1, [Lru/rocketbank/core/network/model/FeedItem;

    new-instance v2, Lru/rocketbank/core/network/model/FeedItem;

    const v3, -0x21124111

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    aput-object v2, v1, v0

    new-instance v2, Lru/rocketbank/core/network/model/FeedItem;

    new-instance v3, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;-><init>(II)V

    const/16 v5, 0x9

    invoke-direct {v2, v5, v3}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    aput-object v2, v1, v4

    new-instance v2, Lru/rocketbank/core/network/model/FeedItem;

    new-instance v3, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;

    const/4 v6, 0x2

    invoke-direct {v3, v0, v6}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;-><init>(II)V

    const/16 v0, 0xa

    invoke-direct {v2, v0, v3}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    aput-object v2, v1, v6

    new-instance v2, Lru/rocketbank/core/network/model/FeedItem;

    new-instance v3, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;

    const/4 v7, 0x4

    invoke-direct {v3, v4, v7}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;-><init>(II)V

    invoke-direct {v2, v0, v3}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lru/rocketbank/core/network/model/FeedItem;

    new-instance v8, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;

    invoke-direct {v8, v6, v3}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;-><init>(II)V

    invoke-direct {v2, v0, v8}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    aput-object v2, v1, v7

    new-instance v0, Lru/rocketbank/core/network/model/FeedItem;

    new-instance v2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;

    const/4 v6, 0x5

    invoke-direct {v2, v3, v6}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionOperation;-><init>(II)V

    const/16 v3, 0xc

    invoke-direct {v0, v3, v2}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    aput-object v0, v1, v6

    new-instance v0, Lru/rocketbank/core/network/model/FeedItem;

    new-instance v2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;

    const/4 v3, 0x6

    invoke-direct {v2, v4, v3}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterOperation;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    aput-object v0, v1, v3

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->actionHeadItems:[Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/core/model/SafeAccount;
    .locals 0

    .line 71
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    return-object p0
.end method

.method static synthetic access$1000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->rename()V

    return-void
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Lru/rocketbank/core/model/SafeAccount;)Lru/rocketbank/core/model/SafeAccount;
    .locals 0

    .line 71
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    return-object p1
.end method

.method static synthetic access$1100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->goToSupport()V

    return-void
.end method

.method static synthetic access$1200(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerHeight:I

    return p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->showBalance()V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)[Lru/rocketbank/core/network/model/FeedItem;
    .locals 0

    .line 71
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->actionHeadItems:[Lru/rocketbank/core/network/model/FeedItem;

    return-object p0
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isInitialized:Z

    return p0
.end method

.method static synthetic access$502(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isInitialized:Z

    return p1
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;I)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->loadPage(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isListLoadingInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isFullMoneyMode:Z

    return p0
.end method

.method static synthetic access$802(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isFullMoneyMode:Z

    return p1
.end method

.method static synthetic access$900(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->refresh()Z

    move-result p0

    return p0
.end method

.method private goToSupport()V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 487
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showSupport()V

    return-void
.end method

.method private handleObservable(Lrx/Observable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)Z"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isInitialized:Z

    .line 292
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isListLoadingInProgress:Z

    .line 294
    new-instance v1, Lru/rocketbank/core/network/model/FeedItem;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    .line 295
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->addBottom(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 297
    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRequestSubscription:Lrx/Subscription;

    return v0
.end method

.method private handleObservableRefresh(Lrx/Observable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)Z"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return v0

    .line 338
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRefreshSubscription:Lrx/Subscription;

    const/4 p1, 0x1

    return p1
.end method

.method private loadNext()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->removeBottom()V

    .line 283
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadNextPage()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->handleObservable(Lrx/Observable;)Z

    move-result v0

    return v0
.end method

.method private loadPage(I)Z
    .locals 1

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->removeBottom()V

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->handleObservable(Lrx/Observable;)Z

    move-result p1

    return p1
.end method

.method public static newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
    .locals 3

    .line 90
    new-instance v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TOKEN"

    .line 92
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refresh()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    .line 261
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    .line 262
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->handleObservableRefresh(Lrx/Observable;)Z

    move-result v0

    return v0
.end method

.method private rename()V
    .locals 3

    .line 491
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 493
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->token:Ljava/lang/String;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->renameDialogFragment:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    .line 494
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->renameDialogFragment:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private requestNextPage()V
    .locals 1

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->isLastLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->loadNext()Z

    :cond_0
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .line 426
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 427
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 429
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setupToolbarSizes()V

    .line 431
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 432
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 434
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$8;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$8;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$9;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$9;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$10;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$10;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 467
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$11;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$11;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method private setupToolbarSizes()V
    .locals 4

    .line 498
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getStatusBarHeight()I

    move-result v0

    .line 500
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 501
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 503
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 504
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 506
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 507
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 508
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 510
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 511
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 512
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerHeight:I

    return-void
.end method

.method private showBalance()V
    .locals 6

    .line 411
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getBalance()D

    move-result-wide v0

    .line 413
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    invoke-virtual {v2}, Lru/rocketbank/core/model/SafeAccount;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 415
    iget-boolean v3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isFullMoneyMode:Z

    if-nez v3, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    double-to-int v0, v0

    int-to-double v0, v0

    .line 416
    :cond_1
    :goto_0
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-boolean v4, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isFullMoneyMode:Z

    invoke-virtual {v3, v0, v1, v2, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 417
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->money:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-boolean v4, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isFullMoneyMode:Z

    invoke-virtual {v3, v0, v1, v2, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showVideo()V
    .locals 1

    .line 227
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private updateToolbarPosition(I)V
    .locals 2

    .line 554
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    sub-int p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 560
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    if-lt v0, p1, :cond_1

    int-to-float v1, p1

    .line 565
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    neg-float v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getRawPath(I)Ljava/lang/String;
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 219
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00f8

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09005a

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0903db

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f0903d8

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f0902ca

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090265

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->money:Landroid/widget/TextView;

    const p2, 0x7f0902f6

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090172

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const p2, 0x7f09036b

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const p2, 0x7f0901b5

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerOverlay:Landroid/view/View;

    const p2, 0x7f0900c7

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->cardOverlay:Landroid/view/View;

    const p2, 0x7f0901b1

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerVideoView:Landroid/view/TextureView;

    .line 161
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07015f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->paralaxSize:I

    return-object p1
.end method

.method public onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 233
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 236
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->changeSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 238
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->renameDialogFragment:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->renameDialogFragment:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->renameDialogFragment:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dismiss()V

    .line 242
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 246
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRefreshSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRefreshSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRefreshSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 250
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRequestSubscription:Lrx/Subscription;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRequestSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->pageRequestSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 254
    :cond_3
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 167
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/FeedManager;->getSafeOperationLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/OperationLoader;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->changeObservable()Lrx/Observable;

    move-result-object v0

    .line 172
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    .line 173
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->changeSubscription:Lrx/Subscription;

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authSubscription:Lrx/Subscription;

    .line 211
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->refresh()Z

    .line 212
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->showVideo()V

    return-void
.end method

.method public onScrollChanged(IZZ)V
    .locals 4

    const/4 p2, 0x0

    if-gez p1, :cond_0

    move p1, p2

    .line 521
    :cond_0
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 522
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 523
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p3

    const/4 p3, 0x5

    if-ge v0, p3, :cond_1

    .line 526
    iget-boolean p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->isListLoadingInProgress:Z

    if-nez p3, :cond_1

    .line 527
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->requestNextPage()V

    :cond_1
    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 531
    iget v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->paralaxSize:I

    if-le p3, v0, :cond_2

    .line 532
    iget p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->paralaxSize:I

    .line 535
    :cond_2
    iget v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->paralaxSize:I

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

    .line 540
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerOverlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 541
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->appBarLayout:Landroid/widget/FrameLayout;

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 543
    iget p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->headerHeight:I

    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    goto :goto_0

    :cond_3
    move p2, p3

    .line 548
    :goto_0
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->cardOverlay:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 550
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->updateToolbarPosition(I)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 584
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 588
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const p1, 0x7f10006c

    .line 590
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getRawPath(I)Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 593
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 595
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 596
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 597
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 598
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 600
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 613
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 614
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 371
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 373
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 374
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 375
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 377
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TOKEN"

    .line 378
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->token:Ljava/lang/String;

    .line 380
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "authorization"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, v0, v1, p1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 p1, 0x1

    .line 1044
    invoke-virtual {v2, p1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 380
    iput-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 382
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    new-instance p1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/LayoutInflater;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    .line 386
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 387
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p2, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 388
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->safeAdapter:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 389
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p1, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 392
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setupToolbar()V

    .line 394
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->money:Landroid/widget/TextView;

    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$7;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$7;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method
