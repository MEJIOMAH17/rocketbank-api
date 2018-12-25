.class public interface abstract Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;
.super Ljava/lang/Object;
.source "ShopOrderContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract back()V
.end method

.method public abstract onConfirmed(Lru/rocketbank/core/model/shop/Cart;)V
.end method

.method public abstract setConfirmButtonEnabled(Z)V
.end method

.method public abstract showAddresses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/AddressData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAmount(D)V
.end method

.method public abstract showShopInfo()V
.end method
