.class public Lru/rocketbank/core/network/model/PaymentResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "PaymentResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/PaymentResponse$Field;
    }
.end annotation


# instance fields
.field private amount:D

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/PaymentResponse$Field;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private provider_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lru/rocketbank/core/network/model/PaymentResponse;->amount:D

    return-wide v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/PaymentResponse$Field;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lru/rocketbank/core/network/model/PaymentResponse;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 51
    iget v0, p0, Lru/rocketbank/core/network/model/PaymentResponse;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/network/model/PaymentResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider_id()I
    .locals 1

    .line 35
    iget v0, p0, Lru/rocketbank/core/network/model/PaymentResponse;->provider_id:I

    return v0
.end method

.method public setAmount(I)V
    .locals 2

    int-to-double v0, p1

    .line 47
    iput-wide v0, p0, Lru/rocketbank/core/network/model/PaymentResponse;->amount:D

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/PaymentResponse$Field;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lru/rocketbank/core/network/model/PaymentResponse;->fields:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 55
    iput p1, p0, Lru/rocketbank/core/network/model/PaymentResponse;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lru/rocketbank/core/network/model/PaymentResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public setProvider_id(I)V
    .locals 0

    .line 39
    iput p1, p0, Lru/rocketbank/core/network/model/PaymentResponse;->provider_id:I

    return-void
.end method
