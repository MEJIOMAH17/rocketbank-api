.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AnalyticsPeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;

.field public static final FIRST_OPERATION_DATE:Ljava/lang/String; = "FIRST_OPERATION_DATE"

.field public static final JOINT_IDS:Ljava/lang/String; = "JOINT_IDS"

.field public static final MONTH:Ljava/lang/String; = "MONTH"

.field public static final YEAR:Ljava/lang/String; = "YEAR"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

.field private callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private firstOperationDate:Ljava/util/Calendar;

.field private jointIds:[I

.field private month:I

.field private subscription:Lrx/Subscription;

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMonth$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)I
    .locals 0

    .line 25
    iget p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->month:I

    return p0
.end method

.method public static final synthetic access$getYear$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)I
    .locals 0

    .line 25
    iget p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->year:I

    return p0
.end method

.method public static final synthetic access$onCancelClick(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->onCancelClick()V

    return-void
.end method

.method public static final synthetic access$onOkClick(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->onOkClick()V

    return-void
.end method

.method public static final synthetic access$setMonth$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;I)V
    .locals 0

    .line 25
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->month:I

    return-void
.end method

.method public static final synthetic access$setYear$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;I)V
    .locals 0

    .line 25
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->year:I

    return-void
.end method

.method private final fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V
    .locals 4

    .line 90
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    if-nez v1, :cond_0

    const-string v2, "analyticsApi"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->jointIds:[I

    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->firstOperationDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;->getAnalyticsManager(Lru/rocketbank/core/network/api/AnalyticsApi;[ILjava/util/Calendar;)Lrx/Observable;

    move-result-object v0

    .line 91
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;Lru/rocketbank/core/widgets/WheelView;)V

    check-cast v1, Lrx/functions/Action1;

    .line 114
    new-instance p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V

    check-cast p1, Lrx/functions/Action1;

    .line 91
    invoke-virtual {v0, v1, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->subscription:Lrx/Subscription;

    return-void
.end method

.method private final onCancelClick()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->dismiss()V

    return-void
.end method

.method private final onOkClick()V
    .locals 3

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->callback:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_0

    const-string v1, "callback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;
    .locals 2

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    if-nez v0, :cond_0

    const-string v1, "analyticsApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFirstOperationDate()Ljava/util/Calendar;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->firstOperationDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getSubscription()Lrx/Subscription;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public final onChooseDate(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->callback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00a1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "MONTH"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    :goto_0
    iput p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->month:I

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const-string p2, "YEAR"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    :goto_1
    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->year:I

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "FIRST_OPERATION_DATE"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, v0, :cond_3

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->firstOperationDate:Ljava/util/Calendar;

    .line 68
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->firstOperationDate:Ljava/util/Calendar;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v0, "FIRST_OPERATION_DATE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p3, "JOINT_IDS"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->jointIds:[I

    const-string p2, "view"

    .line 72
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/WheelView;

    const-string p3, "view.leftWheel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/WheelView;->setVisibility(I)V

    .line 73
    sget p2, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/WheelView;

    const-string p3, "view.rightWheel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V

    .line 75
    sget p2, Lru/rocketbank/r2d2/R$id;->buttonOk:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketButton;

    new-instance p3, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$onCreateView$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$onCreateView$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget p2, Lru/rocketbank/r2d2/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketButton;

    new-instance p3, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$onCreateView$2;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$onCreateView$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->subscription:Lrx/Subscription;

    .line 86
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    return-void
.end method

.method public final setAnalyticsApi(Lru/rocketbank/core/network/api/AnalyticsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->analyticsApi:Lru/rocketbank/core/network/api/AnalyticsApi;

    return-void
.end method

.method public final setFirstOperationDate(Ljava/util/Calendar;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->firstOperationDate:Ljava/util/Calendar;

    return-void
.end method

.method public final setSubscription(Lrx/Subscription;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->subscription:Lrx/Subscription;

    return-void
.end method
