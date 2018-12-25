.class public Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;
.super Ljava/lang/Object;
.source "FriendTransfersResponseUrls.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private defaultUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private emails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->defaultUrl:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->emails:Ljava/util/Map;

    .line 21
    iput-object p3, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->phones:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->defaultUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->emails:Ljava/util/Map;

    return-object v0
.end method

.method public getPhones()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->phones:Ljava/util/Map;

    return-object v0
.end method

.method public setDefaultUrl(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->defaultUrl:Ljava/lang/String;

    return-void
.end method

.method public setEmails(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->emails:Ljava/util/Map;

    return-void
.end method

.method public setPhones(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->phones:Ljava/util/Map;

    return-void
.end method
