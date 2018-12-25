.class public interface abstract Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;
.super Ljava/lang/Object;
.source "ShopFeedContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract hideCartButton()V
.end method

.method public abstract onItemsEmpty()V
.end method

.method public abstract onItemsLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemsLoadingError()V
.end method

.method public abstract onLoadingInProgress()V
.end method

.method public abstract showCart()V
.end method

.method public abstract showCartButton(I)V
.end method

.method public abstract showItemInfo(Lru/rocketbank/core/model/shop/ShopItem;)V
.end method
