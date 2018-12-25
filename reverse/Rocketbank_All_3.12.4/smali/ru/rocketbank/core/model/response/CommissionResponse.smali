.class public Lru/rocketbank/core/model/response/CommissionResponse;
.super Ljava/lang/Object;
.source "CommissionResponse.java"


# instance fields
.field private commission:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommission()F
    .locals 1

    .line 7
    iget v0, p0, Lru/rocketbank/core/model/response/CommissionResponse;->commission:F

    return v0
.end method

.method public setCommission(F)V
    .locals 0

    .line 11
    iput p1, p0, Lru/rocketbank/core/model/response/CommissionResponse;->commission:F

    return-void
.end method
