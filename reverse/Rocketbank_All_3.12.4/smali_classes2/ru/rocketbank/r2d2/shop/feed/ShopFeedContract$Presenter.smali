.class public interface abstract Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$Presenter;
.super Ljava/lang/Object;
.source "ShopFeedContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/ShopPresenterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract loadItems()V
.end method

.method public abstract onCartButtonClick()V
.end method

.method public abstract onItemClick(Lru/rocketbank/core/model/shop/ShopItem;)V
.end method
