.class public final Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;
.super Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;
.source "DetailRocketrubleOperationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity<",
        "Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetailRocketrubleOperationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetailRocketrubleOperationActivity.kt\nru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1519#2,2:130\n*E\n*S KotlinDebug\n*F\n+ 1 DetailRocketrubleOperationActivity.kt\nru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity\n*L\n66#1,2:130\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public operation:Lru/rocketbank/core/model/dto/operations/Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->createPresenter()Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;
    .locals 3

    .line 23
    new-instance v0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v1, :cond_0

    const-string v2, "operation"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;-><init>(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-object v0
.end method

.method public final fillFullAdapter(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 6

    const-string v0, "viewInputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v2

    if-eqz v2, :cond_8

    if-nez v2, :cond_0

    .line 67
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.operation.OperationAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v2, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    .line 69
    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->clearAll()V

    .line 71
    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addActions(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 73
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 74
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 75
    new-instance v4, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;

    invoke-direct {v4, v2, p0, v1, p1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/root/operation/OperationAdapter;Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3, v4}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDescription(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 79
    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v3

    sget-object v4, Lru/rocketbank/core/network/model/operation/OperationContextType;->RocketRubleIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    if-eq v3, v4, :cond_3

    .line 80
    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addTag(Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_1

    :cond_3
    const-string v3, ""

    .line 82
    new-instance v4, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$2;

    invoke-direct {v4, p0, v1, p1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$2;-><init>(Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3, v4}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDescription(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 86
    :goto_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getShopItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 87
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const v4, 0x7f11033f

    .line 88
    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.operation_shop_items_title)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 89
    check-cast v3, Ljava/lang/Iterable;

    .line 130
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/network/model/ContextShopItem;

    .line 89
    invoke-virtual {v2, v4}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addShopItem(Lru/rocketbank/core/network/model/ContextShopItem;)V

    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getParentOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v0

    if-eqz v0, :cond_5

    const v3, 0x7f110102

    .line 94
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.compensation_parent_operation)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addParentOperationItem(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 98
    :cond_5
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getLocation()Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Location;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 100
    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addMap(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 103
    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getTotal()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object p1

    if-eqz p1, :cond_7

    const p1, 0x7f110343

    .line 104
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.operation_statistics_stat)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getStatisticsAdapter()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    move-result-object p1

    const v0, 0x7f1104d3

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.watch_all)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1100cb

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.collapse)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0, v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addStatistics(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11033c

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.operation_dynamic)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getBarchartAdapter()Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v2, p1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->addBarChart(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    :cond_7
    return-void

    :cond_8
    return-void
.end method

.method public final getComment()Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

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

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    const-string v1, "operation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCommentUpdateFinished(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "comment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getUpdateInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 33
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getSaveActionsActive()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setCurrentComment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->getOPERATION_EXTRA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    .line 45
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Empty operation received"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->finish()V

    return-void

    .line 50
    :cond_0
    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 51
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onError()V
    .locals 0

    return-void
.end method

.method public final onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 2

    const-string v0, "viewInputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    .line 56
    check-cast p1, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getBinding()Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operationIcon:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 58
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->getBinding()Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->iconImage:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    .line 60
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/DetailRocketrubleOperationActivity;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method
