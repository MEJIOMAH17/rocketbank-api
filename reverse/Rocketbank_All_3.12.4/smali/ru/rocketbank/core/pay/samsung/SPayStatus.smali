.class public final Lru/rocketbank/core/pay/samsung/SPayStatus;
.super Ljava/lang/Object;
.source "RxSPay.kt"


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final status:I


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->status:I

    iput-object p2, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/pay/samsung/SPayStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/pay/samsung/SPayStatus;

    iget v1, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->status:I

    iget v3, p1, Lru/rocketbank/core/pay/samsung/SPayStatus;->status:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->bundle:Landroid/os/Bundle;

    iget-object p1, p1, Lru/rocketbank/core/pay/samsung/SPayStatus;->bundle:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 173
    iget v0, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->status:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->bundle:Landroid/os/Bundle;

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

    const-string v1, "SPayStatus(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/SPayStatus;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
