.class public final Lru/rocketbank/core/pay/samsung/RxSPay;
.super Ljava/lang/Object;
.source "RxSPay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/pay/samsung/RxSPay$Status;,
        Lru/rocketbank/core/pay/samsung/RxSPay$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxSPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxSPay.kt\nru/rocketbank/core/pay/samsung/RxSPay\n*L\n1#1,185:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/pay/samsung/RxSPay$Companion;


# instance fields
.field private final cardType:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final issuerName:Ljava/lang/String;

.field private final partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

.field private final samsungPay:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

.field private final serviceId:Ljava/lang/String;

.field private final tsp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/pay/samsung/RxSPay$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/pay/samsung/RxSPay;->Companion:Lru/rocketbank/core/pay/samsung/RxSPay$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->context:Landroid/content/Context;

    .line 23
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->context:Landroid/content/Context;

    const v0, 0x7f110435

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->serviceId:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->context:Landroid/content/Context;

    const v0, 0x7f11024b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->issuerName:Ljava/lang/String;

    const-string p1, "DEBIT"

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->cardType:Ljava/lang/String;

    const-string p1, "MC"

    .line 27
    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->tsp:Ljava/lang/String;

    .line 34
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "PartnerServiceType"

    .line 35
    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;->APP2APP:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->serviceId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    .line 40
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->context:Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->samsungPay:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    return-void
.end method

.method public static final synthetic access$getCardType$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->cardType:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCards(Lru/rocketbank/core/pay/samsung/RxSPay;)Lrx/Observable;
    .locals 1

    .line 1116
    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    const-string v0, "Observable.create { subs\u2026      }\n\n        })\n    }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getIssuerName$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->issuerName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPartnerInfo$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->partnerInfo:Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    return-object p0
.end method

.method public static final synthetic access$getSamsungPay$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->samsungPay:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    return-object p0
.end method

.method public static final synthetic access$getTsp$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/pay/samsung/RxSPay;->tsp:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final activateApp()Lrx/Completable;
    .locals 2

    .line 107
    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$activateApp$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/samsung/RxSPay$activateApp$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V

    check-cast v0, Lrx/Completable$OnSubscribe;

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    const-string v1, "Completable.create {\n   \u2026   it.onCompleted()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final addCard(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/pay/samsung/AddCardResult;",
            ">;"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay;Ljava/lang/String;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.create<AddCar\u2026out(60, TimeUnit.SECONDS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final checkCard(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/pay/samsung/RxSPay$Status;",
            ">;"
        }
    .end annotation

    const-string v0, "maskedPan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create { subs\u2026      }\n\n        })\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay;Ljava/lang/String;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 156
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    const-string v0, "getSPayStatus().flatMap \u2026out(60, TimeUnit.SECONDS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateApp()Lrx/Completable;
    .locals 2

    .line 102
    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$updateApp$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/samsung/RxSPay$updateApp$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V

    check-cast v0, Lrx/Completable$OnSubscribe;

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    const-string v1, "Completable.create {\n   \u2026   it.onCompleted()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
