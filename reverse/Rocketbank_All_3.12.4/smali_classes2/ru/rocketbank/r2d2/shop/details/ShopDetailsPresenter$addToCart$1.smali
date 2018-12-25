.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter$addToCart$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->addToCart(Lru/rocketbank/core/model/shop/ShopItem;)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter$addToCart$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lru/rocketbank/core/model/shop/Cart;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter$addToCart$1;->invoke(Lru/rocketbank/core/model/shop/Cart;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter$addToCart$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;->showAddToCartMessage()V

    :cond_0
    return-void
.end method
