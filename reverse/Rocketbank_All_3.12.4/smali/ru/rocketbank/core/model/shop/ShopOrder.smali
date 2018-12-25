.class public final Lru/rocketbank/core/model/shop/ShopOrder;
.super Ljava/lang/Object;
.source "ShopOrder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/shop/ShopOrder$Item;,
        Lru/rocketbank/core/model/shop/ShopOrder$Address;
    }
.end annotation


# instance fields
.field private final address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

.field private final amount:D

.field private final comment:Ljava/lang/String;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopOrder$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;DLru/rocketbank/core/model/shop/ShopOrder$Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopOrder$Item;",
            ">;",
            "Ljava/lang/String;",
            "D",
            "Lru/rocketbank/core/model/shop/ShopOrder$Address;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    iput-object p2, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    iput-wide p3, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    iput-object p5, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/shop/ShopOrder;Ljava/util/List;Ljava/lang/String;DLru/rocketbank/core/model/shop/ShopOrder$Address;ILjava/lang/Object;)Lru/rocketbank/core/model/shop/ShopOrder;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lru/rocketbank/core/model/shop/ShopOrder;->copy(Ljava/util/List;Ljava/lang/String;DLru/rocketbank/core/model/shop/ShopOrder$Address;)Lru/rocketbank/core/model/shop/ShopOrder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopOrder$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    return-wide v0
.end method

.method public final component4()Lru/rocketbank/core/model/shop/ShopOrder$Address;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;DLru/rocketbank/core/model/shop/ShopOrder$Address;)Lru/rocketbank/core/model/shop/ShopOrder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopOrder$Item;",
            ">;",
            "Ljava/lang/String;",
            "D",
            "Lru/rocketbank/core/model/shop/ShopOrder$Address;",
            ")",
            "Lru/rocketbank/core/model/shop/ShopOrder;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/model/shop/ShopOrder;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/model/shop/ShopOrder;-><init>(Ljava/util/List;Ljava/lang/String;DLru/rocketbank/core/model/shop/ShopOrder$Address;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/shop/ShopOrder;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/shop/ShopOrder;

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    iget-object v1, p1, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    iget-wide v2, p1, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    iget-object p1, p1, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddress()Lru/rocketbank/core/model/shop/ShopOrder$Address;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    return-object v0
.end method

.method public final getAmount()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    return-wide v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopOrder$Item;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShopOrder(items="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/shop/ShopOrder;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/ShopOrder;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/model/shop/ShopOrder;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/shop/ShopOrder;->address:Lru/rocketbank/core/model/shop/ShopOrder$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
