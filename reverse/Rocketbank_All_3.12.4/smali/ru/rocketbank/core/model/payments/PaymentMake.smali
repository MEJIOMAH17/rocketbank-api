.class public Lru/rocketbank/core/model/payments/PaymentMake;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "PaymentMake.java"


# instance fields
.field private amount:F

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private providerId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 20
    instance-of v0, p1, Lru/rocketbank/core/model/payments/PaymentMake;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/payments/PaymentMake;

    iget v0, p1, Lru/rocketbank/core/model/payments/PaymentMake;->providerId:I

    iget v1, p0, Lru/rocketbank/core/model/payments/PaymentMake;->providerId:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lru/rocketbank/core/model/payments/PaymentMake;->fields:Ljava/util/List;

    iget-object v0, p0, Lru/rocketbank/core/model/payments/PaymentMake;->fields:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAmount()F
    .locals 1

    .line 24
    iget v0, p0, Lru/rocketbank/core/model/payments/PaymentMake;->amount:F

    return v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/payments/PaymentMake;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lru/rocketbank/core/model/payments/PaymentMake;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/model/payments/PaymentMake;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .line 32
    iget v0, p0, Lru/rocketbank/core/model/payments/PaymentMake;->providerId:I

    return v0
.end method
