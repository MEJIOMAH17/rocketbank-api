.class public interface abstract Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;
.super Ljava/lang/Object;
.source "FeedTransferToSafeListener.kt"

# interfaces
.implements Lru/rocketbank/core/utils/ButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract confirmClicked(Landroid/view/View;)V
.end method

.method public abstract infoClicked(Landroid/view/View;)V
.end method

.method public abstract onConfirmClicked()V
.end method

.method public abstract onInfoClicked()V
.end method
