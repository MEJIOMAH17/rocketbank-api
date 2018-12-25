.class public final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;
.super Lrx/Subscriber;
.source "SmsConfirmationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showPrivacy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/PrivacyResponse;",
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

    .line 228
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

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

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->hideProgressDialog()V

    .line 236
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 237
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u0432\u044f\u0437\u044f\u0430\u0442\u044c\u0441\u044f \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c"

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$showNetworkErrorDialog(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    .line 241
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    const-string v0, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0441\u0435\u0442\u0438"

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$showNetworkErrorDialog(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$showNetworkErrorDialog(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    const-string v0, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$showNetworkErrorDialog(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Lru/rocketbank/core/model/PrivacyResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->onNext(Lru/rocketbank/core/model/PrivacyResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/PrivacyResponse;)V
    .locals 5

    const-string v0, "privacyResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    .line 259
    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    check-cast v1, Landroid/content/Context;

    .line 260
    invoke-virtual {p1}, Lru/rocketbank/core/model/PrivacyResponse;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 261
    new-instance v2, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;)V

    check-cast v2, Lrx/functions/Action0;

    .line 264
    new-instance v3, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;

    invoke-direct {v3, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$2;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;)V

    check-cast v3, Lrx/functions/Action0;

    .line 272
    new-instance v4, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$3;

    invoke-direct {v4, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1$onNext$3;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;)V

    check-cast v4, Lrx/functions/Action0;

    .line 258
    invoke-static {v1, p1, v2, v3, v4}, Lru/rocketbank/r2d2/helpers/UIHelper;->showPrivacyDialog(Landroid/content/Context;Ljava/lang/String;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->access$setAlertDialog$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Landroid/support/v7/app/AlertDialog;)V

    .line 278
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;->this$0:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 280
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
