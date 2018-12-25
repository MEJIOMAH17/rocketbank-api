.class public Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;
.super Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;
.source "DetailOperationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity<",
        "Lru/rocketbank/r2d2/root/operation/OperationPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetailOperationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetailOperationActivity.kt\nru/rocketbank/r2d2/root/operation/DetailOperationActivity\n*L\n1#1,128:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public operation:Lru/rocketbank/core/model/dto/operations/Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->createPresenter()Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    return-object v0
.end method

.method public createPresenter()Lru/rocketbank/r2d2/root/operation/OperationPresenter;
    .locals 3

    .line 108
    new-instance v0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v1, :cond_0

    const-string v2, "operation"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;-><init>(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-object v0
.end method

.method public fillFullAdapter(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 5

    const-string v0, "viewInputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez v1, :cond_0

    .line 55
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.operation.OperationAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    .line 57
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->clearAll()V

    .line 59
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addActions(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 61
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriendTransferType()Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object v2

    sget-object v3, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-eq v2, v3, :cond_1

    .line 62
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v2

    sget-object v3, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/operation/OperationContextType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addIn()V

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addOut()V

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addTag(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 78
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getSourceData()Lru/rocketbank/r2d2/root/operation/data/SourceViewData;

    move-result-object v2

    if-eqz v2, :cond_2

    const v3, 0x7f1103b6

    .line 79
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.refill_from)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addSource(Lru/rocketbank/r2d2/root/operation/data/SourceViewData;)V

    .line 83
    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getLocation()Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Location;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addMap(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 88
    :cond_3
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    .line 1043
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v2}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v3, v2}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v2

    .line 88
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    if-eq v2, v3, :cond_7

    .line 89
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getOperationContext()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMiles()Lru/rocketbank/core/model/dto/operations/Miles;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v2, "confirmed"

    .line 91
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Miles;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "completed"

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Miles;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    .line 92
    :goto_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Miles;->isEnoughMiles()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    .line 93
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addCompensationToDo(Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 95
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addCompensated(Lru/rocketbank/core/model/dto/operations/Operation;)V

    :cond_7
    :goto_3
    const p1, 0x7f110343

    .line 100
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.operation_statistics_stat)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getStatisticsAdapter()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    move-result-object p1

    const v0, 0x7f1104d3

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.watch_all)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1100cb

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.collapse)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addStatistics(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11033c

    .line 103
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.operation_dynamic)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getBarchartAdapter()Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addBarChart(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    return-void

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    const-string v1, "operation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getOperation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 2

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    const-string v1, "operation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->getOPERATION_EXTRA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    .line 29
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Empty operation received"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->finish()V

    return-void

    .line 34
    :cond_0
    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 35
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 2

    const-string v0, "operationViewInputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getBinding()Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getBinding()Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->iconImage:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 43
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->getSputnik()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getSputnik()Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 49
    invoke-super {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onPause()V

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method
