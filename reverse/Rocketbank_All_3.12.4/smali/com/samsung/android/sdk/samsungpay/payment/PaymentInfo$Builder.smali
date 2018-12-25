.class public final Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;
.super Ljava/lang/Object;
.source "PaymentInfo.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/HeaderManager;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final appInfoManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AppInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private final authStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AuthorizationStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final geolocationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/GeolocationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/GeolocationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/AppInfoManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/AuthorizationStorage;",
            ">;)V"
        }
    .end annotation

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 1027
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->geolocationManagerProvider:Ljavax/inject/Provider;

    .line 1028
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->appInfoManagerProvider:Ljavax/inject/Provider;

    .line 1029
    iput-object p4, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->authStorageProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .line 2034
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->geolocationManagerProvider:Ljavax/inject/Provider;

    .line 2036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/GeolocationManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->appInfoManagerProvider:Ljavax/inject/Provider;

    .line 2037
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/AppInfoManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Builder;->authStorageProvider:Ljavax/inject/Provider;

    .line 2038
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/user/AuthorizationStorage;

    const-string v3, "geolocationManager"

    .line 2035
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appInfoManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authStorage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2067
    new-instance v3, Lru/rocketbank/core/manager/HeaderManager;

    invoke-direct {v3, v2, v1, v0}, Lru/rocketbank/core/manager/HeaderManager;-><init>(Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/AppInfoManager;Lru/rocketbank/core/manager/GeolocationManager;)V

    .line 2034
    check-cast v3, Lru/rocketbank/core/manager/HeaderManager;

    return-object v3
.end method
