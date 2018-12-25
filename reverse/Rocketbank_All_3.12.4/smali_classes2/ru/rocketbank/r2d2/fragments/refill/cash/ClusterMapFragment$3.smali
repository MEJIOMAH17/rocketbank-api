.class Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$3;
.super Ljava/lang/Object;
.source "ClusterMapFragment.java"

# interfaces
.implements Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener<",
        "Lcom/getkeepsafe/relinker/ReLinker<",
        "Lru/rocketbank/core/realm/RealmAtm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClusterItemClick(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .locals 0

    .line 403
    check-cast p1, Lcom/getkeepsafe/relinker/ReLinker;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$3;->onClusterItemClick$36ed8272(Lcom/getkeepsafe/relinker/ReLinker;)Z

    move-result p1

    return p1
.end method

.method public onClusterItemClick$36ed8272(Lcom/getkeepsafe/relinker/ReLinker;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)Z"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onClusterItemClicked$36ed8276(Lcom/getkeepsafe/relinker/ReLinker;)V

    const/4 p1, 0x1

    return p1
.end method
