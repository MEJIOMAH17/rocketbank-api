.class public Lru/rocketbank/core/realm/RealmMerchant;
.super Lio/realm/RealmObject;
.source "RealmMerchant.kt"

# interfaces
.implements Lio/realm/RealmMerchantRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmMerchant$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmMerchant$Companion;


# instance fields
.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmMerchant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmMerchant$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmMerchant;->Companion:Lru/rocketbank/core/realm/RealmMerchant$Companion;

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
.method public realmGet$icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmMerchant;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmMerchant;->id:J

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmMerchant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmMerchant;->icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmMerchant;->id:J

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmMerchant;->name:Ljava/lang/String;

    return-void
.end method
