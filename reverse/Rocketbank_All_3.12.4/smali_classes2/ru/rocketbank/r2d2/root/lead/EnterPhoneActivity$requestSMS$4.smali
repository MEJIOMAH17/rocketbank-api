.class public final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;
.super Lrx/Subscriber;
.source "EnterPhoneActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->requestSMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/register/DeviceRegisterData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v1, 0x7f11018d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 123
    move-object v0, p1

    check-cast v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 125
    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    :goto_1
    new-instance v0, Lru/rocketbank/core/exceptions/EnterPhoneException;

    const-string v1, "fuuuuuuuuuuuck_server_error"

    invoke-direct {v0, v1, p1}, Lru/rocketbank/core/exceptions/EnterPhoneException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 131
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    new-instance v0, Lru/rocketbank/core/exceptions/EnterPhoneException;

    const-string v1, "fuuuuuuuuuuuck"

    invoke-direct {v0, v1, p1}, Lru/rocketbank/core/exceptions/EnterPhoneException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 135
    :goto_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->access$getButtonNext$p(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->hideProgressDialog()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Lru/rocketbank/core/model/register/DeviceRegisterData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->onNext(Lru/rocketbank/core/model/register/DeviceRegisterData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/register/DeviceRegisterData;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lru/rocketbank/core/model/register/DeviceRegisterData;->getSmsVerification()Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lru/rocketbank/core/model/register/DeviceRegisterData;->getSmsVerification()Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;

    move-result-object p1

    const-string v0, "data.smsVerification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/register/DeviceRegisterSmsVerification;->getId()Ljava/lang/String;

    move-result-object v3

    .line 143
    sget-object v1, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->Companion:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;

    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const/16 v4, 0x2248

    iget-object v5, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->$phoneNumber:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;->startForResult$default(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f110404

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 148
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$4;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->hideProgressDialog()V

    return-void
.end method
