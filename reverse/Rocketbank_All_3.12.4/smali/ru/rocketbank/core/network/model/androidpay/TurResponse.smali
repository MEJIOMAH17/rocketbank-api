.class public final Lru/rocketbank/core/network/model/androidpay/TurResponse;
.super Ljava/lang/Object;
.source "TurResponse.kt"


# instance fields
.field private final pending:Z

.field private final tur:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    iput-boolean p2, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/androidpay/TurResponse;Ljava/lang/String;ZILjava/lang/Object;)Lru/rocketbank/core/network/model/androidpay/TurResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/androidpay/TurResponse;->copy(Ljava/lang/String;Z)Lru/rocketbank/core/network/model/androidpay/TurResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lru/rocketbank/core/network/model/androidpay/TurResponse;
    .locals 1

    new-instance v0, Lru/rocketbank/core/network/model/androidpay/TurResponse;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/androidpay/TurResponse;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/network/model/androidpay/TurResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/network/model/androidpay/TurResponse;

    iget-object v1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    iget-boolean p1, p1, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    if-ne v1, p1, :cond_0

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

.method public final getPending()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    return v0
.end method

.method public final getTur()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TurResponse(tur="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->tur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/androidpay/TurResponse;->pending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
