.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;
.super Lrx/Subscriber;
.source "DeliverySelectDatePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->daySelected(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/delivery/IntervalResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliverySelectDatePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliverySelectDatePresenter.kt\nru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1\n*L\n1#1,123:1\n*E\n"
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

    .line 65
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

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

    .line 71
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

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

    .line 65
    check-cast p1, Lru/rocketbank/core/network/model/delivery/IntervalResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;->onNext(Lru/rocketbank/core/network/model/delivery/IntervalResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/delivery/IntervalResponse;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/delivery/IntervalResponse;->getIntervals()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->intervalsLoaded(Ljava/util/ArrayList;)V

    .line 77
    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->hideProgressDialog()V

    return-void

    :cond_0
    return-void
.end method
