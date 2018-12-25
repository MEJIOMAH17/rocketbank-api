.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;
.super Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.source "StatisticsViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final adapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

.field private final statisticsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;Landroid/view/LayoutInflater;Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "rocketRoubleModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p5}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->adapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p1, 0x7f090358

    .line 21
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.statisticsContainer)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    .line 22
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 23
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method


# virtual methods
.method public final addForAllTime(Lru/rocketbank/core/model/UserModel;Ljava/lang/Float;)V
    .locals 6

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const v2, 0x7f0c0145

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09004d

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    .line 33
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902f8

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    .line 37
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    const-string v3, "userData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v2}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v3, v2}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v2

    .line 1011
    invoke-virtual {v2}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 38
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addMode()V
    .locals 4

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0143

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090011

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 70
    move-object v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyModeList()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f1104d3

    .line 73
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f1100cb

    .line 75
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 77
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addMonth(Lru/rocketbank/core/model/UserModel;Ljava/lang/Float;Ljava/util/Calendar;)V
    .locals 6

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dateTime"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0c0144

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004d

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 49
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "itemView.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v3}, Lru/rocketbank/r2d2/utils/CalendarUtils;->forMonthString(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 50
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v5, p1, :cond_1

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const p1, 0x7f090181

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 55
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double v3, p3

    const-string p3, ""

    invoke-virtual {p1, v3, v4, p3, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0902f8

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 63
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 4029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 3043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 3011
    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v0

    .line 63
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 64
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getAdapter()Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->adapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    return-object v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyModeList()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->setFullMoneyModeList(Z)V

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->adapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->notifyItemChanged(I)V

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final resetAll()V
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/StatisticsViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method
