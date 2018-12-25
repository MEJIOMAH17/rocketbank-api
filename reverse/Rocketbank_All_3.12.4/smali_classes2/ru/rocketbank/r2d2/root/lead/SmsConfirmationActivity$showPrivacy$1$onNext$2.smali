.class final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;
.super Ljava/lang/Object;
.source "SmsConfirmationActivity.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->onNext(Lru/rocketbank/core/model/PrivacyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->startActivity(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$getAuthorization$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    const-string v1, "lead_status"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$getSmsData$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/model/SmsVerificationResponseData;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$saveUser(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/model/SmsVerificationResponseData;)V

    .line 269
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->setResult(I)V

    .line 270
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->finish()V

    return-void
.end method
