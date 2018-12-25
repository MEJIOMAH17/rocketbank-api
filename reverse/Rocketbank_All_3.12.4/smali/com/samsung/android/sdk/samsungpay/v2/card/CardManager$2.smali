.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;
.super Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;
.source "CardManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getAllCards(Landroid/os/Bundle;Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

.field final synthetic val$cardFilter:Landroid/os/Bundle;

.field final synthetic val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;Landroid/os/Bundle;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iput-object p5, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;

    iput-object p6, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->val$cardFilter:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->processRequestWithFail(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void
.end method

.method public final onReceivedStub(Ljava/lang/Object;)V
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    check-cast p1, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->processRequestWithSuccess(Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;)V

    return-void
.end method

.method public final run(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;->onFail(ILandroid/os/Bundle;)V

    const-string p2, "SPAYSDK:CardManager"

    const-string v0, "getAllCards init error "

    .line 656
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;

    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;B)V

    .line 661
    new-instance p2, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->val$cardFilter:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->val$cardFilter:Landroid/os/Bundle;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$GetCardListenerInternal;->set(Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V

    .line 664
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->addToRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V

    .line 666
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$100(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->connectStub(Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;)V

    return-void
.end method
