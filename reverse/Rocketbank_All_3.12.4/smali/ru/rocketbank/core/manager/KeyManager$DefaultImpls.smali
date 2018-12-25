.class public final Lru/rocketbank/core/manager/KeyManager$DefaultImpls;
.super Ljava/lang/Object;
.source "KeyManager.kt"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/user/AuthorizationStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/UserModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/UserModule;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/KeyManager;",
            ">;)V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lru/rocketbank/core/manager/KeyManager$DefaultImpls;->module:Lru/rocketbank/core/dagger/UserModule;

    .line 1018
    iput-object p2, p0, Lru/rocketbank/core/manager/KeyManager$DefaultImpls;->keyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2023
    iget-object v0, p0, Lru/rocketbank/core/manager/KeyManager$DefaultImpls;->keyManagerProvider:Ljavax/inject/Provider;

    .line 2024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/KeyManager;

    invoke-static {v0}, Lru/rocketbank/core/dagger/UserModule;->provideAuthStorage(Lru/rocketbank/core/manager/KeyManager;)Lru/rocketbank/core/user/AuthorizationStorage;

    move-result-object v0

    .line 2023
    check-cast v0, Lru/rocketbank/core/user/AuthorizationStorage;

    return-object v0
.end method
