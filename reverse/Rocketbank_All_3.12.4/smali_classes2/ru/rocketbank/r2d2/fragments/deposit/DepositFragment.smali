.class public Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "DepositFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;,
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;,
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HistoryViewHolder;,
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$HeaderViewHolder;,
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;,
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;,
        Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DATE_FORMAT_OUT:Ljava/text/SimpleDateFormat;

.field private static final DELIMITER_ABOUT:I = 0x0

.field private static final DELIMITER_ACTIONS:I = 0x1

.field private static final DELIMITER_HEADER:I = 0x2

.field private static final DEPOSIT:Ljava/lang/String; = "DEPOSIT"

.field private static final FEED_IMAGE_LOADING_TAG:Ljava/lang/String; = "FEED_IMAGE_LOADING"

.field private static final ITEM_TERMS_DETAIL:I = 0x28

.field private static final ITEM_TERMS_REQUISITES:I = 0x32

.field private static final OPERATION_ABOUT_LINE:I = 0x1

.field private static final OPERATION_ACTUAL:I = 0x2

.field private static final OPERATION_DELIMITER:I = 0x3

.field private static final OPERATION_HEADER:I = 0x0

.field private static final STATUS_IN:I = 0x1b5

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_OUT:I = 0x170

.field private static final TAG:Ljava/lang/String; = "DepositFragment"


# instance fields
.field private appBarHeight:I

.field private appBarLayout:Landroid/widget/FrameLayout;

.field private authSubscription:Lrx/Subscription;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private cardOverlay:Landroid/view/View;

.field private currency:Ljava/lang/String;

.field private currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private deposit:Lru/rocketbank/core/model/DepositModel;

.field private fabMargin:I

.field private feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

.field private feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private flexibleSpaceImageHeight:I

.field private flexibleSpaceShowFabOffset:I

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private headerHeight:I

.field private headerOverlay:Landroid/view/View;

.field private headerVideoView:Landroid/view/TextureView;

.field private isFullMoneyMode:Z

.field private isStartingFullMoneyMode:Z

.field private isTotalFullMoneyMode:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private money:Landroid/widget/TextView;

.field moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private paralaxSize:I

.field private percentText:Lru/rocketbank/core/widgets/RocketTextView;

.field private realToolbar:Landroid/support/v7/widget/Toolbar;

.field private rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMMM yyyy"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->DATE_FORMAT_OUT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 125
    sget-object v0, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isFullMoneyMode:Z

    return p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isFullMoneyMode:Z

    return p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->showBalance()V

    return-void
.end method

.method static synthetic access$1000(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->showClose()V

    return-void
.end method

.method static synthetic access$1100(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->closeDeposit()V

    return-void
.end method

.method static synthetic access$1200(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)I
    .locals 0

    .line 66
    iget p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerHeight:I

    return p0
.end method

.method static synthetic access$1300(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Ljava/lang/String;)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->colorFromCurrency(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isTotalFullMoneyMode:Z

    return p0
.end method

.method static synthetic access$202(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isTotalFullMoneyMode:Z

    return p1
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    return-object p0
.end method

.method static synthetic access$502(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/core/model/DepositModel;
    .locals 0

    .line 66
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    return-object p1
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->updateFabVisibility()V

    return-void
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->refreshUserData()V

    return-void
.end method

.method private closeDeposit()V
    .locals 2

    .line 394
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->newInstance(Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 396
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private colorFromCurrency(Ljava/lang/String;)I
    .locals 2

    .line 462
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

    .line 468
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06024c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 466
    :pswitch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 464
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getResources()Landroid/content/res/Resources;

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

.method private fillAdapterWithData()V
    .locals 12

    .line 1059
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->clear()V

    .line 1060
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->clearTop()V

    .line 1062
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;II)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1063
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v4, v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;II)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1065
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1066
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1068
    :try_start_0
    sget-object v3, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v5}, Lru/rocketbank/core/model/DepositModel;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1069
    sget-object v3, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v5}, Lru/rocketbank/core/model/DepositModel;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1071
    invoke-static {v3}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 1073
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long v9, v5, v7

    const-wide/32 v5, 0x5265c00

    div-long/2addr v9, v5

    .line 1074
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x0

    cmp-long v3, v9, v5

    if-ltz v3, :cond_2

    const-wide/16 v5, 0x1

    cmp-long v3, v9, v5

    if-nez v3, :cond_0

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11012d

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x4

    cmp-long v3, v9, v5

    if-gtz v3, :cond_1

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11012e

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1082
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11012f

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const v1, 0x7f110140

    .line 1085
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v9, v1

    .line 1088
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v3, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const v5, 0x7f110252

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1089
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v3, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v8, 0x2

    sget-object v5, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->DATE_FORMAT_OUT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f110145

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    const-string v0, ""

    .line 1096
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketDepositModel;->getPeriodText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 1097
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketDepositModel;->getPeriodText()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    move-object v9, v0

    goto/16 :goto_4

    .line 1099
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getPeriod()I

    move-result v1

    if-nez v1, :cond_5

    .line 1101
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketDepositModel;->getPeriod()I

    move-result v1

    .line 1104
    :cond_5
    div-int/lit8 v5, v1, 0xc

    .line 1105
    rem-int/lit8 v1, v1, 0x6

    const/4 v6, 0x5

    if-eqz v5, :cond_8

    .line 1108
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-ne v5, v3, :cond_6

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1104e7

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-ge v5, v6, :cond_7

    .line 1112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1104ea

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1114
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1104e9

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_3
    if-eqz v1, :cond_3

    .line 1119
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne v1, v3, :cond_a

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1102ec

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    if-ge v1, v6, :cond_b

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1102fc

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1129
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1102fd

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1134
    :goto_4
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v7, 0x1

    const/4 v8, 0x3

    const v5, 0x7f110147

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1137
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getRefillable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1138
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketDepositModel;->getRrRate()F

    move-result v0

    goto :goto_5

    .line 1140
    :cond_c
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketDepositModel;->getRate()F

    move-result v0

    .line 1142
    :goto_5
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v11, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v7, 0x1

    const/4 v8, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " %"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f110146

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1144
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/16 v8, 0x28

    const v5, 0x7f11014c

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v5, 0x7f110153

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1145
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getCanBeRefilled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    const/4 v7, 0x1

    const/16 v8, 0x32

    const v5, 0x7f11014a

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v5, 0x7f11014b

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    .line 1149
    :cond_d
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-direct {v1, p0, v4, v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;II)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addTopItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    const/16 v0, 0x2710

    .line 1152
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getStatements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/StatementModel;

    .line 1153
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    new-instance v6, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    invoke-direct {v6, p0, v2, v0, v4}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILru/rocketbank/core/model/StatementModel;)V

    invoke-virtual {v5, v6}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->addItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V

    add-int/2addr v0, v3

    goto :goto_6

    :cond_e
    return-void
.end method

.method private moveFloatingButton(Ljava/lang/Integer;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 354
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->flexibleSpaceShowFabOffset:I

    if-le p1, v0, :cond_0

    .line 355
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void

    .line 358
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    return-void
.end method

.method public static newInstance(Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
    .locals 3

    .line 630
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;-><init>()V

    .line 631
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEPOSIT"

    .line 632
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 634
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshUserData()V
    .locals 0

    .line 1160
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->showBalance()V

    .line 1161
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->fillAdapterWithData()V

    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 303
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 306
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->setupToolbarSizes()V

    .line 308
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 309
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 311
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$6;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 332
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$7;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method private setupToolbarSizes()V
    .locals 3

    .line 400
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarHeight:I

    .line 402
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarHeight:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 403
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarHeight:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbarHeight:I

    .line 405
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 406
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 407
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 409
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 410
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 413
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerHeight:I

    .line 415
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 416
    iget v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerHeight:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 417
    iget v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->fabMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private showBalance()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getPercent()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;->getStrategy(Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;

    move-result-object v0

    .line 280
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isFullMoneyMode:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;->percent()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;->percent()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-double v1, v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    iget-boolean v5, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isFullMoneyMode:Z

    invoke-virtual {v2, v3, v4, v1, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;->balance()D

    move-result-wide v3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    iget-boolean v5, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isTotalFullMoneyMode:Z

    invoke-virtual {v2, v3, v4, v0, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->money:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->percentText:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11011b

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v0

    float-to-double v0, v0

    .line 291
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    iget-boolean v4, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->isTotalFullMoneyMode:Z

    invoke-virtual {v2, v0, v1, v3, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->money:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->percentText:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 297
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showClose()V
    .locals 3

    .line 374
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11013e

    .line 375
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$9;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$9;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    const v2, 0x7f1104eb

    .line 376
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$8;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$8;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    const v2, 0x7f11008e

    .line 382
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private showVideo()V
    .locals 1

    .line 370
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private updateFabVisibility()V
    .locals 2

    .line 257
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getRefillable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateToolbarPosition(I)V
    .locals 2

    .line 473
    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbarHeight:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 477
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 478
    iget v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbarHeight:I

    if-lt v1, v0, :cond_1

    int-to-float p1, v0

    .line 482
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getRawPath(I)Ljava/lang/String;
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00d3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090170

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700de

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->flexibleSpaceImageHeight:I

    .line 138
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700df

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->flexibleSpaceShowFabOffset:I

    .line 139
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700d6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->fabMargin:I

    return-object p1
.end method

.method public onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 155
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 364
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 365
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->showVideo()V

    return-void
.end method

.method public onScrollChanged(IZZ)V
    .locals 4

    const/4 p2, 0x0

    if-gez p1, :cond_0

    move p1, p2

    .line 425
    :cond_0
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {p3}, Lru/rocketbank/core/model/DepositModel;->getRefillable()Z

    move-result p3

    if-eqz p3, :cond_1

    neg-int p3, p1

    .line 426
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moveFloatingButton(Ljava/lang/Integer;)V

    :cond_1
    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 429
    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->paralaxSize:I

    if-le p3, v0, :cond_2

    .line 430
    iget p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->paralaxSize:I

    .line 433
    :cond_2
    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->paralaxSize:I

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

    .line 438
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerOverlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 439
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarLayout:Landroid/widget/FrameLayout;

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 441
    iget p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerHeight:I

    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    goto :goto_0

    :cond_3
    move p2, p3

    .line 446
    :goto_0
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->cardOverlay:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 448
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->updateToolbarPosition(I)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 492
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 496
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const p1, 0x7f10002e

    .line 498
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getRawPath(I)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 501
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 503
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 504
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 505
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 506
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 508
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 520
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 521
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 523
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
    .locals 1

    .line 160
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903db

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f0903d8

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f09005a

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->appBarLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0902ca

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090265

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->money:Landroid/widget/TextView;

    const p2, 0x7f090070

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->percentText:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090172

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const p2, 0x7f0900c7

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->cardOverlay:Landroid/view/View;

    const p2, 0x7f0901b5

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerOverlay:Landroid/view/View;

    const p2, 0x7f09036b

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const p2, 0x7f0901b1

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->headerVideoView:Landroid/view/TextureView;

    .line 176
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 177
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 178
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "DEPOSIT"

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/DepositModel;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    .line 183
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void

    .line 188
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->currency:Ljava/lang/String;

    :cond_1
    const-string p1, "DepositFragment"

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Deposit "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    new-instance p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    .line 199
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 200
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p2, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 201
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedAdapter:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 202
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p1, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 203
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setVerticalScrollbarPosition(I)V

    .line 205
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->setupToolbar()V

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->percentText:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->money:Landroid/widget/TextView;

    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 230
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->authSubscription:Lrx/Subscription;

    .line 253
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->refreshUserData()V

    return-void
.end method
