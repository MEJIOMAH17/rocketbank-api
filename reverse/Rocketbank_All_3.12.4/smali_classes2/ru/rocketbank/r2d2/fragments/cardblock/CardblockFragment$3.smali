.class Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;
.super Lrx/Subscriber;
.source "CardblockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->onBlockRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/CardBlockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

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

    .line 227
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$300(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    .line 228
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_1

    .line 229
    move-object v0, p1

    check-cast v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 230
    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$400(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$500(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$500(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    .line 240
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, Lru/rocketbank/core/network/model/CardBlockResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->onNext(Lru/rocketbank/core/network/model/CardBlockResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/network/model/CardBlockResponse;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$300(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$600(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    .line 247
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$100(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/AccountModel;->setUserStatus(Lru/rocketbank/core/model/enums/Status;)V

    .line 249
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$100(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne p1, v0, :cond_0

    .line 250
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$700(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/UserModel;->setUserStatus(Lru/rocketbank/core/model/enums/Status;)V

    .line 251
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/CardBlockActivity;->start(Landroid/content/Context;Z)V

    .line 252
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 255
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 256
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
