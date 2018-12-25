.class public final Lru/rocketbank/core/network/model/DepositRefillRequest;
.super Ljava/lang/Object;
.source "DepositRefillRequest.kt"


# instance fields
.field private amount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/network/model/DepositRefillRequest;->amount:I

    return v0
.end method

.method public final setAmount(I)V
    .locals 0

    .line 8
    iput p1, p0, Lru/rocketbank/core/network/model/DepositRefillRequest;->amount:I

    return-void
.end method
