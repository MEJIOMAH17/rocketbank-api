.class public Lru/rocketbank/core/realm/RealmAtm;
.super Lio/realm/RealmObject;
.source "RealmAtm.kt"

# interfaces
.implements Lio/realm/RealmAtmRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmAtm$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmAtm$Companion;

.field public static final FIELD_HIDDEN:Ljava/lang/String; = "isHidden"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private address:Ljava/lang/String;

.field private hours:Ljava/lang/String;

.field private id:I

.field private isEur:Ljava/lang/Boolean;

.field private isHidden:Ljava/lang/Boolean;

.field private isRur:Ljava/lang/Boolean;

.field private isUsd:Ljava/lang/Boolean;

.field private lat:F

.field private lon:F

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmAtm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmAtm$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmAtm;->Companion:Lru/rocketbank/core/realm/RealmAtm$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, "none"

    .line 27
    invoke-virtual {p0, v0}, Lru/rocketbank/core/realm/RealmAtm;->realmSet$type(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public realmGet$address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->address:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$hours()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->hours:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmAtm;->id:I

    return v0
.end method

.method public realmGet$isEur()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->isEur:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$isHidden()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->isHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$isRur()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->isRur:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$isUsd()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->isUsd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$lat()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmAtm;->lat:F

    return v0
.end method

.method public realmGet$lon()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmAtm;->lon:F

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmAtm;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->address:Ljava/lang/String;

    return-void
.end method

.method public realmSet$hours(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->hours:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmAtm;->id:I

    return-void
.end method

.method public realmSet$isEur(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->isEur:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$isHidden(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->isHidden:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$isRur(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->isRur:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$isUsd(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->isUsd:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$lat(F)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmAtm;->lat:F

    return-void
.end method

.method public realmSet$lon(F)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmAtm;->lon:F

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmAtm;->type:Ljava/lang/String;

    return-void
.end method
