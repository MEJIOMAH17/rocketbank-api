.class public Lru/rocketbank/core/model/card/Card2CardStatusResponseData;
.super Ljava/lang/Object;
.source "Card2CardStatusResponseData.java"


# instance fields
.field private balance:D

.field private errors:Ljava/lang/String;

.field private id:I

.field private response:Lru/rocketbank/core/model/dto/ResponseData;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->balance:D

    return-wide v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 16
    iget v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->id:I

    return v0
.end method

.method public getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(D)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->balance:D

    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->errors:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 20
    iput p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->id:I

    return-void
.end method

.method public setResponse(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusResponseData;->status:Ljava/lang/String;

    return-void
.end method
