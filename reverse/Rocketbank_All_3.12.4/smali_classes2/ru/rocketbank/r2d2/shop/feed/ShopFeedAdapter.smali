.class public final Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopFeedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ANIMATED_ITEMS_COUNT:I

.field private animateItems:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnimatedPosition:I

.field private final onItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x2

    .line 14
    iput p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->ANIMATED_ITEMS_COUNT:I

    const/4 p2, -0x1

    .line 16
    iput p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->lastAnimatedPosition:I

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->items:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final runEnterAnimation(Landroid/view/View;I)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->animateItems:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->ANIMATED_ITEMS_COUNT:I

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->lastAnimatedPosition:I

    if-le p2, v0, :cond_1

    .line 43
    iput p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->lastAnimatedPosition:I

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "view.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 47
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getOnItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->runEnterAnimation(Landroid/view/View;I)V

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->bind(Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 27
    new-instance v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object p1

    const-string p2, "ShopListItemBinding.infl\u2026tInflater, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/ShopListItemBinding;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->items:Ljava/util/List;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->animateItems:Z

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedAdapter;->notifyDataSetChanged()V

    return-void
.end method
