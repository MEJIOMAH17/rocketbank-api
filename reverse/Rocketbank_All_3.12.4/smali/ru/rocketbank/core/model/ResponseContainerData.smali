.class public Lru/rocketbank/core/model/ResponseContainerData;
.super Ljava/lang/Object;
.source "ResponseContainerData.java"


# instance fields
.field private responseData:Lru/rocketbank/core/model/dto/ResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseData()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/ResponseContainerData;->responseData:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method
