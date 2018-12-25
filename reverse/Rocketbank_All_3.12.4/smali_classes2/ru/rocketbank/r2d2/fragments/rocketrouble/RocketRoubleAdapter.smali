.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RocketRoubleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

.field private bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

.field private final feedItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/core/model/RocketRubleHistoryOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final feedView:Landroid/support/v7/widget/RecyclerView;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

.field private final sortedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback<",
            "Lru/rocketbank/core/model/RocketRubleHistoryOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final stickyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/RocketRubleHistoryOperation;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;)V
    .locals 1

    const-string v0, "feedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "barChartAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketRoubleModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedView:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    .line 31
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 35
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    .line 37
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 38
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$1;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;)V

    check-cast p1, Landroid/support/v7/util/SortedList$Callback;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 76
    new-instance p1, Landroid/support/v7/util/SortedList;

    const-class p2, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->sortedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    return-void
.end method

.method public static final synthetic access$getStickyItems$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getItem(I)Lru/rocketbank/core/model/RocketRubleHistoryOperation;
    .locals 2

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object p1

    .line 152
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "stickyItems[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    return-object p1

    .line 157
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "feedItems.get(position - stickySize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    return-object p1
.end method

.method private final onBindActual(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    .line 257
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p2

    .line 258
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->setContent(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->setName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 262
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->setNoAction()V

    .line 263
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    const-string v2, "moneyData.currencyCode"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, p2, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method private final onBindBar(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V
    .locals 0

    if-nez p1, :cond_0

    .line 236
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.rocketrouble.BarCharViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;

    .line 237
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->getBarChartView()Lru/rocketbank/core/widgets/BarChartView;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    check-cast p2, Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/BarChartView;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    return-void
.end method

.method private final onBindDelimiter(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V
    .locals 2

    if-nez p1, :cond_0

    .line 241
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.rocketrouble.DelimiterViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;

    .line 242
    invoke-virtual {p2}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/operation/DelimiterOperation;

    if-eqz p2, :cond_1

    .line 243
    invoke-virtual {p2}, Lru/rocketbank/core/model/operation/DelimiterOperation;->getType()I

    move-result v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;->getDELIMITER_AVALIABLE()I

    move-result v1

    if-ne v0, v1, :cond_1

    const p2, 0x7f110074

    .line 244
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;->setText(I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 245
    invoke-virtual {p2}, Lru/rocketbank/core/model/operation/DelimiterOperation;->getType()I

    move-result v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;->getDELIMITER_STATISTICS()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 246
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object p2

    const-string v0, "userData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3043
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 4029
    invoke-virtual {p2}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object p2

    .line 3043
    invoke-virtual {v0, p2}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object p2

    .line 3017
    invoke-virtual {p2}, Lru/rocketbank/core/model/enums/Cobrand;->getStatisticsTitle()I

    move-result p2

    .line 246
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;->setText(I)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 247
    invoke-virtual {p2}, Lru/rocketbank/core/model/operation/DelimiterOperation;->getType()I

    move-result v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;->getDELIMITER_DYNAMIC()I

    move-result v1

    if-ne v0, v1, :cond_3

    const p2, 0x7f11033c

    .line 248
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;->setText(I)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 249
    invoke-virtual {p2}, Lru/rocketbank/core/model/operation/DelimiterOperation;->getType()I

    move-result p2

    sget-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;->getDELIMITER_SHOP()I

    move-result v0

    if-ne p2, v0, :cond_4

    const p2, 0x7f110415

    .line 250
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;->setText(I)V

    return-void

    :cond_4
    const p2, 0x7f1103e2

    .line 252
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;->setText(I)V

    return-void
.end method

.method private final onBindRocketRubleOperation(Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 2

    .line 222
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 224
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getCompensation_status()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getCompensation_status()Ljava/lang/String;

    move-result-object p2

    const-string v0, "completed"

    .line 226
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 227
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->setConfirmationStatus(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 229
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->setComment(Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMimimiles()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->setRocketRoubles(D)V

    .line 232
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final onBindRocketshop(Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$onBindRocketshop$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$onBindRocketshop$1;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;->bind(Lru/rocketbank/core/realm/UserData;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onBindStatisticsOperation(Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/operation/StatisticsOperation;)V
    .locals 7

    .line 197
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->resetAll()V

    if-eqz p3, :cond_9

    .line 198
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 202
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyModeList()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p3}, Lru/rocketbank/core/model/operation/StatisticsOperation;->getMonths()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 206
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "dateTime"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->addMonth(Lru/rocketbank/core/model/UserModel;Ljava/lang/Float;Ljava/util/Calendar;)V

    .line 207
    invoke-virtual {p2, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 210
    invoke-virtual {p3}, Lru/rocketbank/core/model/operation/StatisticsOperation;->getMonths()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 212
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p3}, Lru/rocketbank/core/model/operation/StatisticsOperation;->getMonths()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    const-string v6, "dateTime"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->addMonth(Lru/rocketbank/core/model/UserModel;Ljava/lang/Float;Ljava/util/Calendar;)V

    .line 213
    invoke-virtual {p2, v2, v1}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    :cond_7
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez p2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {p3}, Lru/rocketbank/core/model/operation/StatisticsOperation;->getTotal()Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->addForAllTime(Lru/rocketbank/core/model/UserModel;Ljava/lang/Float;)V

    .line 218
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->addMode()V

    return-void

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public final addBottom(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    .line 311
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getCleanSize()I

    move-result p1

    .line 312
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final addItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V
    .locals 2

    const-string v0, "loadingItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 305
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public final addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemChanged(I)V

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 330
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 350
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 352
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final clearTop()V
    .locals 1

    .line 356
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 358
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getCleanSize()I
    .locals 2

    .line 279
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 267
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getCleanSize()I

    move-result v0

    .line 268
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 282
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 283
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getType()I

    move-result p1

    return p1

    .line 286
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 288
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getType()I

    move-result p1

    return p1

    .line 291
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getType()I

    move-result p1

    return p1
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method public final getUserModel()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getItem(I)Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    move-result-object v0

    .line 163
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getItemViewType(I)I

    move-result p2

    const v1, -0x21124111

    if-eq p2, v1, :cond_d

    .line 168
    sget-object v1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_NO_COMPENSATION()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 169
    move-object p2, p1

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 1021
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->METROPOLIS:Lru/rocketbank/core/model/enums/Cobrand;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x453b8000    # 3000.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 172
    :goto_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getMiles()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 174
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    float-to-double v4, v0

    sget-object v0, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 2105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v1, v4, v5, v0, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110253

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "holder.itemView.context.\u2026ing.left_to_absorb, rmon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->setLeftText(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_3
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;->hide()V

    return-void

    .line 183
    :cond_4
    sget-object v1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_STATISTICS()I

    move-result v1

    if-ne p2, v1, :cond_5

    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/operation/StatisticsOperation;

    invoke-direct {p0, p1, v0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindStatisticsOperation(Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/operation/StatisticsOperation;)V

    return-void

    .line 184
    :cond_5
    sget-object v1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_HISTORY()I

    move-result v1

    if-ne p2, v1, :cond_7

    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p2, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, v0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindRocketRubleOperation(Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    .line 185
    :cond_7
    sget-object v1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_ACTUAL()I

    move-result v1

    if-ne p2, v1, :cond_a

    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    if-nez p2, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast p2, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, v0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindActual(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    .line 186
    :cond_a
    sget-object v1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v1

    if-ne p2, v1, :cond_b

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindDelimiter(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    return-void

    .line 187
    :cond_b
    sget-object v1, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_BAR()I

    move-result v1

    if-ne p2, v1, :cond_c

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindBar(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    return-void

    .line 188
    :cond_c
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_ROCKETSHOP()I

    move-result v0

    if-ne p2, v0, :cond_d

    check-cast p1, Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindRocketshop(Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;)V

    :cond_d
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 87
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_HEADER()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const p2, 0x7f0c014b

    .line 88
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto/16 :goto_0

    .line 92
    :cond_0
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_NO_COMPENSATION()I

    move-result v0

    if-ne p2, v0, :cond_1

    const p2, 0x7f0c00b6

    .line 93
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/NoOperationHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto/16 :goto_0

    .line 97
    :cond_1
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_HISTORY()I

    move-result v0

    const v2, 0x7f0c00b9

    if-ne p2, v0, :cond_2

    .line 98
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto/16 :goto_0

    .line 102
    :cond_2
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_OPERATION()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 103
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/HistoryViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto/16 :goto_0

    .line 107
    :cond_3
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_ROCKETSHOP()I

    move-result v0

    if-ne p2, v0, :cond_4

    const p2, 0x7f0c019f

    .line 108
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto/16 :goto_0

    .line 112
    :cond_4
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_STATISTICS()I

    move-result v0

    if-ne p2, v0, :cond_5

    const p2, 0x7f0c00ba

    .line 113
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 114
    new-instance p1, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    const-string p2, "layoutInflater"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedView:Landroid/support/v7/widget/RecyclerView;

    const-string p2, "view"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;Landroid/view/LayoutInflater;Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    move-object p2, p1

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto/16 :goto_0

    .line 117
    :cond_5
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_ACTUAL()I

    move-result v0

    if-ne p2, v0, :cond_6

    const p2, 0x7f0c00b8

    .line 118
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 119
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleOperationViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto :goto_0

    .line 122
    :cond_6
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_BAR()I

    move-result v0

    if-ne p2, v0, :cond_7

    const p2, 0x7f0c0198

    .line 123
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto :goto_0

    .line 127
    :cond_7
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v0

    if-ne p2, v0, :cond_8

    const p2, 0x7f0c011d

    .line 128
    invoke-virtual {v3, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/DelimiterViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    goto :goto_0

    .line 133
    :cond_8
    sget-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v0}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_NONE()I

    move-result v0

    const v2, 0x7f0c00b2

    if-ne p2, v0, :cond_9

    .line 134
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 139
    :cond_9
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 140
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public final removeBottom()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->bottomItem:Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    .line 318
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getCleanSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 319
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final removeItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V
    .locals 4

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 336
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 338
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->stickyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemRemoved(I)V

    .line 342
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 344
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, p1}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v1, v0

    .line 345
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method
