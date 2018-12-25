.class public final Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;
.super Ljava/lang/Object;
.source "PaymentInfo.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/utils/MoneyFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorizationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
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


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/user/Authorization;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/CurrencyManager;",
            ">;)V"
        }
    .end annotation

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 1027
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->contextProvider:Ljavax/inject/Provider;

    .line 1028
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->authorizationProvider:Ljavax/inject/Provider;

    .line 1029
    iput-object p4, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->currencyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .line 2034
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->contextProvider:Ljavax/inject/Provider;

    .line 2036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->authorizationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/user/Authorization;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$Amount$Builder;->currencyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/manager/CurrencyManager;

    const-string v3, "context"

    .line 2035
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authorization"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "currencyManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3036
    new-instance v3, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 2034
    check-cast v3, Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v3
.end method
