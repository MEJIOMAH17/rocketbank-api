.class public Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;
.super Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;
.source "RefillRequestAmountFragment.java"


# instance fields
.field private operationApi:Lru/rocketbank/core/network/api/OperationApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;
    .locals 3

    .line 13
    new-instance v0, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;-><init>()V

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contact"

    .line 16
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public accountsVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNextButtonText()I
    .locals 1

    const v0, 0x7f1101f4

    return v0
.end method

.method protected isTransfer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->getAmountString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->disableNextButton()V

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->getAmount()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->isZero(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->disableNextButton()V

    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->enableNextButton()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-void
.end method
