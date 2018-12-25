.class public Lru/rocketbank/core/model/response/AvailableDepositsResponse;
.super Ljava/lang/Object;
.source "AvailableDepositsResponse.java"


# instance fields
.field private deposits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/RocketDepositModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeposits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/RocketDepositModel;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/response/AvailableDepositsResponse;->deposits:Ljava/util/List;

    return-object v0
.end method

.method public setDeposits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/RocketDepositModel;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/response/AvailableDepositsResponse;->deposits:Ljava/util/List;

    return-void
.end method
