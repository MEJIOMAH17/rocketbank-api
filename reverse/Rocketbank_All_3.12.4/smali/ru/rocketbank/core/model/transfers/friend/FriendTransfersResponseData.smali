.class public Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "FriendTransfersResponseData.java"


# instance fields
.field private status:Ljava/lang/Object;

.field private urls:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrls()Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;->urls:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    return-object v0
.end method

.method public setUrls(Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;->urls:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    return-void
.end method
