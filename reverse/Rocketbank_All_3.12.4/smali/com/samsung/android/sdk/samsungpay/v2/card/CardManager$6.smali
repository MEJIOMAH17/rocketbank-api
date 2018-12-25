.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;
.super Landroid/os/Handler;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Landroid/os/Looper;)V
    .locals 0

    .line 1679
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1684
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1697
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    .line 1698
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1699
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->access$2300(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1700
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$2500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V

    :goto_0
    return-void

    .line 1690
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    .line 1691
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1692
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->getInstance()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    move-result-object p1

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;->access$2300(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;->removeFromRequestTracker(Lcom/samsung/android/sdk/samsungpay/v2/PartnerRequest;)Z

    .line 1693
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$2500(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;)V

    return-void

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$6;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->access$2400(Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager$UpdateServiceSessionCallback;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
