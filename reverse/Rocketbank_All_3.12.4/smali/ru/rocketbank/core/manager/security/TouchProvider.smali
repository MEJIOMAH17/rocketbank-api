.class public interface abstract Lru/rocketbank/core/manager/security/TouchProvider;
.super Ljava/lang/Object;
.source "TouchProvider.kt"


# virtual methods
.method public abstract close()V
.end method

.method public abstract gotValidToken()Z
.end method

.method public abstract hasFingerprints()Z
.end method

.method public abstract hasHardware()Z
.end method

.method public abstract initialize(Z)Z
.end method

.method public abstract invalidateToken()V
.end method

.method public abstract isLockScreenEnabled()Z
.end method

.method public abstract isReadyTouch()Z
.end method

.method public abstract setListener(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lru/rocketbank/core/manager/security/RocketFingerPrintListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setToken(Ljava/lang/String;)V
.end method
