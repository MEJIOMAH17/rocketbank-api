.class public interface abstract Lru/rocketbank/core/manager/TouchManager;
.super Ljava/lang/Object;
.source "TouchManager.kt"


# virtual methods
.method public abstract clearListener()V
.end method

.method public abstract close()V
.end method

.method public abstract gotPermissions()Z
.end method

.method public abstract gotValidToken()Z
.end method

.method public abstract hasFingerPrints()Z
.end method

.method public abstract initialize(Z)Z
.end method

.method public abstract invalidateToken()V
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isHardwareDetected()Z
.end method

.method public abstract isLockScreenEnabled()Z
.end method

.method public abstract refreshTouchToken()V
.end method

.method public abstract requestPermission$3ef636dc(Landroid/app/Activity;)V
.end method

.method public abstract setListener(Lru/rocketbank/core/manager/security/RocketFingerPrintListener;)V
.end method

.method public abstract setPermission(Ljava/lang/String;)V
.end method
