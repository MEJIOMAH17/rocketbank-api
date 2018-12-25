.class final Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;
.super Ljava/lang/Object;
.source "RemoveCartItemInteractor.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->getObservable()Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/model/shop/Cart;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->getCartItem()Lru/rocketbank/core/model/shop/CartItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/shop/CartStorage;->delete(Lru/rocketbank/core/model/shop/CartItem;)V

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->getCartItem()Lru/rocketbank/core/model/shop/CartItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/shop/Cart;->remove(Lru/rocketbank/core/model/shop/CartItem;)V

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
