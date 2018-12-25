.class public interface abstract Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;
.super Ljava/lang/Object;
.source "ShopCartContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopPresenterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract checkout()V
.end method

.method public abstract load(Z)V
.end method

.method public abstract onInfoClick()V
.end method

.method public abstract onItemClick(Lru/rocketbank/core/model/shop/CartItem;)V
.end method

.method public abstract remove(Lru/rocketbank/core/model/shop/CartItem;)V
.end method
