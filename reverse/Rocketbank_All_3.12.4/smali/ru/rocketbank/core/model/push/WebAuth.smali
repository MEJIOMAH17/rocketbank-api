.class public final Lru/rocketbank/core/model/push/WebAuth;
.super Ljava/lang/Object;
.source "WebAuth.kt"


# instance fields
.field private final authId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_id"
    .end annotation
.end field

.field private final occuredAt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private final ttl:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const-string v0, "authId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    iput p2, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    iput-object p3, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/push/WebAuth;IILjava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/model/push/WebAuth;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/model/push/WebAuth;->copy(IILjava/lang/String;)Lru/rocketbank/core/model/push/WebAuth;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;)Lru/rocketbank/core/model/push/WebAuth;
    .locals 1

    const-string v0, "authId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/model/push/WebAuth;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/core/model/push/WebAuth;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/core/model/push/WebAuth;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/core/model/push/WebAuth;

    iget v1, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    iget v3, p1, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    iget v3, p1, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getAuthId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOccuredAt()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    return v0
.end method

.method public final getTtl()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebAuth(ttl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/model/push/WebAuth;->ttl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", occuredAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/push/WebAuth;->occuredAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/push/WebAuth;->authId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
