.class public Lru/rocketbank/core/realm/RealmString;
.super Lio/realm/RealmObject;
.source "RealmCartItem.kt"

# interfaces
.implements Lio/realm/RealmStringRealmProxyInterface;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, ""

    .line 26
    invoke-virtual {p0, v0}, Lru/rocketbank/core/realm/RealmString;->realmSet$string(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lru/rocketbank/core/realm/RealmString;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, "<set-?>"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0, p1}, Lru/rocketbank/core/realm/RealmString;->realmSet$string(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$string()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$string(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmString;->string:Ljava/lang/String;

    return-void
.end method
