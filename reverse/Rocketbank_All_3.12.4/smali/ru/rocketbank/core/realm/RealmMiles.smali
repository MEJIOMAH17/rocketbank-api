.class public Lru/rocketbank/core/realm/RealmMiles;
.super Lio/realm/RealmObject;
.source "RealmMiles.kt"

# interfaces
.implements Lio/realm/RealmMilesRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmMiles$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmMiles$Companion;


# instance fields
.field private amount:F

.field private enoughMiles:Z

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmMiles$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmMiles$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmMiles;->Companion:Lru/rocketbank/core/realm/RealmMiles$Companion;

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
.method public realmGet$amount()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmMiles;->amount:F

    return v0
.end method

.method public realmGet$enoughMiles()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/realm/RealmMiles;->enoughMiles:Z

    return v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmMiles;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$amount(F)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmMiles;->amount:F

    return-void
.end method

.method public realmSet$enoughMiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/rocketbank/core/realm/RealmMiles;->enoughMiles:Z

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmMiles;->status:Ljava/lang/String;

    return-void
.end method
