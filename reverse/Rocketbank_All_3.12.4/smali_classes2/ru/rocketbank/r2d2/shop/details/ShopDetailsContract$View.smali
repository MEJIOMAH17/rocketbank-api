.class public interface abstract Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;
.super Ljava/lang/Object;
.source "ShopDetailsContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract hideAddToCartButton()V
.end method

.method public abstract showAddToCartButton()V
.end method

.method public abstract showAddToCartMessage()V
.end method

.method public abstract showCart()V
.end method
