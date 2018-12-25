.class public Lru/rocketbank/core/realm/RealmFriend;
.super Lio/realm/RealmObject;
.source "RealmFriend.kt"

# interfaces
.implements Lio/realm/RealmFriendRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmFriend$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmFriend$Companion;


# instance fields
.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private id:J

.field private lastName:Ljava/lang/String;

.field private mobilePhone:Ljava/lang/String;

.field private userpicUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmFriend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmFriend$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmFriend;->Companion:Lru/rocketbank/core/realm/RealmFriend$Companion;

    return-void
.end method

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
.method public realmGet$email()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmFriend;->email:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$firstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmFriend;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmFriend;->id:J

    return-wide v0
.end method

.method public realmGet$lastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmFriend;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mobilePhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmFriend;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$userpicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmFriend;->userpicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$email(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmFriend;->email:Ljava/lang/String;

    return-void
.end method

.method public realmSet$firstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmFriend;->firstName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmFriend;->id:J

    return-void
.end method

.method public realmSet$lastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmFriend;->lastName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mobilePhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmFriend;->mobilePhone:Ljava/lang/String;

    return-void
.end method

.method public realmSet$userpicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmFriend;->userpicUrl:Ljava/lang/String;

    return-void
.end method
