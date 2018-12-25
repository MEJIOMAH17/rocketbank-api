.class public final Lcom/mikepenz/materialdrawer/R$id;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/CurrencyManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lru/rocketbank/core/dagger/CurrencyModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/CurrencyModule;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/R$id;->module:Lru/rocketbank/core/dagger/CurrencyModule;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2018
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/R$id;->module:Lru/rocketbank/core/dagger/CurrencyModule;

    .line 3017
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/CurrencyModule;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 3048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2018
    :cond_0
    check-cast v0, Lru/rocketbank/core/manager/CurrencyManager;

    return-object v0
.end method
