.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;
.source "AnalyticsMerchantFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment<",
        "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final KEY_ANALYTICS_MERCHANT:Ljava/lang/String; = "KEY_ANALYTICS_MERCHANT"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private analyticsMerchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm, dd MMMM yyyy"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDATE_FORMAT$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final addOperations(Ljava/util/List;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
            ">;",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;",
            "Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 65
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->getAvatars()[Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    xor-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 67
    :goto_0
    new-instance v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;

    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->analyticsMerchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    if-nez v3, :cond_2

    const-string v4, "analyticsMerchant"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "analyticsMerchant.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->getOperations()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 69
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 70
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Friend;->getUserpicUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 72
    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    .line 74
    :goto_2
    new-instance v10, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    .line 75
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move-object v4, v3

    goto :goto_5

    :cond_8
    :goto_4
    const-string v3, ""

    goto :goto_3

    .line 76
    :goto_5
    sget-object v3, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getHappenedAt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    move-object v6, v2

    .line 78
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v1

    :goto_6
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_b
    move-object v3, v1

    :goto_7
    invoke-virtual {p0, v2, v3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->format(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_c

    .line 80
    new-instance v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;Lru/rocketbank/core/model/dto/operations/Operation;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v9, v2

    goto :goto_8

    :cond_c
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$2;->INSTANCE:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v9, v0

    :goto_8
    move-object v3, v10

    move v8, p3

    .line 74
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public static final createArguments(Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;Ljava/util/Calendar;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;->createArguments(Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;Ljava/util/Calendar;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 41
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;->inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;

    move-result-object p1

    const-string p2, "FragmentAnalyticsBaseBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "FragmentAnalyticsBaseBin\u2026ng.inflate(inflater).root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic hasData(Landroid/os/Parcelable;)Z
    .locals 0

    .line 20
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;)Z

    move-result p1

    return p1
.end method

.method protected final hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;)Z
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->getTotal()Ljava/lang/Double;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    cmpg-double p1, v2, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "KEY_ANALYTICS_MERCHANT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->analyticsMerchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    .line 37
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final request(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;",
            ">;"
        }
    .end annotation

    const-string v0, "dateFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->analyticsMerchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    if-nez v1, :cond_0

    const-string v2, "analyticsMerchant"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Lru/rocketbank/core/network/api/AnalyticsApi;->analyticsOperations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;

    move-result-object p1

    const-string p2, "analyticsApi.analyticsOp\u2026.id.toString(), jointIds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic showData(Landroid/os/Parcelable;)V
    .locals 0

    .line 20
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;)V

    return-void
.end method

.method protected final showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->getMine()Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->addOperations(Ljava/util/List;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Z)V

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->getJoint()Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->addOperations(Ljava/util/List;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Z)V

    return-void
.end method

.method public final bridge synthetic updateHeader(Landroid/os/Parcelable;)V
    .locals 0

    .line 20
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;)V

    return-void
.end method

.method protected final updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->getTotal()Ljava/lang/Double;

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

    .line 55
    check-cast p1, Landroid/os/Parcelable;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->updateHeader(Landroid/os/Parcelable;)V

    return-void
.end method
