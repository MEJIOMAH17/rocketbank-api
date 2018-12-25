.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "GenericBarChartViewHolder.kt"


# instance fields
.field private final barChartView:Lru/rocketbank/core/widgets/BarChartView;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/widgets/BarChartView$Adapter;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09013b

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.BarChartView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/core/widgets/BarChartView;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    .line 12
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/BarChartView;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/BarChartView;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    return-void
.end method
