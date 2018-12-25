.class public Lru/rocketbank/core/realm/RealmLinkedCard;
.super Lio/realm/RealmObject;
.source "RealmLinkedCard.kt"

# interfaces
.implements Lio/realm/RealmLinkedCardRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmLinkedCard$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmLinkedCard$Companion;


# instance fields
.field private bank:Ljava/lang/String;

.field private bin:Lru/rocketbank/core/realm/RealmBin;

.field private color:Ljava/lang/String;

.field private feedIconUrl:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmLinkedCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmLinkedCard$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmLinkedCard;->Companion:Lru/rocketbank/core/realm/RealmLinkedCard$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
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
.method public realmGet$bank()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$bin()Lru/rocketbank/core/realm/RealmBin;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->bin:Lru/rocketbank/core/realm/RealmBin;

    return-object v0
.end method

.method public realmGet$color()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->color:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$feedIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->feedIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$logo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$pan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$bank(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->bank:Ljava/lang/String;

    return-void
.end method

.method public realmSet$bin(Lru/rocketbank/core/realm/RealmBin;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->bin:Lru/rocketbank/core/realm/RealmBin;

    return-void
.end method

.method public realmSet$color(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->color:Ljava/lang/String;

    return-void
.end method

.method public realmSet$feedIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->feedIconUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$logo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->logo:Ljava/lang/String;

    return-void
.end method

.method public realmSet$pan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->pan:Ljava/lang/String;

    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmLinkedCard;->token:Ljava/lang/String;

    return-void
.end method
