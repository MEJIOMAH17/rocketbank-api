.class final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;
.super Ljava/lang/Object;
.source "DeliveryMapPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->checkAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;->call(Ljava/util/ArrayList;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/util/ArrayList;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;)",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->getPoint()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v0, v2}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$checkAddressInPolygon(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 144
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->getPoint()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v2, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$setLastAddressCoordinates$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
