.class final Lio/realm/AtmRealmClusterManager$3;
.super Ljava/lang/Object;
.source "AtmRealmClusterManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/AtmRealmClusterManager;->filter(Lcom/google/android/gms/maps/model/LatLngBounds;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lcom/getkeepsafe/relinker/ReLinker<",
        "TM;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/AtmRealmClusterManager;

.field final synthetic val$mapClusterViewportBounds:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method constructor <init>(Lio/realm/AtmRealmClusterManager;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lio/realm/AtmRealmClusterManager$3;->this$0:Lio/realm/AtmRealmClusterManager;

    iput-object p2, p0, Lio/realm/AtmRealmClusterManager$3;->val$mapClusterViewportBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 152
    check-cast p1, Lcom/getkeepsafe/relinker/ReLinker;

    .line 1155
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager$3;->val$mapClusterViewportBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/ReLinker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
