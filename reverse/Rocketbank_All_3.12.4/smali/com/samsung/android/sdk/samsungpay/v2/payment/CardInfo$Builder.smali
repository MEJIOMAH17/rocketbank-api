.class public final Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;
.super Ljava/lang/Object;
.source "CardInfo.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/AnalyticsManager;",
        ">;"
    }
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final fbLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/facebook/appevents/AppEventsLogger;",
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
            "Lru/rocketbank/core/manager/AppInfoManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/facebook/appevents/AppEventsLogger;",
            ">;)V"
        }
    .end annotation

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 1028
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->contextProvider:Ljavax/inject/Provider;

    .line 1029
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->appInfoManagerProvider:Ljavax/inject/Provider;

    .line 1030
    iput-object p4, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->fbLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .line 2035
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->contextProvider:Ljavax/inject/Provider;

    .line 2037
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->appInfoManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/manager/AppInfoManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/CardInfo$Builder;->fbLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/AppEventsLogger;

    const-string v3, "context"

    .line 2036
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appInfoManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fbLogger"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2055
    new-instance v3, Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-direct {v3, v0, v1, v2}, Lru/rocketbank/core/manager/AnalyticsManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/manager/AppInfoManager;Lcom/facebook/appevents/AppEventsLogger;)V

    .line 2035
    check-cast v3, Lru/rocketbank/core/manager/AnalyticsManager;

    return-object v3
.end method
