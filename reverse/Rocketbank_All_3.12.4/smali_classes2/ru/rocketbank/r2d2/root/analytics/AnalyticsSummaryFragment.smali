.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;
.source "AnalyticsSummaryFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment<",
        "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
        ">;",
        "Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsSummaryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsSummaryFragment.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1315#2,3:67\n*E\n*S KotlinDebug\n*F\n+ 1 AnalyticsSummaryFragment.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment\n*L\n33#1,3:67\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private subscription:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic hasData(Landroid/os/Parcelable;)Z
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z

    move-result p1

    return p1
.end method

.method protected final hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getFirstOperationDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getTotal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onGroupSelected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorBack(Landroid/app/Activity;)V

    .line 52
    sget-object v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v6

    if-nez p5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->createArguments(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;I)Landroid/os/Bundle;

    move-result-object p1

    .line 54
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    invoke-direct {p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;-><init>()V

    .line 55
    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p3, 0x7f090185

    .line 58
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 62
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->unsubscribe(Lrx/Subscription;)V

    .line 21
    invoke-super {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onPause()V

    return-void
.end method

.method public final bridge synthetic processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->processData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Ljava/util/Calendar;)V

    return-void
.end method

.method protected final processData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Ljava/util/Calendar;)V
    .locals 0

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object p2, p1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getFirstOperationDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-super {p0, p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V

    return-void
.end method

.method public final request(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
            ">;"
        }
    .end annotation

    const-string v0, "dateFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lru/rocketbank/core/network/api/AnalyticsApi;->analyticsSummary(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;

    move-result-object p1

    const-string p2, "analyticsApi.analyticsSu\u2026teFrom, dateTo, jointIds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic showData(Landroid/os/Parcelable;)V
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    return-void
.end method

.method protected final showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    const/4 v3, 0x0

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$chart$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$chart$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function5;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->setData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    .line 27
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function5;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->setOnGroupSelectedListener(Lkotlin/jvm/functions/Function5;)V

    .line 28
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v1

    if-nez v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->setItemChart(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;)V

    .line 33
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getGroups()Ljava/util/List;

    move-result-object p1

    const-string v0, "data.groups"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 67
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 68
    check-cast v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    .line 34
    new-instance v8, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v2, "it.name"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getColor()Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "it.color"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p0, v2, v6, v5, v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->format$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;

    invoke-direct {v2, v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getIcon()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final bridge synthetic updateHeader(Landroid/os/Parcelable;)V
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    return-void
.end method

.method protected final updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getTotal()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->setAmount(I)V

    .line 44
    check-cast p1, Landroid/os/Parcelable;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->updateHeader(Landroid/os/Parcelable;)V

    return-void
.end method
