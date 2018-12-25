.class public final Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;
.super Ljava/lang/Object;
.source "CafeRefillResponse.kt"


# instance fields
.field private final code:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final showIt:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_it"
    .end annotation
.end field

.field private final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    iput-object p2, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    iput-boolean p4, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->copy(ILjava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;
    .locals 1

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    iget v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    iget v3, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    iget-boolean p1, p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    if-ne v1, p1, :cond_1

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

.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowIt()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

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

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CafeRefillResponse(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showIt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->showIt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
