.class final Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;
.super Ljava/lang/Object;
.source "AddToCartInteractor.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/model/shop/Cart;",
            ">;)V"
        }
    .end annotation

    .line 14
    new-instance v7, Lru/rocketbank/core/model/shop/CartItem;

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getShopItem()Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object v1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getSize()Lru/rocketbank/core/model/shop/Size;

    move-result-object v3

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getColor()Lru/rocketbank/core/model/shop/Color;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/model/shop/CartItem;-><init>(Lru/rocketbank/core/model/shop/ShopItem;Ljava/lang/Long;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;ILkotlin/jvm/internal/Ref;)V

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lru/rocketbank/core/model/shop/CartStorage;->save(Lru/rocketbank/core/model/shop/CartItem;)V

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {v0, v7}, Lru/rocketbank/core/model/shop/Cart;->add(Lru/rocketbank/core/model/shop/CartItem;)V

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
