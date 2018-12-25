.class Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;
.super Lrx/Subscriber;
.source "EnterPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$600(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)V

    .line 159
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 160
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 161
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericResponse()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v2, v2, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$view:Landroid/view/View;

    invoke-static {v0, v2}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$300(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V

    .line 167
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$textViewErrors:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$textViewErrors:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$300(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lru/rocketbank/core/model/dto/ActivationResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->onNext(Lru/rocketbank/core/model/dto/ActivationResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/dto/ActivationResponse;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$700(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)V

    .line 182
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 184
    iget-object v2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v2, v2, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 187
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v1, v1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    const-string v2, "user_feed"

    invoke-virtual {v1, v2}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v1, v1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 190
    sget-object p1, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    new-instance p1, Lru/rocketbank/core/events/PinActivationEvent;

    invoke-direct {p1}, Lru/rocketbank/core/events/PinActivationEvent;-><init>()V

    invoke-static {p1}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0434\u0430\u043d\u043d\u044b\u0435"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->this$0:Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1$1;->this$1:Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->access$300(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V

    return-void
.end method
