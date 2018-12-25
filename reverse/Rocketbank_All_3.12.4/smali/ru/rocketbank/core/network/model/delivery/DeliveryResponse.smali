.class public final Lru/rocketbank/core/network/model/delivery/DeliveryResponse;
.super Ljava/lang/Object;
.source "DeliveryResponse.kt"


# instance fields
.field private final city:Lru/rocketbank/core/network/model/delivery/City;

.field private final delivery:Lru/rocketbank/core/network/model/delivery/DeliveryModel;

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/City;Lru/rocketbank/core/network/model/delivery/DeliveryModel;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->status:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->city:Lru/rocketbank/core/network/model/delivery/City;

    iput-object p3, p0, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->delivery:Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    return-void
.end method


# virtual methods
.method public final getCity()Lru/rocketbank/core/network/model/delivery/City;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->city:Lru/rocketbank/core/network/model/delivery/City;

    return-object v0
.end method

.method public final getDelivery()Lru/rocketbank/core/network/model/delivery/DeliveryModel;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->delivery:Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->status:Ljava/lang/String;

    return-object v0
.end method
