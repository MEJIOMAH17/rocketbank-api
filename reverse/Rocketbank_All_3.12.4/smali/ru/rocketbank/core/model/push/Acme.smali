.class public final Lru/rocketbank/core/model/push/Acme;
.super Ljava/lang/Object;
.source "Acme.kt"


# instance fields
.field private a:Ljava/lang/String;

.field private id:J

.field private webAuth:Lru/rocketbank/core/model/push/WebAuth;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web_auth"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    iput-object p3, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/push/Acme;-><init>(JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/push/Acme;JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;ILjava/lang/Object;)Lru/rocketbank/core/model/push/Acme;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/push/Acme;->copy(JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;)Lru/rocketbank/core/model/push/Acme;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lru/rocketbank/core/model/push/WebAuth;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;)Lru/rocketbank/core/model/push/Acme;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/push/Acme;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/core/model/push/Acme;-><init>(JLjava/lang/String;Lru/rocketbank/core/model/push/WebAuth;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/model/push/Acme;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/model/push/Acme;

    iget-wide v3, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    iget-wide v5, p1, Lru/rocketbank/core/model/push/Acme;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    iget-object p1, p1, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getA()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    return-wide v0
.end method

.method public final getWebAuth()Lru/rocketbank/core/model/push/WebAuth;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    iget-wide v0, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setA(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    return-void
.end method

.method public final setWebAuth(Lru/rocketbank/core/model/push/WebAuth;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Acme(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/model/push/Acme;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/push/Acme;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/push/Acme;->webAuth:Lru/rocketbank/core/model/push/WebAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
