.class public interface abstract Lru/rocketbank/r2d2/shop/order/ShopOrderContract$Presenter;
.super Ljava/lang/Object;
.source "ShopOrderContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopPresenterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract confirm()V
.end method

.method public abstract haveQuestion()V
.end method

.method public abstract init(Lru/rocketbank/core/model/shop/Cart;)V
.end method

.method public abstract onAddressTyped(Ljava/lang/String;)V
.end method

.method public abstract onResult(Z)V
.end method
