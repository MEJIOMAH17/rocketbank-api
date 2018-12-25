.class public Lru/rocketbank/core/network/model/AtmsCashinResponse;
.super Ljava/lang/Object;
.source "AtmsCashinResponse.java"


# instance fields
.field public atms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/Atm;",
            ">;"
        }
    .end annotation
.end field

.field public lastUpdate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_update"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/AtmsData;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lru/rocketbank/core/model/AtmsData;->getAtms()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/AtmsCashinResponse;->atms:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lru/rocketbank/core/model/AtmsData;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/network/model/AtmsCashinResponse;->lastUpdate:J

    return-void
.end method
