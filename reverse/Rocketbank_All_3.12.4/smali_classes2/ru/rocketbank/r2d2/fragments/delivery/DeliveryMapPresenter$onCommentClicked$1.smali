.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;
.super Lrx/Subscriber;
.source "DeliveryMapPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->onCommentClicked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/delivery/DateResponse;",
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

    .line 299
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

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

    .line 302
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_0

    const v0, 0x7f11018d

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->showToast(I)V

    .line 303
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->hideProgressDialog()V

    return-void

    :cond_1
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Lru/rocketbank/core/network/model/delivery/DateResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->onNext(Lru/rocketbank/core/network/model/delivery/DateResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/delivery/DateResponse;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DateResponse;->getStepData()Lru/rocketbank/core/network/model/delivery/StepData;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/StepData;->getNearestFreeDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/DeliveryManager;->setNearestDate(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/StepData;->getStartDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/DeliveryManager;->setCurrentDate(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/StepData;->getIntervals()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/DeliveryManager;->setIntervals(Ljava/util/ArrayList;)V

    .line 311
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->selectDate()V

    .line 312
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->hideProgressDialog()V

    return-void

    :cond_1
    return-void
.end method
