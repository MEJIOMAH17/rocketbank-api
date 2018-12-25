.class public Lio/realm/AtmRealmClusterManager;
.super Lcom/google/maps/android/clustering/ClusterManager;
.source "AtmRealmClusterManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/google/maps/android/clustering/ClusterManager<",
        "Lcom/getkeepsafe/relinker/ReLinker<",
        "TM;>;>;"
    }
.end annotation


# instance fields
.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private mapClusterViewportBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private subscription:Lrx/Subscription;

.field private titleColumnIndex:J

.field private wrappedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "TM;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/clustering/ClusterManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lio/realm/AtmRealmClusterManager;->titleColumnIndex:J

    .line 1050
    iput-object p2, p0, Lio/realm/AtmRealmClusterManager;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 1051
    new-instance p1, Lio/realm/AtmRealmClusterManager$1;

    invoke-direct {p1, p0, p2}, Lio/realm/AtmRealmClusterManager$1;-><init>(Lio/realm/AtmRealmClusterManager;Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    return-void
.end method

.method static synthetic access$000$44aa9925(Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 31
    invoke-static {p0}, Lio/realm/AtmRealmClusterManager;->getBounds(Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$101(Lio/realm/AtmRealmClusterManager;)V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/google/maps/android/clustering/ClusterManager;->clearItems()V

    return-void
.end method

.method static synthetic access$201(Lio/realm/AtmRealmClusterManager;Ljava/util/Collection;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/google/maps/android/clustering/ClusterManager;->addItems(Ljava/util/Collection;)V

    return-void
.end method

.method private static getBounds(Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    .line 68
    iget-object p0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 69
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v1, v3

    const-wide v3, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v1, v3

    .line 70
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v7, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v5, v7

    mul-double/2addr v5, v3

    .line 71
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    add-double/2addr v7, v1

    iget-wide v9, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v9, v5

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 72
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v7, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v7, v1

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v1, v5

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 73
    new-instance p0, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object p0
.end method

.method private static getValue(Lio/realm/internal/Row;Lio/realm/RealmFieldType;J)D
    .locals 1

    .line 124
    sget-object v0, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    if-ne p1, v0, :cond_0

    .line 125
    invoke-interface {p0, p2, p3}, Lio/realm/internal/Row;->getDouble(J)D

    move-result-wide p0

    return-wide p0

    .line 126
    :cond_0
    sget-object v0, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-ne p1, v0, :cond_1

    .line 127
    invoke-interface {p0, p2, p3}, Lio/realm/internal/Row;->getFloat(J)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    .line 128
    :cond_1
    sget-object v0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne p1, v0, :cond_2

    .line 129
    invoke-interface {p0, p2, p3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0

    .line 131
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The value type needs to be of double, float or int"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "TM;>;>;)V"
        }
    .end annotation

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use updateRealmResults instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final filter(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager;->wrappedItems:Ljava/util/List;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iput-object p1, p0, Lio/realm/AtmRealmClusterManager;->mapClusterViewportBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 145
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/AtmRealmClusterManager;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 149
    :cond_1
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager;->wrappedItems:Ljava/util/List;

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    .line 150
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 151
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/realm/AtmRealmClusterManager$3;

    invoke-direct {v1, p0, p1}, Lio/realm/AtmRealmClusterManager$3;-><init>(Lio/realm/AtmRealmClusterManager;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 152
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object p1

    new-instance v0, Lio/realm/AtmRealmClusterManager$2;

    invoke-direct {v0, p0}, Lio/realm/AtmRealmClusterManager$2;-><init>(Lio/realm/AtmRealmClusterManager;)V

    .line 159
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lio/realm/AtmRealmClusterManager;->subscription:Lrx/Subscription;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateRealmResults(Lio/realm/Realm;Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TM;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 92
    invoke-super/range {p0 .. p0}, Lcom/google/maps/android/clustering/ClusterManager;->clearItems()V

    .line 2047
    iget-object v2, v1, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-virtual {v2}, Lio/realm/internal/Collection;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    move-object/from16 v3, p3

    .line 95
    invoke-virtual {v2, v3}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lio/realm/AtmRealmClusterManager;->titleColumnIndex:J

    .line 96
    iget-wide v3, v0, Lio/realm/AtmRealmClusterManager;->titleColumnIndex:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "titleColumnName not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v3, p4

    .line 99
    invoke-virtual {v2, v3}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "latitudeColumnName not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v7, p5

    .line 103
    invoke-virtual {v2, v7}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_2

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "longitudeColumnName not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lio/realm/RealmResults;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lio/realm/AtmRealmClusterManager;->wrappedItems:Ljava/util/List;

    const/4 v5, 0x0

    .line 109
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/realm/RealmResults;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 110
    invoke-virtual {v1, v5}, Lio/realm/RealmResults;->get(I)Lio/realm/RealmModel;

    move-result-object v6

    check-cast v6, Lio/realm/RealmObject;

    .line 112
    move-object v9, v6

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    .line 113
    new-instance v15, Lcom/getkeepsafe/relinker/ReLinker;

    move-object/from16 v13, p1

    .line 114
    invoke-virtual {v13, v6}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lio/realm/RealmObject;

    iget-wide v12, v0, Lio/realm/AtmRealmClusterManager;->titleColumnIndex:J

    .line 2135
    invoke-interface {v9, v12, v13}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v12

    .line 116
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v6

    invoke-static {v9, v6, v3, v4}, Lio/realm/AtmRealmClusterManager;->getValue(Lio/realm/internal/Row;Lio/realm/RealmFieldType;J)D

    move-result-wide v13

    .line 117
    invoke-virtual {v2, v7, v8}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v6

    invoke-static {v9, v6, v7, v8}, Lio/realm/AtmRealmClusterManager;->getValue(Lio/realm/internal/Row;Lio/realm/RealmFieldType;J)D

    move-result-wide v17

    move-object v10, v15

    move-object v6, v15

    move-wide/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Lcom/getkeepsafe/relinker/ReLinker;-><init>(Lio/realm/RealmObject;Ljava/lang/String;DD)V

    .line 118
    iget-object v9, v0, Lio/realm/AtmRealmClusterManager;->wrappedItems:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, v0, Lio/realm/AtmRealmClusterManager;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v1}, Lio/realm/AtmRealmClusterManager;->getBounds(Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/AtmRealmClusterManager;->filter(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-void
.end method
