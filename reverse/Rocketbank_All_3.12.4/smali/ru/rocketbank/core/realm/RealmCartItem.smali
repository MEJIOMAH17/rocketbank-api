.class public Lru/rocketbank/core/realm/RealmCartItem;
.super Lio/realm/RealmObject;
.source "RealmCartItem.kt"

# interfaces
.implements Lio/realm/RealmCartItemRealmProxyInterface;


# instance fields
.field private colorID:Lru/rocketbank/core/realm/RealmString;

.field private id:J

.field private sizeID:Lru/rocketbank/core/realm/RealmString;

.field private storeItemId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-wide/16 v0, -0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/realm/RealmCartItem;->realmSet$storeItemId(J)V

    return-void
.end method

.method public constructor <init>(JLru/rocketbank/core/model/shop/CartItem;)V
    .locals 1

    const-string v0, "cartItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lru/rocketbank/core/realm/RealmCartItem;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 1012
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/realm/RealmCartItem;->realmSet$id(J)V

    .line 19
    invoke-virtual {p3}, Lru/rocketbank/core/model/shop/CartItem;->getShopItem()Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getId()J

    move-result-wide p1

    .line 1013
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/realm/RealmCartItem;->realmSet$storeItemId(J)V

    .line 20
    new-instance p1, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {p3}, Lru/rocketbank/core/model/shop/CartItem;->getSize()Lru/rocketbank/core/model/shop/Size;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lru/rocketbank/core/model/shop/Size;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    invoke-direct {p1, p2}, Lru/rocketbank/core/realm/RealmString;-><init>(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0, p1}, Lru/rocketbank/core/realm/RealmCartItem;->realmSet$sizeID(Lru/rocketbank/core/realm/RealmString;)V

    .line 21
    new-instance p1, Lru/rocketbank/core/realm/RealmString;

    invoke-virtual {p3}, Lru/rocketbank/core/model/shop/CartItem;->getColor()Lru/rocketbank/core/model/shop/Color;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lru/rocketbank/core/model/shop/Color;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_3
    const-string p2, ""

    :cond_4
    invoke-direct {p1, p2}, Lru/rocketbank/core/realm/RealmString;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0, p1}, Lru/rocketbank/core/realm/RealmCartItem;->realmSet$colorID(Lru/rocketbank/core/realm/RealmString;)V

    return-void
.end method


# virtual methods
.method public realmGet$colorID()Lru/rocketbank/core/realm/RealmString;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmCartItem;->colorID:Lru/rocketbank/core/realm/RealmString;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmCartItem;->id:J

    return-wide v0
.end method

.method public realmGet$sizeID()Lru/rocketbank/core/realm/RealmString;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmCartItem;->sizeID:Lru/rocketbank/core/realm/RealmString;

    return-object v0
.end method

.method public realmGet$storeItemId()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmCartItem;->storeItemId:J

    return-wide v0
.end method

.method public realmSet$colorID(Lru/rocketbank/core/realm/RealmString;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmCartItem;->colorID:Lru/rocketbank/core/realm/RealmString;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmCartItem;->id:J

    return-void
.end method

.method public realmSet$sizeID(Lru/rocketbank/core/realm/RealmString;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmCartItem;->sizeID:Lru/rocketbank/core/realm/RealmString;

    return-void
.end method

.method public realmSet$storeItemId(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmCartItem;->storeItemId:J

    return-void
.end method
