.class final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SmsConfirmationActivity.kt"

# interfaces
.implements Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSms(Ljava/lang/String;)V
    .locals 1

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$getSmsInput$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/widgets/RocketSMSInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketSMSInput;->setCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
