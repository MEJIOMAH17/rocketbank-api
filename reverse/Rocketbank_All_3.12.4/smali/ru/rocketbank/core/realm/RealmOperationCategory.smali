.class public Lru/rocketbank/core/realm/RealmOperationCategory;
.super Lio/realm/RealmObject;
.source "RealmOperationCategory.kt"

# interfaces
.implements Lio/realm/RealmOperationCategoryRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmOperationCategory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmOperationCategory$Companion;


# instance fields
.field private displayName:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private spent:Lru/rocketbank/core/realm/RealmMoneyData;

.field private subIcon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmOperationCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmOperationCategory$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmOperationCategory;->Companion:Lru/rocketbank/core/realm/RealmOperationCategory$Companion;

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
.method public realmGet$displayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$fullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->id:J

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$spent()Lru/rocketbank/core/realm/RealmMoneyData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->spent:Lru/rocketbank/core/realm/RealmMoneyData;

    return-object v0
.end method

.method public realmGet$subIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->subIcon:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$displayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->displayName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$fullName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->fullName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->id:J

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$spent(Lru/rocketbank/core/realm/RealmMoneyData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->spent:Lru/rocketbank/core/realm/RealmMoneyData;

    return-void
.end method

.method public realmSet$subIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperationCategory;->subIcon:Ljava/lang/String;

    return-void
.end method
