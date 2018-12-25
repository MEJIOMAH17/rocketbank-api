.class public final Lcom/google/maps/android/MarkerManager$Collection;
.super Ljava/lang/Object;
.source "MarkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/MarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Collection"
.end annotation


# instance fields
.field private mInfoWindowClickListener:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

.field private mMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

.field private final mMarkers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/maps/android/MarkerManager;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/MarkerManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    return-object p0
.end method

.method public static containsLocation$4399593d(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)Z
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1099
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1103
    :cond_0
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 1104
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    move-object/from16 v7, p1

    .line 1105
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 1106
    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 1107
    iget-wide v10, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1109
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/maps/model/LatLng;

    sub-double v13, v5, v10

    .line 1110
    invoke-static {v13, v14}, Lcom/google/maps/android/MarkerManager$Collection;->wrap$482004d7(D)D

    move-result-wide v13

    cmpl-double v15, v3, v8

    const-wide/16 v16, 0x0

    if-nez v15, :cond_1

    cmpl-double v15, v13, v16

    if-nez v15, :cond_1

    return v0

    :cond_1
    move-object/from16 v18, v1

    .line 1115
    iget-wide v0, v12, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    move-wide/from16 v19, v3

    .line 1116
    iget-wide v2, v12, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    sub-double v10, v2, v10

    .line 1118
    invoke-static {v10, v11}, Lcom/google/maps/android/MarkerManager$Collection;->wrap$482004d7(D)D

    move-result-wide v10

    cmpl-double v4, v13, v16

    if-ltz v4, :cond_2

    cmpl-double v4, v13, v10

    if-gez v4, :cond_3

    :cond_2
    cmpg-double v4, v13, v16

    if-gez v4, :cond_6

    cmpg-double v4, v13, v10

    if-gez v4, :cond_6

    :cond_3
    :goto_1
    move-wide/from16 v25, v2

    :cond_4
    :goto_2
    move-wide/from16 v29, v5

    move-wide/from16 v4, v19

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_6
    const-wide v21, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v4, v19, v21

    if-lez v4, :cond_b

    cmpg-double v4, v8, v21

    if-lez v4, :cond_3

    cmpg-double v4, v0, v21

    if-lez v4, :cond_3

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v4, v8, v21

    if-gez v4, :cond_3

    cmpl-double v4, v0, v21

    if-ltz v4, :cond_7

    goto :goto_1

    :cond_7
    const-wide v23, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v4, v10, v23

    if-lez v4, :cond_b

    move-wide/from16 v25, v2

    sub-double v2, v10, v13

    mul-double v23, v8, v2

    mul-double v27, v0, v13

    add-double v23, v23, v27

    div-double v23, v23, v10

    cmpl-double v4, v8, v16

    if-ltz v4, :cond_8

    cmpl-double v4, v0, v16

    if-ltz v4, :cond_8

    cmpg-double v4, v19, v23

    if-ltz v4, :cond_4

    :cond_8
    cmpg-double v4, v8, v16

    if-gtz v4, :cond_9

    cmpg-double v4, v0, v16

    if-gtz v4, :cond_9

    cmpl-double v4, v19, v23

    if-ltz v4, :cond_9

    goto :goto_3

    :cond_9
    cmpl-double v4, v19, v21

    if-ltz v4, :cond_a

    :goto_3
    move-wide/from16 v29, v5

    move-wide/from16 v4, v19

    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    move-wide/from16 v29, v5

    move-wide/from16 v4, v19

    .line 2086
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    .line 3038
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v2, v12

    add-double/2addr v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v8, v2

    cmpl-double v2, v15, v8

    if-ltz v2, :cond_5

    goto :goto_4

    :cond_b
    move-wide/from16 v25, v2

    goto/16 :goto_2

    :goto_5
    if-eqz v2, :cond_c

    add-int/lit8 v7, v7, 0x1

    :cond_c
    move-wide v8, v0

    move-wide v3, v4

    move-object/from16 v1, v18

    move-wide/from16 v10, v25

    move-wide/from16 v5, v29

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_e

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static wrap$482004d7(D)D
    .locals 5

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    return-wide p0

    :cond_0
    sub-double/2addr p0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v2

    add-double/2addr p0, v2

    rem-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager;->access$400(Lcom/google/maps/android/MarkerManager;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager;->access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final clear()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 172
    iget-object v2, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v2}, Lcom/google/maps/android/MarkerManager;->access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final remove(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager;->access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    return-void
.end method
