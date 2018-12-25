.class public interface abstract Lru/rocketbank/r2d2/Utils$OperationListener;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationListener"
.end annotation


# virtual methods
.method public abstract onRequestAccepted(Lru/rocketbank/core/model/dto/operations/Operation;)V
.end method

.method public abstract onRequestDeclined(Lru/rocketbank/core/model/dto/operations/Operation;)V
.end method

.method public abstract onTagClicked(Ljava/lang/String;)V
.end method
