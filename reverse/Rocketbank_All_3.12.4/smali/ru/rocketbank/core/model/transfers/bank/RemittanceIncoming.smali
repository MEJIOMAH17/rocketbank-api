.class public Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;
.super Ljava/lang/Object;
.source "RemittanceIncoming.java"


# instance fields
.field private balance:D

.field private id:J

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;->balance:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;->id:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;->balance:D

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;->id:J

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceIncoming;->status:Ljava/lang/String;

    return-void
.end method
