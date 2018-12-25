.class final Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;
.super Ljava/lang/Object;
.source "ShopCartPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->onCartLoaded(Lru/rocketbank/core/model/shop/Cart;)V
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
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cart:Lru/rocketbank/core/model/shop/Cart;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Lru/rocketbank/core/model/shop/Cart;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->$cart:Lru/rocketbank/core/model/shop/Cart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/UserModel;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getMiles()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$setMiles$p(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;D)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->$cart:Lru/rocketbank/core/model/shop/Cart;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Cart;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$cartIsEmpty(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)V

    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->$cart:Lru/rocketbank/core/model/shop/Cart;

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$getMiles$p(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/model/shop/Cart;->getDeficit(D)D

    move-result-wide v0

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->$cart:Lru/rocketbank/core/model/shop/Cart;

    invoke-interface {p1, v2, v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->onCartLoaded(Lru/rocketbank/core/model/shop/Cart;D)V

    .line 36
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$updateDeficit(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;D)V

    return-void
.end method
