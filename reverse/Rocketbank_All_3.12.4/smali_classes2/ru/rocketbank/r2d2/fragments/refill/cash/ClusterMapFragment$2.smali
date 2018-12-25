.class Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;
.super Lrx/Subscriber;
.source "ClusterMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Landroid/location/Location;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    iput-object p1, v0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->lastLocation:Landroid/location/Location;

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;->onNext(Landroid/location/Location;)V

    return-void
.end method
