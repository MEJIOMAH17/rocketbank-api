.class public Lru/rocketbank/core/model/LoginResponseData;
.super Ljava/lang/Object;
.source "LoginResponseData.java"


# instance fields
.field private response:Lru/rocketbank/core/model/dto/ResponseData;

.field private token:Ljava/lang/String;

.field private user:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/LoginResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/LoginResponseData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/LoginResponseData;->user:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public setResponse(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/LoginResponseData;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/LoginResponseData;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/model/LoginResponseData;->user:Lru/rocketbank/core/model/UserModel;

    return-void
.end method
