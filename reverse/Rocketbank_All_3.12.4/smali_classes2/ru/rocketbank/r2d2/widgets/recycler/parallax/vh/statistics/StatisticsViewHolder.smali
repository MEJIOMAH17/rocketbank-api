.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "StatisticsViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatisticsViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatisticsViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n49#2,2:119\n1519#3,2:121\n*E\n*S KotlinDebug\n*F\n+ 1 StatisticsViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder\n*L\n55#1,2:119\n81#1,2:121\n*E\n"
.end annotation


# instance fields
.field private binding:Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

.field private collapsedModeActionName:Ljava/lang/String;

.field private data:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;

.field private fullMode:Z

.field private fullModeActionName:Ljava/lang/String;

.field private final inflatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->view:Landroid/view/View;

    const-string p1, ""

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullModeActionName:Ljava/lang/String;

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->collapsedModeActionName:Ljava/lang/String;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    .line 28
    new-instance p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->data:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;

    .line 29
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->view:Landroid/view/View;

    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    move-result-object p1

    const-string v0, "LayoutGeneralStatisticsBinding.bind(view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    .line 30
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->data:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;->setData(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticHandler;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;->setHandler(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticHandler;)V

    .line 33
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final destroyView(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;)V
    .locals 1

    const-string v0, "statisticItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object p1

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->root:Landroid/widget/RelativeLayout;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCollapsedModeActionName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->collapsedModeActionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullModeActionName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullModeActionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getInflatedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOrInflate(I)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;
    .locals 1

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "inflatedViews.get(index)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflateItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;

    move-result-object p1

    return-object p1
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public final inflateItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;
    .locals 4

    .line 105
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;->statisticsContainer:Landroid/widget/LinearLayout;

    const-string v3, "binding.statisticsContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "statisticsAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapsedModeActionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullModeActionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    .line 38
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->collapsedModeActionName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullModeActionName:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->rebuildView()V

    return-void
.end method

.method public final onModeSwitch()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullMode:Z

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->rebuildView()V

    return-void
.end method

.method public final rebuildView()V
    .locals 9

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->data:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;->getModeName()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-boolean v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullModeActionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->collapsedModeActionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->getFullList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->getShortList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 51
    check-cast v0, Ljava/util/List;

    goto :goto_2

    .line 55
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_4

    .line 119
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v2, 0x0

    .line 120
    new-array v3, v2, [Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_5
    check-cast v0, [Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    .line 57
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 58
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->getTotalItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_3
    if-ge v2, v4, :cond_9

    .line 63
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->getOrInflate(I)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;

    move-result-object v5

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    .line 66
    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getStatisticItem()Lru/rocketbank/r2d2/activities/operation/model/StatItem;

    move-result-object v7

    invoke-virtual {v6}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->setAmount(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getStatisticItem()Lru/rocketbank/r2d2/activities/operation/model/StatItem;

    move-result-object v7

    invoke-virtual {v6}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/activities/operation/model/StatItem;->setMonth(Ljava/lang/String;)V

    .line 69
    iget-object v7, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->statisticsAdapter:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->getTotalItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v1

    :goto_4
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    goto :goto_5

    :cond_8
    const/4 v6, 0x7

    .line 71
    :goto_5
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v7

    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object v8

    iget-object v8, v8, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->amount:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v7, v6, v8}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface(ILandroid/widget/TextView;)V

    .line 72
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v7

    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object v8

    iget-object v8, v8, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->forMonth:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v7, v6, v8}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface(ILandroid/widget/TextView;)V

    .line 74
    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object v6

    iget-object v6, v6, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->amount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6}, Lru/rocketbank/core/widgets/RocketTextView;->invalidate()V

    .line 75
    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object v6

    iget-object v6, v6, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->forMonth:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6}, Lru/rocketbank/core/widgets/RocketTextView;->invalidate()V

    .line 77
    invoke-virtual {v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;->getBinding()Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    move-result-object v6

    invoke-virtual {v6}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;->invalidateAll()V

    .line 78
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 81
    :cond_9
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;

    .line 82
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 83
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->destroyView(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder$StaticElement;)V

    goto :goto_6

    .line 87
    :cond_b
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->inflatedViews:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setCollapsedModeActionName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->collapsedModeActionName:Ljava/lang/String;

    return-void
.end method

.method public final setFullModeActionName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->fullModeActionName:Ljava/lang/String;

    return-void
.end method
