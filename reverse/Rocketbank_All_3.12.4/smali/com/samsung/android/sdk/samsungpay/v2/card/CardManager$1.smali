.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;
.super Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;
.source "CardManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->addCard(Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

.field final synthetic val$addCardInfo:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

.field final synthetic val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iput-object p5, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;

    iput-object p6, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->val$addCardInfo:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 2

    const-string v0, "SPAYSDK:CardManager"

    const-string v1, "failed aidl connection:addCards "

    .line 1473
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->processRequestWithFail(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void
.end method

.method public final onReceivedStub(Ljava/lang/Object;)V
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    check-cast p1, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->processRequestWithSuccess(Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;)V

    return-void
.end method

.method public final run(ILandroid/os/Bundle;)V
    .locals 3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const-string p2, "SPAYSDK:CardManager"

    const-string v0, "addCard init error "

    .line 455
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;

    const/16 p2, -0x67

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;->onFail(ILandroid/os/Bundle;)V

    return-void

    .line 460
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;B)V

    .line 461
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->val$addCardInfo:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$AddCardInfoListenerInternal;->set(Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V

    .line 464
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->addToRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V

    .line 466
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$100(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->connectStub(Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;)V

    return-void
.end method
