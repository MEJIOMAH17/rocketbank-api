.class public Lru/rocketbank/core/realm/RealmWidgetFriend;
.super Lio/realm/RealmObject;
.source "RealmWidgetFriend.kt"

# interfaces
.implements Lio/realm/RealmWidgetFriendRealmProxyInterface;


# instance fields
.field private firstName:Ljava/lang/String;

.field private id:I

.field private lastName:Ljava/lang/String;

.field private userpicUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public realmGet$firstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->id:I

    return v0
.end method

.method public realmGet$lastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$userpicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->userpicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$firstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->firstName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->id:I

    return-void
.end method

.method public realmSet$lastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->lastName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$userpicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmWidgetFriend;->userpicUrl:Ljava/lang/String;

    return-void
.end method
