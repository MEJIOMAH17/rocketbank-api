.class public final Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;
.super Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;
.source "SamsungPay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$StatusListenerInternal;
    }
.end annotation


# instance fields
.field protected mHanderForInternalListener:Landroid/os/Handler;

.field private samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V
    .locals 10

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V

    .line 782
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$5;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->mHanderForInternalListener:Landroid/os/Handler;

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "SamsungPay()"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SPAYSDK:SamsungPay"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Partner SDK version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%d.%d.%02d"

    const/4 v3, 0x3

    .line 1582
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

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->isValidContextAndServiceId(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 83
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context and PartnerInfo.serviceId have to be set."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->setData(Landroid/os/Bundle;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "sdkVersion"

    const-string v1, "%d.%d.%02d"

    .line 2582
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

    .line 90
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance p2, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;)Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;

    return-object p0
.end method


# virtual methods
.method public final activateSamsungPay()V
    .locals 4

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "activateSamsungPay() : SDK API Level = 1.1"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$3;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_1:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$3;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final getSamsungPayStatus(Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;)V
    .locals 8

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "getSamsungPayStatus()"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v2, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v5

    const-string v6, "1.4"

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;)V

    return-void
.end method

.method public final goToUpdatePage()V
    .locals 4

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "goToUpdatePage() : SDK API Level = 1.2"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_2:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected final processRequestWithFail(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 6

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "processRequestWithFail"

    .line 683
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker$Singleton;->access$100()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    .line 686
    monitor-enter v0

    .line 687
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SPAYSDK:SamsungPay"

    const-string v1, "No pending requests"

    .line 688
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    monitor-exit v0

    return-void

    .line 692
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ErrorString"

    .line 693
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getRequestList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 696
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 697
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    const-string v3, "SPAYSDK:SamsungPay"

    .line 698
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

    .line 700
    iget v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    const/16 v4, -0x67

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_1
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-interface {v2, v4, v1}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onFail(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 702
    :pswitch_2
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-interface {v2, v4, v1}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onFail(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->clearRequestTracker()V

    .line 715
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 716
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->disConnectStub()V

    .line 718
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
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final processRequestWithSuccess(Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;)V
    .locals 7

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "processPendingRequests"

    .line 626
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker$Singleton;->access$100()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    .line 629
    monitor-enter v0

    .line 630
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SPAYSDK:SamsungPay"

    const-string v1, "No pending requests"

    .line 631
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit v0

    return-void

    .line 635
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 636
    :cond_1
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    const-string v3, "SPAYSDK:SamsungPay"

    .line 638
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

    .line 640
    iget v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->operation:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_1
    iget-object v3, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->obj1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 660
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 662
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Ljava/util/Iterator;)V

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v6

    invoke-interface {p1, v6, v3, v5}, Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;->getWalletInfo(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/util/List;Lcom/samsung/android/sdk/samsungpay/v2/ISStatusListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 665
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 666
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onFail(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 667
    :goto_1
    :try_start_3
    throw p1

    .line 642
    :pswitch_2
    iget-object v2, v2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 644
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getPartnerInfo()Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;->getSamsungPayStatus(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)Lcom/samsung/android/sdk/samsungpay/v2/Status;

    move-result-object v3

    .line 645
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Ljava/util/Iterator;)V

    if-eqz v3, :cond_1

    .line 647
    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsungpay/v2/Status;->getStatus()I

    move-result v6

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsungpay/v2/Status;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onSuccess(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 650
    :try_start_5
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 651
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onFail(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 673
    :cond_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 674
    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 675
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->disConnectStub()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 673
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
