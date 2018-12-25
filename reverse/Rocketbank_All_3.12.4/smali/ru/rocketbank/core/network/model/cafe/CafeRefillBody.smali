.class public final Lru/rocketbank/core/network/model/cafe/CafeRefillBody;
.super Ljava/lang/Object;
.source "CafeRefillBody.kt"


# instance fields
.field private final amount:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/cafe/CafeRefillBody;JILjava/lang/Object;)Lru/rocketbank/core/network/model/cafe/CafeRefillBody;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->copy(J)Lru/rocketbank/core/network/model/cafe/CafeRefillBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    return-wide v0
.end method

.method public final copy(J)Lru/rocketbank/core/network/model/cafe/CafeRefillBody;
    .locals 1

    new-instance v0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;-><init>(J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;

    iget-wide v3, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    iget-wide v5, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getAmount()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 6

    iget-wide v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CafeRefillBody(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
