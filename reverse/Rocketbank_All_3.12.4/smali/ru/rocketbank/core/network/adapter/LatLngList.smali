.class public final Lru/rocketbank/core/network/adapter/LatLngList;
.super Ljava/util/ArrayList;
.source "LatLngListDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge contains(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 0

    .line 34
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/LatLngList;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result p1

    return p1
.end method

.method public final bridge getSize()I
    .locals 1

    .line 34
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final bridge indexOf(Lcom/google/android/gms/maps/model/LatLng;)I
    .locals 0

    .line 34
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/LatLngList;->indexOf(Lcom/google/android/gms/maps/model/LatLng;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Lcom/google/android/gms/maps/model/LatLng;)I
    .locals 0

    .line 34
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/LatLngList;->lastIndexOf(Lcom/google/android/gms/maps/model/LatLng;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/LatLngList;->removeAt(I)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public final bridge remove(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 0

    .line 34
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/adapter/LatLngList;->remove(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result p1

    return p1
.end method

.method public final bridge removeAt(I)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/core/network/adapter/LatLngList;->getSize()I

    move-result v0

    return v0
.end method
