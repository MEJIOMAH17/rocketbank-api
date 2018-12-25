.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;
.source "AnalyticsTagsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment<",
        "Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;",
        ">;"
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$startTagActivity(Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->startTagActivity(Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;)V

    return-void
.end method

.method private final startTagActivity(Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;->inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic hasData(Landroid/os/Parcelable;)Z
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;)Z

    move-result p1

    return p1
.end method

.method protected final hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->getTags()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->getTags()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->_$_clearFindViewByIdCache()V

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
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;",
            ">;"
        }
    .end annotation

    const-string v0, "dateFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lru/rocketbank/core/network/api/AnalyticsApi;->analyticsTags(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;

    move-result-object p1

    const-string p2, "analyticsApi.analyticsTa\u2026teFrom, dateTo, jointIds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic showData(Landroid/os/Parcelable;)V
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;)V

    return-void
.end method

.method protected final showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;)V
    .locals 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->getTags()Ljava/util/List;

    move-result-object v6

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment$showData$chart$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment$showData$chart$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->setTags(Ljava/util/List;)V

    .line 30
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment$showData$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment$showData$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->setOnTagSelectedListener(Lkotlin/jvm/functions/Function1;)V

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v1

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->setItemChart(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;)V

    .line 37
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->getTags()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    .line 38
    sget-object v3, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(I)Lkotlin/Pair;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getList()Ljava/util/List;

    move-result-object v3

    new-instance v11, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, ""

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getAmount()Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_4
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p0, v5, v8, v7, v8}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->format$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 42
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_5
    move v7, v0

    .line 43
    :goto_1
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment$showData$2;

    invoke-direct {v1, p0, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment$showData$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object v5, v11

    .line 39
    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final bridge synthetic updateHeader(Landroid/os/Parcelable;)V
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;)V

    return-void
.end method

.method protected final updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;->getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->getTotal()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->setAmount(I)V

    .line 49
    check-cast p1, Landroid/os/Parcelable;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->updateHeader(Landroid/os/Parcelable;)V

    return-void
.end method
