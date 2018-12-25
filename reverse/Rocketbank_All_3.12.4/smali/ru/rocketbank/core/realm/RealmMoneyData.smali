.class public Lru/rocketbank/core/realm/RealmMoneyData;
.super Lio/realm/RealmObject;
.source "RealmMoneyData.kt"

# interfaces
.implements Lio/realm/RealmMoneyDataRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmMoneyData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmMoneyData$Companion;


# instance fields
.field private amount:D

.field private currencyCode:Ljava/lang/String;

.field private formatted:Ljava/lang/String;

.field private formattedExact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmMoneyData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmMoneyData$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmMoneyData;->Companion:Lru/rocketbank/core/realm/RealmMoneyData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
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
.method public realmGet$amount()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmMoneyData;->amount:D

    return-wide v0
.end method

.method public realmGet$currencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmMoneyData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$formatted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmMoneyData;->formatted:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$formattedExact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmMoneyData;->formattedExact:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$amount(D)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmMoneyData;->amount:D

    return-void
.end method

.method public realmSet$currencyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmMoneyData;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$formatted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmMoneyData;->formatted:Ljava/lang/String;

    return-void
.end method

.method public realmSet$formattedExact(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmMoneyData;->formattedExact:Ljava/lang/String;

    return-void
.end method
