.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;
.super Lrx/Subscriber;
.source "DeliverySelectDatePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->nextPressed(Ljava/lang/String;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliverySelectDatePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliverySelectDatePresenter.kt\nru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1\n*L\n1#1,123:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

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

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->hideProgressDialog()V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->onNext(Lru/rocketbank/core/network/model/delivery/DeliveryResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/delivery/DeliveryResponse;)V
    .locals 3

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryResponse;->getDelivery()Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/DeliveryManager;->setLat(D)V

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->getLng()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/DeliveryManager;->setLng(D)V

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/DeliveryManager;->setDeliveryText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->getSender()Lru/rocketbank/core/network/model/delivery/Sender;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/Sender;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/DeliveryManager;->setSenderPhoto(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->nextStep()V

    .line 107
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->hideProgressDialog()V

    return-void

    :cond_1
    return-void
.end method
