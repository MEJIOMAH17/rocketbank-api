.class public Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "RemittanceResponseData.java"


# instance fields
.field private remittance:Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemittance()Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceResponseData;->remittance:Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;

    return-object v0
.end method
