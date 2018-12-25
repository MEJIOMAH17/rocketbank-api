.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;
.super Lrx/Subscriber;
.source "DeliveryMapPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->loadDelivery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/delivery/DeliveryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->hideProgressDialog()V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->onNext(Lru/rocketbank/core/network/model/delivery/DeliveryResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/delivery/DeliveryResponse;)V
    .locals 6

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->getCity()Lru/rocketbank/core/network/model/delivery/City;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/delivery/City;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->getCity()Lru/rocketbank/core/network/model/delivery/City;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/delivery/City;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$setStartPosition$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 279
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->getCity()Lru/rocketbank/core/network/model/delivery/City;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/City;->getPolygons()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$setPolygones$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Ljava/util/ArrayList;)V

    .line 280
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->initMap()V

    .line 281
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->hideProgressDialog()V

    return-void

    :cond_1
    return-void
.end method
