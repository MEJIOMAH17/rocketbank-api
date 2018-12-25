.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;
.super Lrx/Subscriber;
.source "DeliveryMapPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onCameraIdle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $latlng:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic $x$inlined:I

.field final synthetic $y$inlined:I

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;II)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->$latlng:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    iput p3, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->$x$inlined:I

    iput p4, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->$y$inlined:I

    .line 107
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DeliveryPresenter"

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->onNext(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onNext(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->getTextAddress()Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->$latlng:Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "latlng"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$setLastAddressCoordinates$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$getHideError$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->updateAddress(Ljava/lang/String;Z)V

    .line 113
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$setHideError$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Z)V

    return-void
.end method
