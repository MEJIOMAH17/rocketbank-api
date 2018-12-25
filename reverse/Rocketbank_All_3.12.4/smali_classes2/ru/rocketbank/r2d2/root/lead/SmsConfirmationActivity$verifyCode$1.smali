.class public final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;
.super Lrx/Subscriber;
.source "SmsConfirmationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/SmsVerificationResponseData;",
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

    .line 325
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 325
    check-cast p1, Lru/rocketbank/core/model/SmsVerificationResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;->onNext(Lru/rocketbank/core/model/SmsVerificationResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/SmsVerificationResponseData;)V
    .locals 1

    const-string v0, "smsVerificationResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$processResponseData(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/model/SmsVerificationResponseData;)V

    .line 336
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->hideProgressDialog()V

    return-void
.end method
