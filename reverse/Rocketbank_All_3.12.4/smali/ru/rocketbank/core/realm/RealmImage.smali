.class public Lru/rocketbank/core/realm/RealmImage;
.super Lio/realm/RealmObject;
.source "RealmImage.kt"

# interfaces
.implements Lio/realm/RealmImageRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmImage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmImage$Companion;


# instance fields
.field private color:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmImage$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmImage;->Companion:Lru/rocketbank/core/realm/RealmImage$Companion;

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
.method public realmGet$color()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmImage;->color:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$height()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmImage;->height:I

    return v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmImage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$width()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/RealmImage;->width:I

    return v0
.end method

.method public realmSet$color(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmImage;->color:Ljava/lang/String;

    return-void
.end method

.method public realmSet$height(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmImage;->height:I

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmImage;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmImage;->url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$width(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/RealmImage;->width:I

    return-void
.end method
