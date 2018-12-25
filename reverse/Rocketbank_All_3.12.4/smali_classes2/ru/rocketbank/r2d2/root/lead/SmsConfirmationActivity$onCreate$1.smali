.class final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SmsConfirmationActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;


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

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCode(Ljava/lang/String;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$getSmsInput$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/widgets/RocketSMSInput;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSInput;->disableSmsInput()V

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    const-string v1, "code"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$requestSmsVerification(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V

    return-void
.end method
