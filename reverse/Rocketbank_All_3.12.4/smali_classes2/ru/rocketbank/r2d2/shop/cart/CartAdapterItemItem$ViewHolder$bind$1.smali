.class final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;
.super Ljava/lang/Object;
.source "ShopCartAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cartItem:Lru/rocketbank/core/model/shop/CartItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;->this$0:Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;->this$0:Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->getOnItemClick()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
