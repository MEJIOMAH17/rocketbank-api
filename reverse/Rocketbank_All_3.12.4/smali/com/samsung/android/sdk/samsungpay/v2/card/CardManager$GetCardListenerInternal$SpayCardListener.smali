.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;
.super Lcom/samsung/android/sdk/samsungpay/v2/card/ISGetCardListener$Stub;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpayCardListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISGetCardListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;B)V
    .locals 0

    .line 1328
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "GetCardListenerInternal"

    const-string v0, "onFail: "

    .line 1345
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$800(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1348
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$800(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1350
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 1351
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->sendMsgForGetCardListener(Ljava/lang/Object;IILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onSuccess(Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/samsungpay/v2/card/Card;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "GetCardListenerInternal"

    const-string v0, "onSuccess: "

    .line 1333
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$800(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1335
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$800(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1337
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 1338
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$1002(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Ljava/util/List;)Ljava/util/List;

    .line 1339
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal$SpayCardListener;->this$1:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    invoke-static {p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->access$900(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;->callbackObj:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->sendMsgForGetCardListener(Ljava/lang/Object;IILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
