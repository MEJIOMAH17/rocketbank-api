.class public final Lru/rocketbank/core/receiver/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;
    }
.end annotation


# instance fields
.field private smsDelegate:Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/receiver/SmsReceiver;->smsDelegate:Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "pdus"

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 23
    instance-of p2, p1, [[B

    if-nez p2, :cond_1

    goto :goto_2

    .line 25
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 26
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 27
    check-cast v3, [B

    .line 28
    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 29
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 35
    :cond_4
    iget-object p2, p0, Lru/rocketbank/core/receiver/SmsReceiver;->smsDelegate:Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;

    if-eqz p2, :cond_5

    .line 36
    iget-object p2, p0, Lru/rocketbank/core/receiver/SmsReceiver;->smsDelegate:Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;

    invoke-interface {p2, p1}, Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;->onSms(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method
