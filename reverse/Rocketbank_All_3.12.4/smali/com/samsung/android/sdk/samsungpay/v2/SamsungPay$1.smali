.class final Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;
.super Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;
.source "SamsungPay.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getSamsungPayStatus(Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

.field final synthetic val$listener:Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iput-object p5, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->processRequestWithFail(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    const-string p1, "SPAYSDK:SamsungPay"

    const-string v0, "getWalletInfo cannot connect service or wrong stub."

    .line 1259
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onReceivedStub(Ljava/lang/Object;)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    check-cast p1, Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->processRequestWithSuccess(Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;)V

    return-void
.end method

.method public final run(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string v0, "SPAYSDK:SamsungPay"

    const-string v1, "getSamsungPayStatus init error "

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SPAYSDK:SamsungPay"

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSamsungPayStatus init error - extra reason "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "errorReason"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;->onSuccess(ILandroid/os/Bundle;)V

    return-void

    .line 248
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->val$listener:Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;-><init>(Ljava/lang/Object;)V

    .line 1032
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker$Singleton;->access$100()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p2

    .line 249
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->addToRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)V

    .line 251
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->access$000(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;)Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->connectStub(Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;)V

    return-void
.end method
