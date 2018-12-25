.class public final Lru/rocketbank/core/network/model/UploadImageResponse;
.super Ljava/lang/Object;
.source "UploadImageResponse.kt"


# instance fields
.field private final image:Lru/rocketbank/core/model/ImageModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/ImageModel;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/UploadImageResponse;Lru/rocketbank/core/model/ImageModel;ILjava/lang/Object;)Lru/rocketbank/core/network/model/UploadImageResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/model/UploadImageResponse;->copy(Lru/rocketbank/core/model/ImageModel;)Lru/rocketbank/core/network/model/UploadImageResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/core/model/ImageModel;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

    return-object v0
.end method

.method public final copy(Lru/rocketbank/core/model/ImageModel;)Lru/rocketbank/core/network/model/UploadImageResponse;
    .locals 1

    new-instance v0, Lru/rocketbank/core/network/model/UploadImageResponse;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/model/UploadImageResponse;-><init>(Lru/rocketbank/core/model/ImageModel;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    iget-object v0, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

    iget-object p1, p1, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

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

.method public final getImage()Lru/rocketbank/core/model/ImageModel;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

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

    const-string v1, "UploadImageResponse(image="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/UploadImageResponse;->image:Lru/rocketbank/core/model/ImageModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
