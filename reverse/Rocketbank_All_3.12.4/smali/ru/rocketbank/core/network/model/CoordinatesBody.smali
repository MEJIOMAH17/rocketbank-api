.class public final Lru/rocketbank/core/network/model/CoordinatesBody;
.super Ljava/lang/Object;
.source "CoordinatesBody.kt"


# instance fields
.field private acc:D

.field private id:J

.field private lat:D

.field private lng:D


# direct methods
.method public constructor <init>(FDDJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->lat:D

    iput-wide p4, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->lng:D

    iput-wide p6, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->id:J

    float-to-double p1, p1

    .line 10
    iput-wide p1, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->acc:D

    return-void
.end method


# virtual methods
.method public final getAcc()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->acc:D

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->id:J

    return-wide v0
.end method

.method public final getLat()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->lat:D

    return-wide v0
.end method

.method public final getLng()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->lng:D

    return-wide v0
.end method

.method public final setAcc(D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->acc:D

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->id:J

    return-void
.end method

.method public final setLat(D)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->lat:D

    return-void
.end method

.method public final setLng(D)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lru/rocketbank/core/network/model/CoordinatesBody;->lng:D

    return-void
.end method
