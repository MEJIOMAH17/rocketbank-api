.class public Lru/rocketbank/core/model/response/DepositResponse;
.super Ljava/lang/Object;
.source "DepositResponse.java"


# instance fields
.field private depositModel:Lru/rocketbank/core/model/DepositModel;

.field private response:Lru/rocketbank/core/model/dto/ResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeposit()Lru/rocketbank/core/model/DepositModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/response/DepositResponse;->depositModel:Lru/rocketbank/core/model/DepositModel;

    return-object v0
.end method

.method public getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/response/DepositResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public setDeposit(Lru/rocketbank/core/model/DepositModel;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/model/response/DepositResponse;->depositModel:Lru/rocketbank/core/model/DepositModel;

    return-void
.end method

.method public setResponse(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/response/DepositResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-void
.end method
