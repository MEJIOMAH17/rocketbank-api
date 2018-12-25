.class public Lru/rocketbank/core/network/model/PlasticLimits;
.super Ljava/lang/Object;
.source "SexyCardLimits.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;
    }
.end annotation


# instance fields
.field private plastic:Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/network/model/PlasticLimits;->plastic:Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    return-void
.end method


# virtual methods
.method public final getPlastic()Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/PlasticLimits;->plastic:Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    return-object v0
.end method

.method public final setPlastic(Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/network/model/PlasticLimits;->plastic:Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    return-void
.end method
