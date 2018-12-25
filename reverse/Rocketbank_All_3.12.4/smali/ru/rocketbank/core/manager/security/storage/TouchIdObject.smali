.class public Lru/rocketbank/core/manager/security/storage/TouchIdObject;
.super Lio/realm/RealmObject;
.source "TouchIdObject.kt"

# interfaces
.implements Lio/realm/TouchIdObjectRealmProxyInterface;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, ""

    .line 11
    invoke-virtual {p0, v0}, Lru/rocketbank/core/manager/security/storage/TouchIdObject;->realmSet$token(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/TouchIdObject;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/TouchIdObject;->token:Ljava/lang/String;

    return-void
.end method
