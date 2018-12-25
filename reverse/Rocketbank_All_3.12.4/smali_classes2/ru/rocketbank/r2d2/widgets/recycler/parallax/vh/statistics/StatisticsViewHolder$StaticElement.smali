.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;
.super Ljava/lang/Object;
.source "StatisticsViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticElement"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

.field private final statisticItem:Lru/rocketbank/r2d2/activities/operation/model/StatItem;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lru/rocketbank/r2d2/activities/operation/model/StatItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/operation/model/StatItem;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->statisticItem:Lru/rocketbank/r2d2/activities/operation/model/StatItem;

    const/4 v0, 0x1

    .line 113
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object p1

    const-string p2, "LayoutStatisticsItemBind\u2026utInflater, parent, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->binding:Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->binding:Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->statisticItem:Lru/rocketbank/r2d2/activities/operation/model/StatItem;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->setItem(Lru/rocketbank/r2d2/activities/operation/model/StatItem;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->binding:Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    return-object v0
.end method

.method public final getStatisticItem()Lru/rocketbank/r2d2/activities/operation/model/StatItem;
    .locals 1

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->statisticItem:Lru/rocketbank/r2d2/activities/operation/model/StatItem;

    return-object v0
.end method
