.class public final Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;
.super Ljava/lang/Object;
.source "RocketFingerPrintListener.kt"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/security/RocketFingerPrintListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/user/Authorization;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AnalyticsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final authorizationStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AuthorizationStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final bankAccountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/BankAccountManager;",
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

.field private final dataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/DataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/UserModule;

.field private final userApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/UserApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/UserModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/UserApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AuthorizationStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/DataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AnalyticsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/BankAccountManager;",
            ">;)V"
        }
    .end annotation

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-object p1, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->module:Lru/rocketbank/core/dagger/UserModule;

    .line 1039
    iput-object p2, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->contextProvider:Ljavax/inject/Provider;

    .line 1040
    iput-object p3, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->userApiProvider:Ljavax/inject/Provider;

    .line 1041
    iput-object p4, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->authorizationStorageProvider:Ljavax/inject/Provider;

    .line 1042
    iput-object p5, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->dataManagerProvider:Ljavax/inject/Provider;

    .line 1043
    iput-object p6, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 1044
    iput-object p7, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->bankAccountManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 7

    .line 2049
    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->contextProvider:Ljavax/inject/Provider;

    .line 2051
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->userApiProvider:Ljavax/inject/Provider;

    .line 2052
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lru/rocketbank/core/network/api/UserApi;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->authorizationStorageProvider:Ljavax/inject/Provider;

    .line 2053
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lru/rocketbank/core/user/AuthorizationStorage;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->dataManagerProvider:Ljavax/inject/Provider;

    .line 2054
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lru/rocketbank/core/manager/DataManager;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 2055
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lru/rocketbank/core/manager/AnalyticsManager;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener$DefaultImpls;->bankAccountManagerProvider:Ljavax/inject/Provider;

    .line 2056
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lru/rocketbank/core/manager/BankAccountManager;

    .line 2050
    invoke-static/range {v1 .. v6}, Lru/rocketbank/core/dagger/UserModule;->provideAuthorization(Landroid/content/Context;Lru/rocketbank/core/network/api/UserApi;Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/DataManager;Lru/rocketbank/core/manager/AnalyticsManager;Lru/rocketbank/core/manager/BankAccountManager;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    .line 2049
    check-cast v0, Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method
