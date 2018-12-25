.class public interface abstract Lru/rocketbank/core/manager/security/RocketFingerPrintListener;
.super Ljava/lang/Object;
.source "RocketFingerPrintListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onAuthenticationError(ILjava/lang/String;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(ILjava/lang/String;)V
.end method

.method public abstract onAuthenticationSucceeded(Ljava/lang/String;)V
.end method

.method public abstract onKeyNeedsForUpdate()V
.end method
