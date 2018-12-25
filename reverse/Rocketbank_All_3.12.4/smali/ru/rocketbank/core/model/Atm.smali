.class public final Lru/rocketbank/core/model/Atm;
.super Ljava/lang/Object;
.source "Atm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Atm.kt\nru/rocketbank/core/model/Atm\n*L\n1#1,88:1\n*E\n"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private transient cachedMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private eur:Ljava/lang/Boolean;

.field private hidden:Ljava/lang/Boolean;

.field private hours:Ljava/lang/String;

.field private id:I

.field private lat:F

.field private lon:F

.field private name:Ljava/lang/String;

.field private transient position:Lcom/google/android/gms/maps/model/LatLng;

.field private rur:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private usd:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hours"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/model/Atm;->id:I

    .line 59
    iput-object p2, p0, Lru/rocketbank/core/model/Atm;->eur:Ljava/lang/Boolean;

    .line 60
    iput-object p4, p0, Lru/rocketbank/core/model/Atm;->rur:Ljava/lang/Boolean;

    .line 61
    iput-object p3, p0, Lru/rocketbank/core/model/Atm;->hidden:Ljava/lang/Boolean;

    .line 62
    iput-object p5, p0, Lru/rocketbank/core/model/Atm;->usd:Ljava/lang/Boolean;

    .line 63
    iput p6, p0, Lru/rocketbank/core/model/Atm;->lat:F

    .line 64
    iput p7, p0, Lru/rocketbank/core/model/Atm;->lon:F

    .line 65
    iput-object p8, p0, Lru/rocketbank/core/model/Atm;->address:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lru/rocketbank/core/model/Atm;->hours:Ljava/lang/String;

    .line 67
    iput-object p10, p0, Lru/rocketbank/core/model/Atm;->name:Ljava/lang/String;

    .line 68
    iput-object p11, p0, Lru/rocketbank/core/model/Atm;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/realm/RealmAtm;)V
    .locals 1

    const-string v0, "realmAtm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$id()I

    move-result v0

    .line 34
    iput v0, p0, Lru/rocketbank/core/model/Atm;->id:I

    .line 1016
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$isEur()Ljava/lang/Boolean;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->eur:Ljava/lang/Boolean;

    .line 1020
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$isRur()Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->rur:Ljava/lang/Boolean;

    .line 2019
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$isHidden()Ljava/lang/Boolean;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->hidden:Ljava/lang/Boolean;

    .line 2021
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$isUsd()Ljava/lang/Boolean;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->usd:Ljava/lang/Boolean;

    .line 2022
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$lat()F

    move-result v0

    .line 39
    iput v0, p0, Lru/rocketbank/core/model/Atm;->lat:F

    .line 2023
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$lon()F

    move-result v0

    .line 40
    iput v0, p0, Lru/rocketbank/core/model/Atm;->lon:F

    .line 2024
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->address:Ljava/lang/String;

    .line 2025
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$hours()Ljava/lang/String;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->hours:Ljava/lang/String;

    .line 2026
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->name:Ljava/lang/String;

    .line 2027
    invoke-virtual {p1}, Lru/rocketbank/core/realm/RealmAtm;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getEur()Ljava/lang/Boolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->eur:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHidden()Ljava/lang/Boolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHours()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->hours:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/core/model/Atm;->id:I

    return v0
.end method

.method public final getLat()F
    .locals 1

    .line 16
    iget v0, p0, Lru/rocketbank/core/model/Atm;->lat:F

    return v0
.end method

.method public final getLon()F
    .locals 1

    .line 17
    iget v0, p0, Lru/rocketbank/core/model/Atm;->lon:F

    return v0
.end method

.method public final getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->cachedMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/core/model/Atm;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->cachedMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 85
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->cachedMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    .line 73
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->position:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget v1, p0, Lru/rocketbank/core/model/Atm;->lat:F

    float-to-double v1, v1

    iget v3, p0, Lru/rocketbank/core/model/Atm;->lon:F

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lru/rocketbank/core/model/Atm;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 77
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRur()Ljava/lang/Boolean;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->rur:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsd()Ljava/lang/Boolean;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/Atm;->usd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->address:Ljava/lang/String;

    return-void
.end method

.method public final setEur(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->eur:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHidden(Ljava/lang/Boolean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->hidden:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHours(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->hours:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lru/rocketbank/core/model/Atm;->id:I

    return-void
.end method

.method public final setLat(F)V
    .locals 0

    .line 16
    iput p1, p0, Lru/rocketbank/core/model/Atm;->lat:F

    return-void
.end method

.method public final setLon(F)V
    .locals 0

    .line 17
    iput p1, p0, Lru/rocketbank/core/model/Atm;->lon:F

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRur(Ljava/lang/Boolean;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->rur:Ljava/lang/Boolean;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUsd(Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/Atm;->usd:Ljava/lang/Boolean;

    return-void
.end method
