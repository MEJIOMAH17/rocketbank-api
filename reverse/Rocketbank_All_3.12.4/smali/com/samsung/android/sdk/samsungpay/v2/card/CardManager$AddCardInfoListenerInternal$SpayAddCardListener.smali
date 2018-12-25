.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;
.super Lcom/samsung/android/sdk/samsungpay/v2/card/ISAddCardListener$Stub;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpayAddCardListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISAddCardListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;B)V
    .locals 0

    .line 1425
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)V

    return-void
.end method


# virtual methods
.method public final onFail(ILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AddCardInfoInternal"

    const-string v1, "onFail: error: "

    .line 1442
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AddCardInfoInternal"

    const-string v1, "calling to clean up from mRequestTracker"

    .line 1444
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    iget-object v1, v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->sendMsgForAddCardListener(Ljava/lang/Object;IIILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onProgress(IILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AddCardInfoInternal"

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyProgress: currentCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AddCardInfoInternal"

    const-string v1, "calling to clean up from mRequestTracker"

    .line 1456
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    iget-object v1, v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    const/4 v3, 0x2

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->sendMsgForAddCardListener(Ljava/lang/Object;IIILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onSuccess(ILcom/samsung/android/sdk/samsungpay/v2/card/Card;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AddCardInfoInternal"

    const-string v1, "onSuccess: status: "

    .line 1429
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AddCardInfoInternal"

    const-string v1, "calling to clean up from mRequestTracker"

    .line 1431
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1435
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    iget-object v0, v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$1702(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Lcom/samsung/android/sdk/samsungpay/v2/card/Card;)Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    .line 1436
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    iget-object v0, p2, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal$SpayAddCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    invoke-static {p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->access$1600(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p2

    iget-object v1, p2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->sendMsgForAddCardListener(Ljava/lang/Object;IIILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
