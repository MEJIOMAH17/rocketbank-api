.class public Lru/rocketbank/r2d2/friends/FriendsStatusActivity;
.super Lru/rocketbank/r2d2/activities/StatusActivity;
.source "FriendsStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/activities/StatusActivity<",
        "Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "KEY_DATA"

.field private static final KEY_IS_TRANSFER:Ljava/lang/String; = "KEY_IS_TRANSFER"


# instance fields
.field private data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

.field private isTransfer:Z

.field private operationApi:Lru/rocketbank/core/network/api/OperationApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/app/Activity;Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;Z)Landroid/content/Intent;
    .locals 3

    if-eqz p2, :cond_0

    const v0, 0x7f110488

    goto :goto_0

    :cond_0
    const v0, 0x7f1103ba

    .line 31
    :goto_0
    sget-object v1, Lru/rocketbank/r2d2/activities/StatusActivity;->Companion:Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    const-class v2, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;

    invoke-virtual {v1, p0, v2, v0}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "KEY_DATA"

    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "KEY_IS_TRANSFER"

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method protected getOperation()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;",
            ">;"
        }
    .end annotation

    .line 69
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->isTransfer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/OperationApi;->sendMoney(Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/OperationApi;->refillMoney(Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected getSuccessStatusText()I
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->isRocket()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1103cf

    return v0

    .line 55
    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->isTransfer:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1102e8

    return v0

    :cond_1
    const v0, 0x7f1102e7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_IS_TRANSFER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->isTransfer:Z

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    .line 64
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0

    .line 19
    check-cast p1, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->onSuccess(Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;)V

    return-void
.end method

.method protected onSuccess(Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onSuccess(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->isRocket()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->finish()V

    .line 42
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->isTransfer:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;->getUrls()Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    invoke-static {p1, v0, p0}, Lru/rocketbank/r2d2/friends/TransferRequestActivity;->start(Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;Landroid/content/Context;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;->getUrls()Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    invoke-static {p1, v0, p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->start(Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
