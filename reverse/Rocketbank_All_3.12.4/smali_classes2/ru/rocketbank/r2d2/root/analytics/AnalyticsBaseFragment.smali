.class public abstract Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "AnalyticsBaseFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lru/rocketbank/r2d2/fragments/RocketFragment;",
        "Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsBaseFragment.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,253:1\n10108#2,2:254\n*E\n*S KotlinDebug\n*F\n+ 1 AnalyticsBaseFragment.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment\n*L\n86#1,2:254\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

.field public static final KEY_ANALYTICS_RESPONSE_DATA:Ljava/lang/String; = "KEY_ANALYTICS_RESPONSE_DATA"

.field public static final KEY_CURRENT_DATE:Ljava/lang/String; = "KEY_CURRENT_DATE"

.field public static final KEY_JOINT_IDS:Ljava/lang/String; = "KEY_JOINT_IDS"

.field private static avatars:[Landroid/graphics/Bitmap;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

.field protected currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private currentDateTime:Ljava/util/Calendar;

.field public floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

.field private headerSize:I

.field private isJointAnalytics:Z

.field private itemChart:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

.field private latestAnalyticsResponseData:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private latestJointIds:[I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
            ">;"
        }
    .end annotation
.end field

.field private monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

.field private subscriptionProcess:Lrx/Subscription;

.field private subscriptionRequest:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 39
    new-instance v8, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$header$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$header$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$header$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$header$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$header$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$header$3;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-object v8, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->list:Ljava/util/List;

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    return-void
.end method

.method public static final synthetic access$executeRequest(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/util/Calendar;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->executeRequest(Ljava/util/Calendar;)V

    return-void
.end method

.method public static final synthetic access$getAvatars$cp()[Landroid/graphics/Bitmap;
    .locals 1

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->avatars:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final synthetic access$getLatestAnalyticsResponseData$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)Landroid/os/Parcelable;
    .locals 0

    .line 28
    iget-object p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestAnalyticsResponseData:Landroid/os/Parcelable;

    return-object p0
.end method

.method public static final synthetic access$getLatestJointIds$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)[I
    .locals 0

    .line 28
    iget-object p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestJointIds:[I

    return-object p0
.end method

.method public static final synthetic access$hideProgress(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->hideProgress()V

    return-void
.end method

.method public static final synthetic access$isJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->isJointAnalytics:Z

    return p0
.end method

.method public static final synthetic access$onNextPeriod(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onNextPeriod()V

    return-void
.end method

.method public static final synthetic access$onPrevPeriod(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onPrevPeriod()V

    return-void
.end method

.method public static final synthetic access$setAvatars$cp([Landroid/graphics/Bitmap;)V
    .locals 0

    .line 28
    sput-object p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->avatars:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->isJointAnalytics:Z

    return-void
.end method

.method public static final synthetic access$setLatestAnalyticsResponseData$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestAnalyticsResponseData:Landroid/os/Parcelable;

    return-void
.end method

.method public static final synthetic access$setLatestJointIds$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;[I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestJointIds:[I

    return-void
.end method

.method private final executeRequest(Ljava/util/Calendar;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->showProgress()V

    .line 136
    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 141
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getJointIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 142
    :goto_0
    iput-boolean v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->isJointAnalytics:Z

    .line 143
    sget-object v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->getDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AnalyticsGroupFragment.D\u2026MAT.format(dateFrom.time)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->getDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "AnalyticsGroupFragment.D\u2026ORMAT.format(dateTo.time)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->request(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;

    move-result-object p1

    .line 144
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 145
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 147
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;[I)V

    check-cast v0, Lrx/functions/Action1;

    .line 153
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$executeRequest$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 146
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->subscriptionRequest:Lrx/Subscription;

    return-void
.end method

.method public static bridge synthetic format$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: format"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 64
    sget-object p2, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {p2}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->format(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final hideProgress()V
    .locals 2

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method private final onNextPeriod()V
    .locals 2

    .line 223
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->nextPeriod(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->executeRequest(Ljava/util/Calendar;)V

    return-void
.end method

.method private final onPrevPeriod()V
    .locals 2

    .line 215
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->prevPeriod(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->executeRequest(Ljava/util/Calendar;)V

    return-void
.end method

.method public static bridge synthetic processData$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;Ljava/util/Calendar;ILjava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: processData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 162
    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V

    return-void
.end method

.method private final showProgress()V
    .locals 2

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;->inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 47
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final format(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual$3bd129e3(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_1

    const-string v1, "floorMoneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p2, p1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "0 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    if-nez v0, :cond_4

    const-string v1, "currencyManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, p2}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    if-nez v0, :cond_0

    const-string v1, "analyticsApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 2

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    if-nez v0, :cond_0

    const-string v1, "currencyManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getCurrentDateTime()Ljava/util/Calendar;
    .locals 1

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getFloorMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 2

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_0

    const-string v1, "floorMoneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    return-object v0
.end method

.method public final getHeaderSize()I
    .locals 1

    .line 42
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->headerSize:I

    return v0
.end method

.method protected final getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->itemChart:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    return-object v0
.end method

.method public getJointIds()[I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;->getJointIds()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->list:Ljava/util/List;

    return-object v0
.end method

.method protected final getMonthsManager()Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    return-object v0
.end method

.method protected abstract hasData(Landroid/os/Parcelable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public onChangeAnalytics(Z[I)V
    .locals 0

    .line 96
    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->isJointAnalytics:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 99
    :cond_0
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->isJointAnalytics:Z

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->executeRequest(Ljava/util/Calendar;)V

    return-void
.end method

.method public final onChooseDate()V
    .locals 6

    .line 231
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;

    .line 232
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 233
    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 234
    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->getPeriodBegin()Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 235
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getJointIds()[I

    move-result-object v5

    .line 231
    invoke-virtual {v0, v1, v2, v3, v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;->create(IILjava/util/Calendar;[I)Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    move-result-object v0

    .line 237
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$onChooseDate$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->onChooseDate(Lkotlin/jvm/functions/Function2;)V

    .line 242
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 243
    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "KEY_ANALYTICS_RESPONSE_DATA"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestAnalyticsResponseData:Landroid/os/Parcelable;

    const-string v0, "KEY_JOINT_IDS"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestJointIds:[I

    const-string v0, "KEY_CURRENT_DATE"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    :cond_0
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "KEY_CURRENT_DATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/Calendar;

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->getPeriodEnd()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    :cond_4
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    .line 58
    :goto_1
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->subscriptionRequest:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->unsubscribe(Lrx/Subscription;)V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->subscriptionProcess:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->unsubscribe(Lrx/Subscription;)V

    .line 113
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_ANALYTICS_RESPONSE_DATA"

    .line 105
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestAnalyticsResponseData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "KEY_JOINT_IDS"

    .line 106
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestJointIds:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "KEY_CURRENT_DATE"

    .line 107
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 6

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 86
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestAnalyticsResponseData:Landroid/os/Parcelable;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestJointIds:[I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getJointIds()[I

    move-result-object p1

    if-eqz p1, :cond_4

    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestJointIds:[I

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 254
    array-length v1, p1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    aget v4, p1, v2

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getJointIds()[I

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_2
    if-ne v0, v3, :cond_6

    .line 87
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->latestAnalyticsResponseData:Landroid/os/Parcelable;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;Ljava/util/Calendar;ILjava/lang/Object;)V

    return-void

    .line 89
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->executeRequest(Ljava/util/Calendar;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    .line 76
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 78
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    if-nez p2, :cond_0

    const-string v0, "currencyManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "authorization"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, v0, v1, p2}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 p2, 0x1

    .line 1044
    invoke-virtual {v2, p2}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 78
    iput-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 79
    sget p2, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_2

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    :cond_2
    sget p2, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_3

    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->list:Ljava/util/List;

    invoke-direct {p2, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;-><init>(Ljava/util/List;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorBack(Landroid/app/Activity;)V

    return-void
.end method

.method protected processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    if-nez v1, :cond_0

    const-string v2, "analyticsApi"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getJointIds()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;->getAnalyticsManager(Lru/rocketbank/core/network/api/AnalyticsApi;[ILjava/util/Calendar;)Lrx/Observable;

    move-result-object p2

    .line 164
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;)V

    check-cast v0, Lrx/functions/Action1;

    .line 186
    new-instance p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)V

    check-cast p1, Lrx/functions/Action1;

    .line 164
    invoke-virtual {p2, v0, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->subscriptionProcess:Lrx/Subscription;

    return-void
.end method

.method public abstract request(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected final setAnalyticsApi(Lru/rocketbank/core/network/api/AnalyticsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    return-void
.end method

.method protected final setCurrencyManager(Lru/rocketbank/core/manager/CurrencyManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-void
.end method

.method protected final setCurrentDateTime(Ljava/util/Calendar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    return-void
.end method

.method public final setFloorMoneyFormatter(Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public final setHeaderSize(I)V
    .locals 0

    .line 42
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->headerSize:I

    return-void
.end method

.method protected final setItemChart(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->itemChart:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    return-void
.end method

.method protected final setMonthsManager(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    return-void
.end method

.method protected abstract showData(Landroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected updateHeader(Landroid/os/Parcelable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->isEndPeriod(Ljava/util/Calendar;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->setNextPeriodExists(Z)V

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->monthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->isBeginPeriod(Ljava/util/Calendar;)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->setPrevPeriodExists(Z)V

    .line 208
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->header:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v2}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->currentDateTime:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->setPeriod(Ljava/lang/String;)V

    return-void
.end method
