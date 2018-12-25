.class final Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor$observable$1;
.super Ljava/lang/Object;
.source "ClearCartInteractor.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;->getObservable()Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor$observable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/model/shop/Cart;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/shop/CartStorage;->clear()V

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/shop/Cart;->clear()V

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor$observable$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ClearCartInteractor;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
