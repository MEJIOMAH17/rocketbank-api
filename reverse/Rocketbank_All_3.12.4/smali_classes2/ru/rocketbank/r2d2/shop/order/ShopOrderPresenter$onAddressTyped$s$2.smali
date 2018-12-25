.class final Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$2;->this$0:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->showAddresses(Ljava/util/List;)V

    :cond_0
    return-void
.end method
