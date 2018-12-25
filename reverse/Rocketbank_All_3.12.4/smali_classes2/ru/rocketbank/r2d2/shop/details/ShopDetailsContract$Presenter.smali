.class public interface abstract Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$Presenter;
.super Ljava/lang/Object;
.source "ShopDetailsContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopPresenterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract addToCart(Lru/rocketbank/core/model/shop/ShopItem;)V
.end method

.method public abstract onCartButtonClick()V
.end method

.method public abstract selectColor(Lru/rocketbank/core/model/shop/Color;)V
.end method

.method public abstract selectSize(Lru/rocketbank/core/model/shop/Size;)V
.end method
