.class public final Lru/rocketbank/core/network/model/new_passport/NewPassportBody;
.super Ljava/lang/Object;
.source "NewPassportBody.kt"


# instance fields
.field private final imagesIds:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final operationId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operation_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "imagesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    iput-object p2, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Long;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;-><init>(Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/new_passport/NewPassportBody;Ljava/util/Map;Ljava/lang/Long;ILjava/lang/Object;)Lru/rocketbank/core/network/model/new_passport/NewPassportBody;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->copy(Ljava/util/Map;Ljava/lang/Long;)Lru/rocketbank/core/network/model/new_passport/NewPassportBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Ljava/lang/Long;)Lru/rocketbank/core/network/model/new_passport/NewPassportBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Lru/rocketbank/core/network/model/new_passport/NewPassportBody;"
        }
    .end annotation

    const-string v0, "imagesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;-><init>(Ljava/util/Map;Ljava/lang/Long;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;

    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    iget-object v1, p1, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

    iget-object p1, p1, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

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

.method public final getImagesIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    return-object v0
.end method

.method public final getOperationId()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

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

    const-string v1, "NewPassportBody(imagesIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->imagesIds:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;->operationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
