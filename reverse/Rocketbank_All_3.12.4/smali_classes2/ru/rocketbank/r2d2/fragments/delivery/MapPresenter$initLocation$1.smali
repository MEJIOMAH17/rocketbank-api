.class public final Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;
.super Lrx/Subscriber;
.source "MapPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->initLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

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

    return-void
.end method

.method public final onNext(Landroid/location/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->setLastLocation(Landroid/location/Location;)V

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;->onNext(Landroid/location/Location;)V

    return-void
.end method
