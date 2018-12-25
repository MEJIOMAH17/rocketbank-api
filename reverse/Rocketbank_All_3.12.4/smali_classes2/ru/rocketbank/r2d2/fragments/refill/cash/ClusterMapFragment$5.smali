.class Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$5;
.super Ljava/lang/Object;
.source "ClusterMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


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

    .line 420
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
