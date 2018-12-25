.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;
.super Lrx/Subscriber;
.source "DeliveryMapPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->checkAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryMapPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryMapPresenter.kt\nru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2\n*L\n1#1,325:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $address:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->$address:Ljava/lang/String;

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

    const-string v0, "map"

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->onNext(Z)V

    return-void
.end method

.method public final onNext(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$showAddressError(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->$address:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$setAddress$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->setCommentStatus()V

    .line 160
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 162
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 163
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$getNeedScaleAfterCheckAddress$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$getLastAddressCoordinates$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->access$showMe(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_2
    return-void

    :cond_3
    return-void
.end method
