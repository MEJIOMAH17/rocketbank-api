.class public final Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;
.super Ljava/lang/Object;
.source "UtilsModule_ProvidesTouchManagerFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/TouchManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

.field private final rocketAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 23
    iput-object p2, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;->rocketAPIProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    .line 1029
    iget-object v0, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;->rocketAPIProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/RocketAPI;

    iget-object v1, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesTouchManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "rocketAPI"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    new-instance v2, Lru/rocketbank/core/manager/security/TouchManagerImpl;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/manager/security/TouchManagerImpl;-><init>(Lru/rocketbank/core/network/api/RocketAPI;Landroid/content/Context;)V

    check-cast v2, Lru/rocketbank/core/manager/TouchManager;

    return-object v2
.end method
