.class public final Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;
.super Ljava/lang/Object;
.source "PaymentInfo.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/DataManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final currencyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/CurrencyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

.field private final providersApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/ProvidersApi;",
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
            "Lru/rocketbank/core/manager/CurrencyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/network/api/ProvidersApi;",
            ">;)V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 1023
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;->currencyManagerProvider:Ljavax/inject/Provider;

    .line 1024
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;->providersApiProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    .line 2029
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;->currencyManagerProvider:Ljavax/inject/Provider;

    .line 2030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/CurrencyManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Address$Builder;->providersApiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/api/ProvidersApi;

    const-string v2, "currencyManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "providersApi"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    new-instance v2, Lru/rocketbank/core/manager/DataManager;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/manager/DataManager;-><init>(Lru/rocketbank/core/manager/CurrencyManager;Lru/rocketbank/core/network/api/ProvidersApi;)V

    .line 2029
    check-cast v2, Lru/rocketbank/core/manager/DataManager;

    return-object v2
.end method
