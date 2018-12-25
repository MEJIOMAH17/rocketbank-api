.class public final Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;
.super Ljava/lang/Object;
.source "PaymentInfo.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/utils/fs/FileManager;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final appConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/AppConfig;",
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

.field private final module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/utils/AppConfig;",
            ">;)V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 1023
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;->contextProvider:Ljavax/inject/Provider;

    .line 1024
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;->appConfigProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    .line 2029
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;->contextProvider:Ljavax/inject/Provider;

    .line 2030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$Amount$Builder;->appConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/utils/AppConfig;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appConfig"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2073
    new-instance v2, Lru/rocketbank/core/utils/fs/FileManager;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/core/utils/fs/FileManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;)V

    .line 2029
    check-cast v2, Lru/rocketbank/core/utils/fs/FileManager;

    return-object v2
.end method
