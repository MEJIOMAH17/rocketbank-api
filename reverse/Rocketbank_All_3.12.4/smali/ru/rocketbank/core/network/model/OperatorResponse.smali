.class public final Lru/rocketbank/core/network/model/OperatorResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "OperatorResponse.kt"


# instance fields
.field private provider_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProvider_id()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lru/rocketbank/core/network/model/OperatorResponse;->provider_id:J

    return-wide v0
.end method

.method public final setProvider_id(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lru/rocketbank/core/network/model/OperatorResponse;->provider_id:J

    return-void
.end method
