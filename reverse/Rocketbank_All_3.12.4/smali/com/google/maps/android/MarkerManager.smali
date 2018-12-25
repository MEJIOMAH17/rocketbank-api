.class public final Lcom/google/maps/android/MarkerManager;
.super Ljava/lang/Object;
.source "MarkerManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/MarkerManager$Collection;
    }
.end annotation


# instance fields
.field private final mAllMarkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/google/maps/android/MarkerManager$Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mNamedCollections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/MarkerManager$Collection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/MarkerManager;->mNamedCollections:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method static synthetic access$400(Lcom/google/maps/android/MarkerManager;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/maps/android/MarkerManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    if-eqz v0, :cond_0

    .line 94
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$100(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$100(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V

    :cond_0
    return-void
.end method

.method public final onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$200(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$200(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lcom/google/maps/android/MarkerManager$Collection;->remove(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
