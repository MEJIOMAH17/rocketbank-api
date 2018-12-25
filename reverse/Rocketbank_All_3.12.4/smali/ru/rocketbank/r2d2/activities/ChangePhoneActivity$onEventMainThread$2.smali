.class public final Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;
.super Lrx/Subscriber;
.source "ChangePhoneActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->onEventMainThread(Lru/rocketbank/core/events/PhoneNumberEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/PhoneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

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

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;

    .line 137
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->hideProgressDialog()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Lru/rocketbank/core/network/model/PhoneResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->onNext(Lru/rocketbank/core/network/model/PhoneResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PhoneResponse;)V
    .locals 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->hideProgressDialog()V

    .line 143
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PhoneResponse;->getResponse()Lru/rocketbank/core/model/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PhoneResponse;->getResponse()Lru/rocketbank/core/model/ResponseModel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/ResponseModel;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PhoneResponse;->getResponse()Lru/rocketbank/core/model/ResponseModel;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/ResponseModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PhoneResponse;->getSmsVerification()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v0

    if-nez v0, :cond_3

    .line 148
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->access$showRetryErrorSnackbarMessage(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)V

    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PhoneResponse;->getSmsVerification()Lru/rocketbank/core/model/ValidationModel;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->access$setSmsVerificationId$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;Ljava/lang/String;)V

    .line 154
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->phoneEnter()V

    .line 157
    sget-object v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->Companion:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->access$getSmsVerificationId$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;->this$0:Lru/rocketbank/r2d2/activities/ChangePhoneActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->access$getPhoneNumber$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MODE_VERIFY_PHONE"

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
