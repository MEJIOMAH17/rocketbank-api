.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->getType()I

    move-result p1

    return p1
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;->bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 44
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemOperationBi\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 43
    :pswitch_0
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;

    move-result-object p1

    const-string v0, "AnalyticsEmptyBinding.in\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 42
    :pswitch_1
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation$TagOperationViewHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemTagOperatio\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation$TagOperationViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 41
    :pswitch_2
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemMerchantOpe\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 37
    :pswitch_3
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemOperationBi\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 40
    :pswitch_4
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection$ItemViewSectionHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemSectionBind\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection$ItemViewSectionHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 39
    :pswitch_5
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemSectionPers\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 38
    :pswitch_6
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemChartBindin\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    .line 36
    :pswitch_7
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    move-result-object p1

    const-string v0, "AnalyticsItemHeaderBindi\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;-><init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
