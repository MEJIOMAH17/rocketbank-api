.class public final Lru/rocketbank/core/model/shop/ShopOrder$Item;
.super Ljava/lang/Object;
.source "ShopOrder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/shop/ShopOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field private final count:I

.field private final id:J

.field private final variant_id:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    iput p3, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    iput-wide p4, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/shop/ShopOrder$Item;JIJILjava/lang/Object;)Lru/rocketbank/core/model/shop/ShopOrder$Item;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget p3, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    :cond_1
    move v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-wide p4, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    :cond_2
    move-wide v4, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/core/model/shop/ShopOrder$Item;->copy(JIJ)Lru/rocketbank/core/model/shop/ShopOrder$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    return-wide v0
.end method

.method public final copy(JIJ)Lru/rocketbank/core/model/shop/ShopOrder$Item;
    .locals 7

    new-instance v6, Lru/rocketbank/core/model/shop/ShopOrder$Item;

    move-object v0, v6

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/model/shop/ShopOrder$Item;-><init>(JIJ)V

    return-object v6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lru/rocketbank/core/model/shop/ShopOrder$Item;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lru/rocketbank/core/model/shop/ShopOrder$Item;

    iget-wide v3, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    iget-wide v5, p1, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    iget v3, p1, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-wide v3, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    iget-wide v5, p1, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    return-wide v0
.end method

.method public final getVariant_id()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long v5, v0, v3

    long-to-int v0, v5

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    ushr-long v1, v3, v2

    xor-long v5, v3, v1

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", variant_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/model/shop/ShopOrder$Item;->variant_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
