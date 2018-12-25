.class public final Lru/rocketbank/core/pay/samsung/AddCardResult;
.super Ljava/lang/Object;
.source "RxSPay.kt"


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final card:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

.field private final progress:I

.field private final ready:Z

.field private final status:I

.field private final total:I


# direct methods
.method private constructor <init>(ILcom/samsung/android/sdk/samsungpay/v2/card/Card;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->ready:Z

    const/4 v0, 0x0

    iput v0, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->progress:I

    iput v0, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->total:I

    const/4 v0, 0x0

    iput-object v0, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->bundle:Landroid/os/Bundle;

    iput p1, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->status:I

    iput-object p2, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->card:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/samsung/android/sdk/samsungpay/v2/card/Card;B)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/pay/samsung/AddCardResult;-><init>(ILcom/samsung/android/sdk/samsungpay/v2/card/Card;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/pay/samsung/AddCardResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/pay/samsung/AddCardResult;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->status:I

    iget v3, p1, Lru/rocketbank/core/pay/samsung/AddCardResult;->status:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->card:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    iget-object p1, p1, Lru/rocketbank/core/pay/samsung/AddCardResult;->card:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->status:I

    const v1, 0xe1781

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->card:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddCardResult(ready=true, progress=0, total=0, bundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/AddCardResult;->card:Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
