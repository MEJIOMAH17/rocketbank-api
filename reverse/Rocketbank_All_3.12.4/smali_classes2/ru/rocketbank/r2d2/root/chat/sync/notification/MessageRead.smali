.class public final Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;
.super Ljava/lang/Object;
.source "TypingNotification.kt"


# instance fields
.field private final id:J

.field private final timestamp:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    iput-wide p3, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;JJILjava/lang/Object;)Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->copy(JJ)Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    return-wide v0
.end method

.method public final copy(JJ)Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;-><init>(JJ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    iget-wide v5, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    iget-wide v5, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long v5, v0, v3

    long-to-int v0, v5

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    ushr-long v1, v3, v2

    xor-long v5, v3, v1

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageRead(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
