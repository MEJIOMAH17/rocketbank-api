.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;
.super Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.source "BarCharViewHolder.kt"


# instance fields
.field private final barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

.field private final barChartView:Lru/rocketbank/core/widgets/BarChartView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;Landroid/view/View;)V
    .locals 1

    const-string v0, "barChartAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    const p1, 0x7f09013b

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.BarChartView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/BarChartView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    .line 12
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    check-cast p2, Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/BarChartView;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final getBarChartAdapter()Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    return-object v0
.end method

.method public final getBarChartView()Lru/rocketbank/core/widgets/BarChartView;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/BarCharViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    return-object v0
.end method
