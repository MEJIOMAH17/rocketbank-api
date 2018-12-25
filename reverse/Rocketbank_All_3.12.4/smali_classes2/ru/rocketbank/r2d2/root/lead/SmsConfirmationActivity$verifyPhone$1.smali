.class public final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;
.super Lrx/Subscriber;
.source "SmsConfirmationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyPhone(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    const-string v0, "ChangePhone"

    const-string v1, "failed"

    .line 354
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 347
    check-cast p1, Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->onNext(Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;)V
    .locals 2

    const-string v0, "smsVerificationPhoneResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$processResponseData(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;)V

    .line 359
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->hideProgressDialog()V

    .line 360
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f11037e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 362
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->setResult(I)V

    .line 363
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->finish()V

    return-void
.end method
