.class public final Lru/rocketbank/core/model/AtmsData;
.super Ljava/lang/Object;
.source "AtmsData.kt"


# instance fields
.field private final atms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/Atm;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAtms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/Atm;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/AtmsData;->atms:Ljava/util/List;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lru/rocketbank/core/model/AtmsData;->timestamp:J

    return-wide v0
.end method
