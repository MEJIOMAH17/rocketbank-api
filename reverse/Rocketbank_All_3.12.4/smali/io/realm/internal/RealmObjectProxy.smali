.class public interface abstract Lio/realm/internal/RealmObjectProxy;
.super Ljava/lang/Object;
.source "RealmObjectProxy.java"

# interfaces
.implements Lio/realm/RealmModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/RealmObjectProxy$CacheData;
    }
.end annotation


# virtual methods
.method public abstract realm$injectObjectContext()V
.end method

.method public abstract realmGet$proxyState()Lio/realm/ProxyState;
.end method
