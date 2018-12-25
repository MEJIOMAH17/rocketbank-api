.class final Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$1;
.super Ljava/lang/Object;
.source "ShopOrderPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->onAddressTyped(Ljava/lang/String;)V
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
        "Ljava/util/List<",
        "Lru/rocketbank/core/network/model/AddressData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$1;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$1;->call(Ljava/util/List;)V

    return-void
.end method

.method public final call(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/AddressData;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$1;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->showAddresses(Ljava/util/List;)V

    :cond_0
    return-void
.end method
