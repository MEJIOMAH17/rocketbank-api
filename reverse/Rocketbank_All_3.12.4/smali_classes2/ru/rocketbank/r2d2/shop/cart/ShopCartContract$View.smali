.class public interface abstract Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;
.super Ljava/lang/Object;
.source "ShopCartContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract enableCheckoutButton(Z)V
.end method

.method public abstract hideDeficit()V
.end method

.method public abstract onCartLoaded(Lru/rocketbank/core/model/shop/Cart;D)V
.end method

.method public abstract onItemDeleted(Lru/rocketbank/core/model/shop/CartItem;)V
.end method

.method public abstract onItemsEmpty()V
.end method

.method public abstract onItemsLoadingError()V
.end method

.method public abstract onLoadingInProgress()V
.end method

.method public abstract showCheckoutActivity(Lru/rocketbank/core/model/shop/Cart;)V
.end method

.method public abstract showItemInfo(Lru/rocketbank/core/model/shop/ShopItem;)V
.end method

.method public abstract showRocketrublesInfo()V
.end method

.method public abstract updateAmount(D)V
.end method

.method public abstract updateDeficit(D)V
.end method
