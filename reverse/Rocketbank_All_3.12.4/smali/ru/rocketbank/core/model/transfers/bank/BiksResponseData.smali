.class public Lru/rocketbank/core/model/transfers/bank/BiksResponseData;
.super Ljava/lang/Object;
.source "BiksResponseData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bik:Lru/rocketbank/core/model/transfers/bank/BankData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBik()Lru/rocketbank/core/model/transfers/bank/BankData;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;->bik:Lru/rocketbank/core/model/transfers/bank/BankData;

    return-object v0
.end method

.method public setBik(Lru/rocketbank/core/model/transfers/bank/BankData;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;->bik:Lru/rocketbank/core/model/transfers/bank/BankData;

    return-void
.end method
