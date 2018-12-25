.class public final Lru/rocketbank/core/model/TransferTemplates;
.super Ljava/lang/Object;
.source "TransferTemplates.kt"


# instance fields
.field private budget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private card2card:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private individuals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private legalEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    iput-object p2, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    iput-object p3, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    iput-object p4, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/TransferTemplates;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)Lru/rocketbank/core/model/TransferTemplates;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/TransferTemplates;->copy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/core/model/TransferTemplates;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component2()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component3()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component4()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/core/model/TransferTemplates;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)",
            "Lru/rocketbank/core/model/TransferTemplates;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/core/model/TransferTemplates;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/core/model/TransferTemplates;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/TransferTemplates;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/TransferTemplates;

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    iget-object v1, p1, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    iget-object v1, p1, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    iget-object v1, p1, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    iget-object p1, p1, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBudget()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getCard2card()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getIndividuals()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLegalEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBudget(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    return-void
.end method

.method public final setCard2card(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    return-void
.end method

.method public final setIndividuals(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLegalEntities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransferTemplates(card2card="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/TransferTemplates;->card2card:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", individuals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/TransferTemplates;->individuals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legalEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/TransferTemplates;->legalEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", budget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/TransferTemplates;->budget:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
