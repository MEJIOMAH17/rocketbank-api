.class public final Lru/rocketbank/core/network/model/tariffs/TariffsResp;
.super Ljava/lang/Object;
.source "TariffsResp.kt"


# instance fields
.field private final tariffs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tariffs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/tariffs/TariffsResp;Ljava/util/ArrayList;ILjava/lang/Object;)Lru/rocketbank/core/network/model/tariffs/TariffsResp;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->copy(Ljava/util/ArrayList;)Lru/rocketbank/core/network/model/tariffs/TariffsResp;

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
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(Ljava/util/ArrayList;)Lru/rocketbank/core/network/model/tariffs/TariffsResp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;)",
            "Lru/rocketbank/core/network/model/tariffs/TariffsResp;"
        }
    .end annotation

    const-string v0, "tariffs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/model/tariffs/TariffsResp;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/tariffs/TariffsResp;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/tariffs/TariffsResp;

    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    iget-object p1, p1, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

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

.method public final getTariffs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TariffsResp(tariffs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/tariffs/TariffsResp;->tariffs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
