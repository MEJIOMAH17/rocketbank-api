.class final Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopCartPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->remove(Lru/rocketbank/core/model/shop/CartItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/shop/Cart;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cartItem:Lru/rocketbank/core/model/shop/CartItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lru/rocketbank/core/model/shop/Cart;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->invoke(Lru/rocketbank/core/model/shop/Cart;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->onItemDeleted(Lru/rocketbank/core/model/shop/CartItem;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Cart;->getAmount()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->updateAmount(D)V

    .line 67
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$getMiles$p(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/model/shop/Cart;->getDeficit(D)D

    move-result-wide v0

    .line 68
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {v2, v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$updateDeficit(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;D)V

    .line 69
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Cart;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$cartIsEmpty(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)V

    :cond_2
    return-void
.end method
