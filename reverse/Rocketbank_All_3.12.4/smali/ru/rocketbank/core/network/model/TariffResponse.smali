.class public final Lru/rocketbank/core/network/model/TariffResponse;
.super Ljava/lang/Object;
.source "TariffResponse.kt"


# instance fields
.field private final nextTariff:Lru/rocketbank/core/model/TariffModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_tariff"
    .end annotation
.end field

.field private final response:Lru/rocketbank/core/model/dto/ResponseData;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/dto/ResponseData;Lru/rocketbank/core/model/TariffModel;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    iput-object p2, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/TariffResponse;Lru/rocketbank/core/model/dto/ResponseData;Lru/rocketbank/core/model/TariffModel;ILjava/lang/Object;)Lru/rocketbank/core/network/model/TariffResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/TariffResponse;->copy(Lru/rocketbank/core/model/dto/ResponseData;Lru/rocketbank/core/model/TariffModel;)Lru/rocketbank/core/network/model/TariffResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public final component2()Lru/rocketbank/core/model/TariffModel;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    return-object v0
.end method

.method public final copy(Lru/rocketbank/core/model/dto/ResponseData;Lru/rocketbank/core/model/TariffModel;)Lru/rocketbank/core/network/model/TariffResponse;
    .locals 1

    new-instance v0, Lru/rocketbank/core/network/model/TariffResponse;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/TariffResponse;-><init>(Lru/rocketbank/core/model/dto/ResponseData;Lru/rocketbank/core/model/TariffModel;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/TariffResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/TariffResponse;

    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    iget-object v1, p1, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    iget-object p1, p1, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

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

.method public final getNextTariff()Lru/rocketbank/core/model/TariffModel;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    return-object v0
.end method

.method public final getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TariffResponse(response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/TariffResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextTariff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/TariffResponse;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
