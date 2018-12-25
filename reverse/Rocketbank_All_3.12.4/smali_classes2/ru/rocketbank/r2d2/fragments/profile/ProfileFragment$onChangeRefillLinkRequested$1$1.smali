.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/SetUsernameResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\nru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1\n*L\n1#1,1654:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $value:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1565
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->$value:Ljava/lang/String;

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

    .line 1571
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1573
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_0

    .line 1574
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1575
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v0, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043a\u0430 c \u0438\u043c\u0435\u043d\u0435\u043c %s \u0443\u0436\u0435 \u0437\u0430\u043d\u044f\u0442\u0430 =("

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->$value:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1565
    check-cast p1, Lru/rocketbank/core/model/SetUsernameResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->onNext(Lru/rocketbank/core/model/SetUsernameResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/SetUsernameResponse;)V
    .locals 3

    const-string v0, "setUsernameResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1581
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1583
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1585
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getUsername()Lru/rocketbank/core/model/UsernameModel;

    move-result-object v0

    const-string v1, "userModel1.username"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/UsernameModel;->setValue(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 1588
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e!"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1589
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getUsername()Lru/rocketbank/core/model/UsernameModel;

    move-result-object v0

    const-string v1, "userModel1.username"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/UsernameModel;->setValue(Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    :cond_0
    return-void
.end method
