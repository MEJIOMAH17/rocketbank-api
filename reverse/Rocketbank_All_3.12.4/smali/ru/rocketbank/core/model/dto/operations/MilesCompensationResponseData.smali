.class public Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;
.super Ljava/lang/Object;
.source "MilesCompensationResponseData.java"


# instance fields
.field private miles:Lru/rocketbank/core/model/dto/operations/Miles;

.field private response:Lru/rocketbank/core/model/dto/ResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMiles()Lru/rocketbank/core/model/dto/operations/Miles;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;->miles:Lru/rocketbank/core/model/dto/operations/Miles;

    return-object v0
.end method

.method public getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/MilesCompensationResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method
