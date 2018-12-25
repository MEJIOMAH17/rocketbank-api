.class final Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;
.super Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->createService(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;-><init>()V

    return-void
.end method


# virtual methods
.method final runTimer()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;->isOverCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SPAYSDK:ServiceHelper"

    const-string v1, "Samsung Pay bind timeout and max retry is reached. Quit"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->access$000(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;->onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void

    :cond_0
    const-string v0, "SPAYSDK:ServiceHelper"

    const-string v1, "Samsung Pay bind timeout. Binder not available. trying again."

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindService()Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->access$000(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->callbackBindingResult(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void
.end method
