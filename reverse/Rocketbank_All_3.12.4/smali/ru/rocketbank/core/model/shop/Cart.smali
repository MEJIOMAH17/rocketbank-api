.class public final Lru/rocketbank/core/model/shop/Cart;
.super Ljava/lang/Object;
.source "Cart.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/shop/Cart$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cart.kt\nru/rocketbank/core/model/shop/Cart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,99:1\n1808#2,5:100\n624#2:105\n713#2,2:106\n1176#2:108\n1201#2,3:109\n1204#2,3:119\n279#3,7:112\n57#4:122\n82#4,3:123\n*E\n*S KotlinDebug\n*F\n+ 1 Cart.kt\nru/rocketbank/core/model/shop/Cart\n*L\n15#1,5:100\n51#1:105\n51#1,2:106\n53#1:108\n53#1,3:109\n53#1,3:119\n53#1,7:112\n54#1:122\n54#1,3:123\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/shop/Cart;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/shop/Cart$Companion;


# instance fields
.field private amount:D

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/shop/Cart$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/shop/Cart$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/shop/Cart;->Companion:Lru/rocketbank/core/model/shop/Cart$Companion;

    .line 31
    new-instance v0, Lru/rocketbank/core/model/shop/Cart$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/shop/Cart$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/shop/Cart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lru/rocketbank/core/model/shop/CartItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "source.createTypedArrayList(CartItem.CREATOR)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lru/rocketbank/core/model/shop/Cart;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 1

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAmount()D
    .locals 5

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 102
    check-cast v3, Lru/rocketbank/core/model/shop/CartItem;

    .line 15
    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/CartItem;->getAmount()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final getDeficit(D)D
    .locals 3

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/Cart;->getAmount()D

    move-result-wide v0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/Cart;->getAmount()D

    move-result-wide v0

    sub-double/2addr v0, p1

    return-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    return-object v0
.end method

.method public final identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final order(Ljava/lang/String;Lru/rocketbank/core/model/shop/ShopOrder$Address;)Lru/rocketbank/core/model/shop/ShopOrder;
    .locals 14

    move-object v0, p0

    const-string v1, "address"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, v0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 106
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/rocketbank/core/model/shop/CartItem;

    .line 51
    invoke-virtual {v4}, Lru/rocketbank/core/model/shop/CartItem;->getId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 108
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 109
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 110
    move-object v4, v3

    check-cast v4, Lru/rocketbank/core/model/shop/CartItem;

    .line 53
    invoke-virtual {v0, v4}, Lru/rocketbank/core/model/shop/Cart;->identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/shop/CartItem;

    .line 112
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 119
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 122
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 123
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    new-instance v4, Lru/rocketbank/core/model/shop/ShopOrder$Item;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/shop/CartItem;

    invoke-virtual {v5}, Lru/rocketbank/core/model/shop/CartItem;->getShopItem()Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object v5

    invoke-virtual {v5}, Lru/rocketbank/core/model/shop/ShopItem;->getId()J

    move-result-wide v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/shop/CartItem;

    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/CartItem;->getVariant()Lru/rocketbank/core/model/shop/Variant;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Variant;->getId()J

    move-result-wide v5

    :goto_4
    move-wide v12, v5

    goto :goto_5

    :cond_5
    const-wide/16 v5, -0x1

    goto :goto_4

    :goto_5
    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lru/rocketbank/core/model/shop/ShopOrder$Item;-><init>(JIJ)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 125
    :cond_6
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 55
    new-instance v1, Lru/rocketbank/core/model/shop/ShopOrder;

    invoke-virtual {v0}, Lru/rocketbank/core/model/shop/Cart;->getAmount()D

    move-result-wide v5

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/core/model/shop/ShopOrder;-><init>(Ljava/util/List;Ljava/lang/String;DLru/rocketbank/core/model/shop/ShopOrder$Address;)V

    return-object v1
.end method

.method public final remove(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 1

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setAmount(D)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lru/rocketbank/core/model/shop/Cart;->amount:D

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    iget-object p2, p0, Lru/rocketbank/core/model/shop/Cart;->items:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_0
    return-void
.end method
