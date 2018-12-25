.class public final Lru/rocketbank/core/R$string;
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
    name = "string"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/AppInfoManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final appInformationStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AppInformationStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/UserModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/UserModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AppInformationStorage;",
            ">;)V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lru/rocketbank/core/R$string;->module:Lru/rocketbank/core/dagger/UserModule;

    .line 1023
    iput-object p2, p0, Lru/rocketbank/core/R$string;->contextProvider:Ljavax/inject/Provider;

    .line 1024
    iput-object p3, p0, Lru/rocketbank/core/R$string;->appInformationStorageProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2029
    iget-object v0, p0, Lru/rocketbank/core/R$string;->contextProvider:Ljavax/inject/Provider;

    .line 2030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/core/R$string;->appInformationStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/user/AppInformationStorage;

    invoke-static {v0, v1}, Lru/rocketbank/core/dagger/UserModule;->provideAppInfoManager(Landroid/content/Context;Lru/rocketbank/core/user/AppInformationStorage;)Lru/rocketbank/core/manager/AppInfoManager;

    move-result-object v0

    .line 2029
    check-cast v0, Lru/rocketbank/core/manager/AppInfoManager;

    return-object v0
.end method
