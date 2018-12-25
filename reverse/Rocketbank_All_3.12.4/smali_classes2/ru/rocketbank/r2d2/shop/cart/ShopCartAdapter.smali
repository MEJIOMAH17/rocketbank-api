.class public final Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopCartAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopCartAdapter.kt\nru/rocketbank/r2d2/shop/cart/ShopCartAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,193:1\n1246#2:194\n1315#2,3:195\n280#2,7:198\n*E\n*S KotlinDebug\n*F\n+ 1 ShopCartAdapter.kt\nru/rocketbank/r2d2/shop/cart/ShopCartAdapter\n*L\n48#1:194\n48#1,3:195\n112#1,7:198\n*E\n"
.end annotation


# static fields
.field private static final ANIMATED_ITEMS_COUNT:I = 0x4

.field public static final Companion:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter$Companion;


# instance fields
.field private amount:Landroid/databinding/ObservableDouble;

.field private animateItems:Z

.field private cartItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;"
        }
    .end annotation
.end field

.field private deficit:Landroid/databinding/ObservableDouble;

.field private infoButton:Landroid/view/View;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnimatedPosition:I

.field private final onDeleteItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onInfoClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->Companion:Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onInfoClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDeleteItemClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onInfoClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onDeleteItemClick:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->lastAnimatedPosition:I

    .line 35
    new-instance p1, Landroid/databinding/ObservableDouble;

    invoke-direct {p1}, Landroid/databinding/ObservableDouble;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->amount:Landroid/databinding/ObservableDouble;

    .line 36
    new-instance p1, Landroid/databinding/ObservableDouble;

    invoke-direct {p1}, Landroid/databinding/ObservableDouble;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->deficit:Landroid/databinding/ObservableDouble;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->cartItems:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    return-void
.end method

.method private final runEnterAnimation(Landroid/view/View;I)V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->animateItems:Z

    if-eqz v0, :cond_2

    sget v0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->ANIMATED_ITEMS_COUNT:I

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->lastAnimatedPosition:I

    if-le p2, v0, :cond_1

    .line 101
    iput p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->lastAnimatedPosition:I

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "view.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 105
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic setData$default(Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;Ljava/util/List;DDILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 40
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->setData(Ljava/util/List;DD)V

    return-void
.end method


# virtual methods
.method public final delete(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 5

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 200
    check-cast v3, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    .line 112
    instance-of v4, v3, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;

    if-eqz v4, :cond_0

    check-cast v3, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;->getCartItem()Lru/rocketbank/core/model/shop/CartItem;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 113
    :goto_2
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->cartItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final getAmount()Landroid/databinding/ObservableDouble;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->amount:Landroid/databinding/ObservableDouble;

    return-object v0
.end method

.method public final getCartItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->cartItems:Ljava/util/List;

    return-object v0
.end method

.method public final getDeficit()Landroid/databinding/ObservableDouble;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->deficit:Landroid/databinding/ObservableDouble;

    return-object v0
.end method

.method public final getInfoButton()Landroid/view/View;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->infoButton:Landroid/view/View;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->getType()I

    move-result p1

    return p1
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->runEnterAnimation(Landroid/view/View;I)V

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    sget-object v1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;->getITEM_TYPE_AMOUNT()I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    new-instance p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;

    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    move-result-object p1

    const-string v0, "ShopCartAmountBinding.in\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    return-object p2

    .line 77
    :cond_0
    sget-object v1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;->getITEM_TYPE_DEFICIT()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 78
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    move-result-object p1

    .line 79
    iget-object p2, p1, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->buttonQuestion:Landroid/widget/ImageButton;

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->infoButton:Landroid/view/View;

    .line 80
    new-instance p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    return-object p2

    .line 82
    :cond_1
    new-instance p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;

    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    move-result-object p1

    const-string v0, "ShopCartItemBinding.infl\u2026tInflater, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onDeleteItemClick:Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, p1, v0, v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    return-object p2
.end method

.method public final setAmount(Landroid/databinding/ObservableDouble;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->amount:Landroid/databinding/ObservableDouble;

    return-void
.end method

.method public final setCartItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->cartItems:Ljava/util/List;

    return-void
.end method

.method public final setData(Ljava/util/List;DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;DD)V"
        }
    .end annotation

    const-string v0, "cartItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->animateItems:Z

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->cartItems:Ljava/util/List;

    .line 43
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->amount:Landroid/databinding/ObservableDouble;

    invoke-virtual {v1, p2, p3}, Landroid/databinding/ObservableDouble;->set(D)V

    .line 44
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->deficit:Landroid/databinding/ObservableDouble;

    invoke-virtual {p2, p4, p5}, Landroid/databinding/ObservableDouble;->set(D)V

    .line 45
    new-array p2, v0, [Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    new-instance p3, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;

    iget-object p4, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->amount:Landroid/databinding/ObservableDouble;

    invoke-direct {p3, p4}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;-><init>(Landroid/databinding/ObservableDouble;)V

    check-cast p3, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    .line 46
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    new-instance p3, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;

    iget-object p4, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->deficit:Landroid/databinding/ObservableDouble;

    iget-object p5, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onInfoClick:Lkotlin/jvm/functions/Function0;

    invoke-direct {p3, p4, p5}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;-><init>(Landroid/databinding/ObservableDouble;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->notifyDataSetChanged()V

    .line 48
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 194
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 195
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 196
    check-cast p4, Lru/rocketbank/core/model/shop/CartItem;

    new-instance p5, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;

    .line 48
    invoke-direct {p5, p4}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;-><init>(Lru/rocketbank/core/model/shop/CartItem;)V

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_0
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/util/Collection;

    .line 48
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setDeficit(D)V
    .locals 4

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    instance-of v2, v2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;

    const-wide/16 v2, 0x0

    cmpg-double v0, p1, v2

    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 58
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->notifyItemRemoved(I)V

    return-void

    :cond_2
    if-nez v1, :cond_3

    .line 64
    new-instance v1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->deficit:Landroid/databinding/ObservableDouble;

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->onInfoClick:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v0, v2}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;-><init>(Landroid/databinding/ObservableDouble;Lkotlin/jvm/functions/Function0;)V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    :cond_3
    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;->getDeficit()Landroid/databinding/ObservableDouble;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/databinding/ObservableDouble;->set(D)V

    .line 69
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method

.method public final setDeficit(Landroid/databinding/ObservableDouble;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->deficit:Landroid/databinding/ObservableDouble;

    return-void
.end method

.method public final setInfoButton(Landroid/view/View;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->infoButton:Landroid/view/View;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartAdapter;->items:Ljava/util/List;

    return-void
.end method
