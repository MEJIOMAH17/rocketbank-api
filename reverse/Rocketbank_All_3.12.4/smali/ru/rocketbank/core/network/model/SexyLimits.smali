.class public final Lru/rocketbank/core/network/model/SexyLimits;
.super Ljava/lang/Object;
.source "SexyCardLimits.kt"


# instance fields
.field private atm:Z

.field private atm_abroad:Z

.field private internet:Z

.field private pos:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAtm()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/SexyLimits;->atm:Z

    return v0
.end method

.method public final getAtm_abroad()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/SexyLimits;->atm_abroad:Z

    return v0
.end method

.method public final getInternet()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/SexyLimits;->internet:Z

    return v0
.end method

.method public final getPos()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/SexyLimits;->pos:Z

    return v0
.end method

.method public final setAtm(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/SexyLimits;->atm:Z

    return-void
.end method

.method public final setAtm_abroad(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/SexyLimits;->atm_abroad:Z

    return-void
.end method

.method public final setInternet(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/SexyLimits;->internet:Z

    return-void
.end method

.method public final setPos(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/SexyLimits;->pos:Z

    return-void
.end method
