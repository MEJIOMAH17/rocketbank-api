.class Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;
.super Lrx/Subscriber;
.source "ClusterMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->updateMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lio/realm/RealmResults<",
        "Lru/rocketbank/core/realm/RealmAtm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

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

.method public onNext(Lio/realm/RealmResults;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->access$100(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)Lio/realm/AtmRealmClusterManager;

    move-result-object v1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->access$000(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)Lio/realm/Realm;

    move-result-object v2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    .line 462
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getTitleColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    .line 463
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getLatitudeColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    .line 464
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getLongitudeColumnName()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    .line 460
    invoke-virtual/range {v1 .. v6}, Lio/realm/AtmRealmClusterManager;->updateRealmResults(Lio/realm/Realm;Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 447
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;->onNext(Lio/realm/RealmResults;)V

    return-void
.end method
