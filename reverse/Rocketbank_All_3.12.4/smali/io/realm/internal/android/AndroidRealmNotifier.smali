.class public Lio/realm/internal/android/AndroidRealmNotifier;
.super Lio/realm/internal/RealmNotifier;
.source "AndroidRealmNotifier.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Capabilities;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/realm/internal/RealmNotifier;-><init>(Lio/realm/internal/SharedRealm;)V

    .line 21
    invoke-interface {p2}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
