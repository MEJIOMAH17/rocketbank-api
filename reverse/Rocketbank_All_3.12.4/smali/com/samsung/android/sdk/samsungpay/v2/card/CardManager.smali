.class public final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;
.super Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;,
        Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;,
        Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;
    }
.end annotation


# instance fields
.field private cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

.field private mBinderToSdk:Landroid/os/Binder;

.field private mCard:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

.field private mCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/samsungpay/v2/card/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected mHanderForInternalListener:Landroid/os/Handler;

.field private final mHandlerForSessionCallback:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V

    .line 1472
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$5;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHanderForInternalListener:Landroid/os/Handler;

    .line 1679
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHandlerForSessionCallback:Landroid/os/Handler;

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "CardManager()"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SPAYSDK:CardManager"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Partner SDK version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%d.%d.%02d"

    const/4 v3, 0x3

    .line 2582
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->isValidContextAndServiceId(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 243
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context and PartnerInfo.serviceId have to be set"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3260
    :cond_0
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mBinderToSdk:Landroid/os/Binder;

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->setData(Landroid/os/Bundle;)V

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "sdkVersion"

    const-string v1, "%d.%d.%02d"

    .line 3582
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "binder"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mBinderToSdk:Landroid/os/Binder;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 256
    new-instance p2, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mCards:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mCards:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)Lcom/samsung/android/sdk/samsungpay/v2/card/Card;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mCard:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Lcom/samsung/android/sdk/samsungpay/v2/card/Card;)Lcom/samsung/android/sdk/samsungpay/v2/card/Card;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mCard:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHandlerForSessionCallback:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;I)V
    .locals 3

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "showUpdateCardSheet()"

    .line 4627
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4630
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Service;

    if-eqz v1, :cond_0

    const-string v1, "SPAYSDK:CardManager"

    const-string v2, "Context is of service"

    .line 4631
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x10000000

    .line 4632
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "SPAYSDK:CardManager"

    const-string v2, "Context is of Activity"

    .line 4634
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x20000000

    .line 4635
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4638
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->access$1900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "callerUid"

    .line 4639
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "sdkVersion"

    const/4 v1, 0x2

    .line 4640
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4642
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.sdk.samsungpay.test"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "SPAYSDK:CardManager"

    const-string p2, "Context is part of instrumentation test, do not show payment sheet."

    .line 4643
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4645
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4648
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p0, "SPAYSDK:CardManager"

    const-string p2, "activity not found and return error"

    .line 4649
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4651
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->access$2300(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V
    .locals 1

    .line 5262
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->isValidStub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5263
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->getStub()Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5265
    invoke-interface {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;->terminateSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5270
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->disConnectStub()V

    return-void
.end method


# virtual methods
.method public final addCard(Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;)V
    .locals 9

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "addCard() : SDK API Level = 1.2"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v2, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v5

    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_2:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;)V

    return-void
.end method

.method public final getAllCards(Landroid/os/Bundle;Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;)V
    .locals 9

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "getAllCards() : SDK API Level = 1.1"

    .line 645
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v2, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v5

    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_1:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final processRequestWithFail(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 6

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "processRequestWithFail"

    .line 1277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    .line 1280
    monitor-enter v0

    .line 1281
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ErrorString"

    .line 1282
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SPAYSDK:CardManager"

    const-string v1, "No pending requests"

    .line 1285
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    monitor-exit v0

    return-void

    .line 1289
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getRequestList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    const-string v3, "SPAYSDK:CardManager"

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processPendingRequests: opt: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    const/16 v4, -0x67

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1298
    :pswitch_0
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-interface {v2, v4, v1}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onFail(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1302
    :pswitch_1
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;

    invoke-interface {v2, v4, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;->onFail(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1294
    :pswitch_2
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;

    invoke-interface {v2, v4, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;->onFail(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1309
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->clearRequestTracker()V

    .line 1311
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1312
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->disConnectStub()V

    .line 1314
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final processRequestWithSuccess(Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;)V
    .locals 7

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "processRequestWithSuccess"

    .line 1167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    .line 1170
    monitor-enter v0

    .line 1171
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SPAYSDK:CardManager"

    const-string v1, "No pending requests"

    .line 1172
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    monitor-exit v0

    return-void

    .line 1176
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1177
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    const-string v3, "SPAYSDK:CardManager"

    .line 1179
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processPendingRequests size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getRequestList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", partnerRequest : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->isPartnerRequestProcessing()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SPAYSDK:CardManager"

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cmd pop : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    sget-object v3, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;->PROCESSING:Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->setPartnerRequestState(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest$PartnerRequestState;)V

    .line 1184
    iget v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    const/4 v4, -0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1230
    :pswitch_1
    iget-object v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj1:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    .line 1233
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1234
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->setData(Landroid/os/Bundle;)V

    .line 1236
    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->getInitiateSessionCallback()Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback$InitiateSessionCallback;

    move-result-object v4

    invoke-interface {p1, v2, v4, v3}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;->initiateSessionWithCardInfo(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/ISInitiateSessionCallback;Lcom/samsung/android/sdk/samsungpay/v2/card/Card;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 1241
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "SPAYSDK:CardManager"

    const-string v3, "initiateSession failed"

    .line 1242
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_0

    .line 1201
    :pswitch_2
    iget-object v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj2:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;

    .line 1202
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Ljava/util/Iterator;)V

    .line 1206
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v3, v6}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;->verifyCardIdv(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;Lcom/samsung/android/sdk/samsungpay/v2/ISStatusListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    .line 1208
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1209
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onFail(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1214
    :pswitch_3
    iget-object v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj2:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    .line 1215
    iget-object v5, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj1:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

    .line 1216
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1218
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Ljava/util/Iterator;)V

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->getAddCardListener()Lcom/samsung/android/sdk/samsungpay/v2/card/ISAddCardListener;

    move-result-object v3

    invoke-interface {p1, v6, v5, v3}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;->addCard(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/ISAddCardListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    .line 1221
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1222
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;->onFail(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1186
    :pswitch_4
    iget-object v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj1:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1187
    iget-object v5, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj2:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    .line 1188
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1190
    :try_start_7
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Ljava/util/Iterator;)V

    .line 1191
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->getCardListener()Lcom/samsung/android/sdk/samsungpay/v2/card/ISGetCardListener;

    move-result-object v5

    invoke-interface {p1, v6, v3, v5}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;->getAllCards(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Landroid/os/Bundle;Lcom/samsung/android/sdk/samsungpay/v2/card/ISGetCardListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    .line 1194
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1195
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;->onFail(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "SPAYSDK:CardManager"

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PartnerRequest "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is now processing"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1252
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1253
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->disConnectStub()V

    .line 1255
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final sendMsgForAddCardListener(Ljava/lang/Object;IIILandroid/os/Bundle;)V
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHanderForInternalListener:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1552
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1553
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1554
    iput p3, v0, Landroid/os/Message;->arg1:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1558
    :pswitch_0
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 1562
    :pswitch_1
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1565
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHanderForInternalListener:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final sendMsgForGetCardListener(Ljava/lang/Object;IILandroid/os/Bundle;)V
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHanderForInternalListener:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1523
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1524
    iput p2, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1527
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1528
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1531
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->mHanderForInternalListener:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
