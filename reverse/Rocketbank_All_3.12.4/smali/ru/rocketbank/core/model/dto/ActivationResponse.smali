.class public Lru/rocketbank/core/model/dto/ActivationResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "ActivationResponse.java"


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/dto/ActivationResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/dto/ActivationResponse;->user:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method
