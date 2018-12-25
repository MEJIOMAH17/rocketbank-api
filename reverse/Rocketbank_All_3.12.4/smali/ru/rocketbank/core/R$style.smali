.class public final Lru/rocketbank/core/R$style;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/user/AppInformationStorage;",
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

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lru/rocketbank/core/R$style;->module:Lru/rocketbank/core/dagger/UserModule;

    .line 1019
    iput-object p2, p0, Lru/rocketbank/core/R$style;->keyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2024
    iget-object v0, p0, Lru/rocketbank/core/R$style;->keyManagerProvider:Ljavax/inject/Provider;

    .line 2025
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/KeyManager;

    invoke-static {v0}, Lru/rocketbank/core/dagger/UserModule;->provideAppInfoStorage(Lru/rocketbank/core/manager/KeyManager;)Lru/rocketbank/core/user/AppInformationStorage;

    move-result-object v0

    .line 2024
    check-cast v0, Lru/rocketbank/core/user/AppInformationStorage;

    return-object v0
.end method
