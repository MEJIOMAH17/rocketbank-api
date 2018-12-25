.class Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$4;
.super Ljava/lang/Object;
.source "ClusterMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    .line 415
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onMarkerSelected(Lcom/google/android/gms/maps/model/Marker;)V

    .line 416
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->access$100(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)Lio/realm/AtmRealmClusterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/AtmRealmClusterManager;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    return p1
.end method
