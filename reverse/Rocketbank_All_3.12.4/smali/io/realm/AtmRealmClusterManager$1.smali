.class final Lio/realm/AtmRealmClusterManager$1;
.super Ljava/lang/Object;
.source "AtmRealmClusterManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/AtmRealmClusterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/AtmRealmClusterManager;

.field final synthetic val$map:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lio/realm/AtmRealmClusterManager;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lio/realm/AtmRealmClusterManager$1;->this$0:Lio/realm/AtmRealmClusterManager;

    iput-object p2, p0, Lio/realm/AtmRealmClusterManager$1;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMove()V
    .locals 2

    .line 54
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager$1;->this$0:Lio/realm/AtmRealmClusterManager;

    invoke-virtual {v0}, Lio/realm/AtmRealmClusterManager;->getRenderer()Lcom/google/maps/android/clustering/view/ClusterRenderer;

    move-result-object v0

    instance-of v0, v0, Lio/realm/OnCameraMoveListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager$1;->this$0:Lio/realm/AtmRealmClusterManager;

    invoke-virtual {v0}, Lio/realm/AtmRealmClusterManager;->getRenderer()Lcom/google/maps/android/clustering/view/ClusterRenderer;

    move-result-object v0

    check-cast v0, Lio/realm/OnCameraMoveListener;

    iget-object v1, p0, Lio/realm/AtmRealmClusterManager$1;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v1}, Lio/realm/AtmRealmClusterManager;->access$000$44aa9925(Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/OnCameraMoveListener;->onCameraMove(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    :cond_0
    return-void
.end method
