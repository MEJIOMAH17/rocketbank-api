.class public final Lcom/mikepenz/materialize/R$layout;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/GeolocationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lru/rocketbank/core/dagger/GeoLocationModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/GeoLocationModule;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lcom/mikepenz/materialize/R$layout;->module:Lru/rocketbank/core/dagger/GeoLocationModule;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2018
    iget-object v0, p0, Lcom/mikepenz/materialize/R$layout;->module:Lru/rocketbank/core/dagger/GeoLocationModule;

    .line 2019
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/GeoLocationModule;->provideAuthorization()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 2048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2018
    :cond_0
    check-cast v0, Lru/rocketbank/core/manager/GeolocationManager;

    return-object v0
.end method
