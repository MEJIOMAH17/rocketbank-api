.class public final Lcom/mikepenz/materialdrawer/MiniDrawer;
.super Ljava/lang/Object;
.source "MiniDrawer.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/user/WidgetStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lru/rocketbank/core/dagger/UserModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/UserModule;)V
    .locals 0

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->module:Lru/rocketbank/core/dagger/UserModule;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2018
    invoke-static {}, Lru/rocketbank/core/dagger/UserModule;->provideWidgetStorage()Lru/rocketbank/core/user/WidgetStorage;

    move-result-object v0

    .line 2017
    check-cast v0, Lru/rocketbank/core/user/WidgetStorage;

    return-object v0
.end method
