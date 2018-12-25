.class public final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SmsConfirmationActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $numpad:Lru/rocketbank/core/widgets/RocketNumpad;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/widgets/RocketNumpad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/widgets/RocketNumpad;",
            ")V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;->$numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClear()V
    .locals 2

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$getSmsInput$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/widgets/RocketSMSInput;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSInput;->regroup()V

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;->$numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketNumpad;->setEraseEnabled(Z)V

    return-void
.end method

.method public final onNumber(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$getSmsInput$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/widgets/RocketSMSInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketSMSInput;->appendNumber(I)V

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;->$numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketNumpad;->setEraseEnabled(Z)V

    return-void
.end method

.method public final onReset()V
    .locals 0

    return-void
.end method
