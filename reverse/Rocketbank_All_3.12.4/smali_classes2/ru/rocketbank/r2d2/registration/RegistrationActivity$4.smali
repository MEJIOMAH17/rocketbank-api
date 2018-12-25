.class Lru/rocketbank/r2d2/registration/RegistrationActivity$4;
.super Lrx/Subscriber;
.source "RegistrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/RegistrationActivity;->requestUserStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/StatusResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->hideProgressDialog()V

    .line 199
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$200(Lru/rocketbank/r2d2/registration/RegistrationActivity;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$302(Lru/rocketbank/r2d2/registration/RegistrationActivity;Lrx/Subscription;)Lrx/Subscription;

    .line 209
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$400(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lru/rocketbank/core/widgets/RocketButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Lru/rocketbank/core/model/StatusResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->onNext(Lru/rocketbank/core/model/StatusResponseData;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/StatusResponseData;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$400(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lru/rocketbank/core/widgets/RocketButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->hideProgressDialog()V

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getPusherToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->setPusherToken(Ljava/lang/String;)V

    .line 228
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 234
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 239
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$500(Lru/rocketbank/r2d2/registration/RegistrationActivity;Lru/rocketbank/core/model/StatusResponseData;)V

    .line 241
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 242
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 243
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->access$302(Lru/rocketbank/r2d2/registration/RegistrationActivity;Lrx/Subscription;)Lrx/Subscription;

    :cond_4
    return-void
.end method
