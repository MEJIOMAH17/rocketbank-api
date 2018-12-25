.class public final Lru/rocketbank/core/network/model/yandex/maps/GeoObject;
.super Ljava/lang/Object;
.source "GeoObject.kt"


# instance fields
.field private final point:Lcom/google/android/gms/maps/model/LatLng;

.field private final textAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    const-string v0, "textAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/Object;)Lru/rocketbank/core/network/model/yandex/maps/GeoObject;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->copy(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Lru/rocketbank/core/network/model/yandex/maps/GeoObject;
    .locals 1

    const-string v0, "textAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p1, p1, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

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

.method public final getPoint()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getTextAddress()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

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

    const-string v1, "GeoObject(textAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->textAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
