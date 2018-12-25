.class public Lru/rocketbank/core/model/card/Card2CardStatusRequestData;
.super Ljava/lang/Object;
.source "Card2CardStatusRequestData.java"


# instance fields
.field private id:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusRequestData;->token:Ljava/lang/String;

    .line 10
    iput p2, p0, Lru/rocketbank/core/model/card/Card2CardStatusRequestData;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 22
    iget v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusRequestData;->id:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardStatusRequestData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusRequestData;->id:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardStatusRequestData;->token:Ljava/lang/String;

    return-void
.end method
