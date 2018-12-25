.class final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder$bind$1;
.super Ljava/lang/Object;
.source "ShopCartAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder$bind$1;->$item:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder$bind$1;->$item:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
