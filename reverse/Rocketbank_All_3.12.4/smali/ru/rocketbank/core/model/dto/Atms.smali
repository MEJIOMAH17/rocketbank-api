.class public Lru/rocketbank/core/model/dto/Atms;
.super Ljava/lang/Object;
.source "Atms.java"


# instance fields
.field private atms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/Atm;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_update"
    .end annotation
.end field

.field private time:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/Atm;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/dto/Atms;->atms:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 2

    .line 24
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/Atms;->lastUpdate:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/dto/Atms;->atms:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/Atms;->atms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
