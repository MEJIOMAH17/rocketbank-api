.class public Lru/rocketbank/core/realm/RealmBin;
.super Lio/realm/RealmObject;
.source "RealmBin.kt"

# interfaces
.implements Lio/realm/RealmBinRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmBin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmBin$Companion;


# instance fields
.field private advice:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferHint:Ljava/lang/String;

.field private transferWorks:Z

.field private works:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmBin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmBin$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmBin;->Companion:Lru/rocketbank/core/realm/RealmBin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
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
.method public realmGet$advice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmBin;->advice:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmBin;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$transferHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmBin;->transferHint:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$transferWorks()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/realm/RealmBin;->transferWorks:Z

    return v0
.end method

.method public realmGet$works()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/realm/RealmBin;->works:Z

    return v0
.end method

.method public realmSet$advice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmBin;->advice:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmBin;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$transferHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmBin;->transferHint:Ljava/lang/String;

    return-void
.end method

.method public realmSet$transferWorks(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/rocketbank/core/realm/RealmBin;->transferWorks:Z

    return-void
.end method

.method public realmSet$works(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/rocketbank/core/realm/RealmBin;->works:Z

    return-void
.end method
