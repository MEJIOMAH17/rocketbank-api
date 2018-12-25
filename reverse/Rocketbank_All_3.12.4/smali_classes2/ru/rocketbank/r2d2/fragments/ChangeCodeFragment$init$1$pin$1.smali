.class public final Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;
.super Lrx/Subscriber;
.source "ChangeCodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->pin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/ActivationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

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

    .line 200
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->hideProgressDialog()V

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$reset(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V

    .line 206
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_2

    .line 207
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 208
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewErrors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "textViewErrors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Lru/rocketbank/core/model/dto/ActivationResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->onNext(Lru/rocketbank/core/model/dto/ActivationResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/ActivationResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChangeActivity$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->hideProgressDialog()V

    .line 220
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 222
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 223
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getChange$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 229
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_3
    return-void

    .line 231
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    const-string v1, "user_feed"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object v1

    const-string v2, "response.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setLogin(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 235
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 238
    :cond_5
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$reset(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V

    .line 240
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getErrors()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewErrors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getErrors()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "textViewErrors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_6
    return-void

    .line 246
    :cond_7
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    const v0, 0x7f11012b

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    .line 247
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1$pin$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$1;->$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$reset(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Landroid/view/View;)V

    return-void
.end method
