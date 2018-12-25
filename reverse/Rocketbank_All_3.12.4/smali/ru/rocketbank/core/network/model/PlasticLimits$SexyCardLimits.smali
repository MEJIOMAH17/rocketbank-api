.class public final Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;
.super Ljava/lang/Object;
.source "SexyCardLimits.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/PlasticLimits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SexyCardLimits"
.end annotation


# instance fields
.field private limits:Lru/rocketbank/core/network/model/SexyLimits;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLimits()Lru/rocketbank/core/network/model/SexyLimits;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;->limits:Lru/rocketbank/core/network/model/SexyLimits;

    return-object v0
.end method

.method public final setLimits(Lru/rocketbank/core/network/model/SexyLimits;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;->limits:Lru/rocketbank/core/network/model/SexyLimits;

    return-void
.end method
