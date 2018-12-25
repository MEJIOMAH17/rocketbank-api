.class public final Lio/realm/WidgetDataRealmProxy;
.super Lru/rocketbank/core/realm/WidgetData;
.source "WidgetDataRealmProxy.java"

# interfaces
.implements Lio/realm/WidgetDataRealmProxyInterface;
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;
    }
.end annotation


# static fields
.field private static final FIELD_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

.field private friendsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;"
        }
    .end annotation
.end field

.field private operationRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmOperation;",
            ">;"
        }
    .end annotation
.end field

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lru/rocketbank/core/realm/WidgetData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "balance"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "miles"

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "limit"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "usedOperation"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "operator"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "number"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "unlimitedCashouts"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "friends"

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "operation"

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/WidgetDataRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lru/rocketbank/core/realm/WidgetData;-><init>()V

    .line 109
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method private static copy$4006c7d1(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetData;Ljava/util/Map;)Lru/rocketbank/core/realm/WidgetData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lru/rocketbank/core/realm/WidgetData;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lru/rocketbank/core/realm/WidgetData;"
        }
    .end annotation

    .line 864
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 866
    check-cast v0, Lru/rocketbank/core/realm/WidgetData;

    return-object v0

    .line 869
    :cond_0
    const-class v0, Lru/rocketbank/core/realm/WidgetData;

    move-object v1, p1

    check-cast v1, Lio/realm/WidgetDataRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lio/realm/Realm;->createObjectInternal$1e283631(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/realm/WidgetData;

    .line 870
    move-object v2, v0

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    move-object p1, v0

    check-cast p1, Lio/realm/WidgetDataRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$balance()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$balance(Ljava/lang/String;)V

    .line 872
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$miles()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$miles(Ljava/lang/String;)V

    .line 873
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$limit()I

    move-result v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$limit(I)V

    .line 874
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$usedOperation()I

    move-result v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$usedOperation(I)V

    .line 875
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operator()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$operator(Ljava/lang/String;)V

    .line 876
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    .line 877
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$unlimitedCashouts()Z

    move-result v2

    invoke-interface {p1, v2}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$unlimitedCashouts(Z)V

    .line 879
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$friends()Lio/realm/RealmList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 881
    invoke-interface {p1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$friends()Lio/realm/RealmList;

    move-result-object v4

    move v5, v3

    .line 882
    :goto_0
    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 883
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v6

    check-cast v6, Lru/rocketbank/core/realm/RealmWidgetFriend;

    .line 884
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/rocketbank/core/realm/RealmWidgetFriend;

    if-eqz v6, :cond_1

    .line 886
    invoke-virtual {v4, v6}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_1

    .line 888
    :cond_1
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v6

    check-cast v6, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-static {p0, v6, p2}, Lio/realm/RealmWidgetFriendRealmProxy;->copyOrUpdate$31980307(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmWidgetFriend;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 894
    :cond_2
    invoke-interface {v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operation()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 896
    invoke-interface {p1}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operation()Lio/realm/RealmList;

    move-result-object p1

    .line 897
    :goto_2
    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 898
    invoke-virtual {v1, v3}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/RealmOperation;

    .line 899
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/RealmOperation;

    if-eqz v2, :cond_3

    .line 901
    invoke-virtual {p1, v2}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_3

    .line 903
    :cond_3
    invoke-virtual {v1, v3}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {p0, v2, p2}, Lio/realm/RealmOperationRealmProxy;->copyOrUpdate$1048dc1b(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperation;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetData;ZLjava/util/Map;)Lru/rocketbank/core/realm/WidgetData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lru/rocketbank/core/realm/WidgetData;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lru/rocketbank/core/realm/WidgetData;"
        }
    .end annotation

    .line 825
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-wide v1, v1, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 826
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 828
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 831
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 832
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 834
    check-cast v1, Lru/rocketbank/core/realm/WidgetData;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 839
    const-class v2, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 840
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v3

    .line 841
    move-object v5, p1

    check-cast v5, Lio/realm/WidgetDataRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$id()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 844
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    iget-object v1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    const-class v2, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 845
    new-instance v1, Lio/realm/WidgetDataRealmProxy;

    invoke-direct {v1}, Lio/realm/WidgetDataRealmProxy;-><init>()V

    .line 846
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw p0

    :cond_3
    const/4 p2, 0x0

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 856
    invoke-static {p0, v1, p1, p3}, Lio/realm/WidgetDataRealmProxy;->update(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetData;Lru/rocketbank/core/realm/WidgetData;Ljava/util/Map;)Lru/rocketbank/core/realm/WidgetData;

    move-result-object p0

    return-object p0

    .line 858
    :cond_5
    invoke-static {p0, p1, p3}, Lio/realm/WidgetDataRealmProxy;->copy$4006c7d1(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetData;Ljava/util/Map;)Lru/rocketbank/core/realm/WidgetData;

    move-result-object p0

    return-object p0
.end method

.method public static createDetachedCopy(Lru/rocketbank/core/realm/WidgetData;IILjava/util/Map;)Lru/rocketbank/core/realm/WidgetData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/realm/WidgetData;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lru/rocketbank/core/realm/WidgetData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-gt p1, p2, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_5

    .line 1212
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-eqz v1, :cond_2

    .line 1216
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_1

    .line 1217
    iget-object p0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lru/rocketbank/core/realm/WidgetData;

    return-object p0

    .line 1219
    :cond_1
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lru/rocketbank/core/realm/WidgetData;

    .line 1220
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    goto :goto_0

    .line 1223
    :cond_2
    new-instance v2, Lru/rocketbank/core/realm/WidgetData;

    invoke-direct {v2}, Lru/rocketbank/core/realm/WidgetData;-><init>()V

    .line 1224
    new-instance v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v1, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    :goto_0
    move-object v1, v2

    check-cast v1, Lio/realm/WidgetDataRealmProxyInterface;

    check-cast p0, Lio/realm/WidgetDataRealmProxyInterface;

    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$id()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$id(J)V

    .line 1227
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$balance()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$balance(Ljava/lang/String;)V

    .line 1228
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$miles()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$miles(Ljava/lang/String;)V

    .line 1229
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$limit()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$limit(I)V

    .line 1230
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$usedOperation()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$usedOperation(I)V

    .line 1231
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operator()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$operator(Ljava/lang/String;)V

    .line 1232
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    .line 1233
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$unlimitedCashouts()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$unlimitedCashouts(Z)V

    const/4 v3, 0x0

    if-ne p1, p2, :cond_3

    .line 1237
    invoke-interface {v1, v0}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$friends(Lio/realm/RealmList;)V

    goto :goto_2

    .line 1239
    :cond_3
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$friends()Lio/realm/RealmList;

    move-result-object v4

    .line 1240
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 1241
    invoke-interface {v1, v5}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$friends(Lio/realm/RealmList;)V

    add-int/lit8 v6, p1, 0x1

    .line 1243
    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    .line 1245
    invoke-virtual {v4, v8}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v9

    check-cast v9, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-static {v9, v6, p2, p3}, Lio/realm/RealmWidgetFriendRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmWidgetFriend;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;

    move-result-object v9

    .line 1246
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne p1, p2, :cond_5

    .line 1252
    invoke-interface {v1, v0}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$operation(Lio/realm/RealmList;)V

    goto :goto_4

    .line 1254
    :cond_5
    invoke-interface {p0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operation()Lio/realm/RealmList;

    move-result-object p0

    .line 1255
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    .line 1256
    invoke-interface {v1, v0}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$operation(Lio/realm/RealmList;)V

    add-int/lit8 p1, p1, 0x1

    .line 1258
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_6

    .line 1260
    invoke-virtual {p0, v3}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {v4, p1, p2, p3}, Lio/realm/RealmOperationRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmOperation;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object v4

    .line 1261
    invoke-virtual {v0, v4}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-object v2

    :cond_7
    :goto_5
    return-object v0
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 7

    const-string v0, "WidgetData"

    .line 437
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WidgetData"

    .line 438
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "id"

    .line 439
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "balance"

    .line 440
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "miles"

    .line 441
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "limit"

    .line 442
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "usedOperation"

    .line 443
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "operator"

    .line 444
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "number"

    .line 445
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "unlimitedCashouts"

    .line 446
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v1, "RealmWidgetFriend"

    .line 447
    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    invoke-static {p0}, Lio/realm/RealmWidgetFriendRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    :cond_0
    const-string v1, "friends"

    .line 450
    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "RealmWidgetFriend"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;

    const-string v1, "RealmOperation"

    .line 451
    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    invoke-static {p0}, Lio/realm/RealmOperationRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    :cond_1
    const-string v1, "operation"

    .line 454
    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "RealmOperation"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;

    return-object v0

    :cond_2
    const-string v0, "WidgetData"

    .line 457
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    return-object p0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_WidgetData"

    return-object v0
.end method

.method private static update(Lio/realm/Realm;Lru/rocketbank/core/realm/WidgetData;Lru/rocketbank/core/realm/WidgetData;Ljava/util/Map;)Lru/rocketbank/core/realm/WidgetData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lru/rocketbank/core/realm/WidgetData;",
            "Lru/rocketbank/core/realm/WidgetData;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lru/rocketbank/core/realm/WidgetData;"
        }
    .end annotation

    .line 1268
    move-object v0, p1

    check-cast v0, Lio/realm/WidgetDataRealmProxyInterface;

    check-cast p2, Lio/realm/WidgetDataRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$balance()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$balance(Ljava/lang/String;)V

    .line 1269
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$miles()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$miles(Ljava/lang/String;)V

    .line 1270
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$limit()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$limit(I)V

    .line 1271
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$usedOperation()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$usedOperation(I)V

    .line 1272
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$operator(Ljava/lang/String;)V

    .line 1273
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    .line 1274
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$unlimitedCashouts()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/WidgetDataRealmProxyInterface;->realmSet$unlimitedCashouts(Z)V

    .line 1275
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$friends()Lio/realm/RealmList;

    move-result-object v1

    .line 1276
    invoke-interface {v0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$friends()Lio/realm/RealmList;

    move-result-object v2

    .line 1277
    invoke-virtual {v2}, Lio/realm/RealmList;->clear()V

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v4, v3

    .line 1279
    :goto_0
    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1280
    invoke-virtual {v1, v4}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/realm/RealmWidgetFriend;

    .line 1281
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/realm/RealmWidgetFriend;

    if-eqz v5, :cond_0

    .line 1283
    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_1

    .line 1285
    :cond_0
    invoke-virtual {v1, v4}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-static {p0, v5, p3}, Lio/realm/RealmWidgetFriendRealmProxy;->copyOrUpdate$31980307(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmWidgetFriend;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1289
    :cond_1
    invoke-interface {p2}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operation()Lio/realm/RealmList;

    move-result-object p2

    .line 1290
    invoke-interface {v0}, Lio/realm/WidgetDataRealmProxyInterface;->realmGet$operation()Lio/realm/RealmList;

    move-result-object v0

    .line 1291
    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    if-eqz p2, :cond_3

    .line 1293
    :goto_2
    invoke-virtual {p2}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 1294
    invoke-virtual {p2, v3}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/realm/RealmOperation;

    .line 1295
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/realm/RealmOperation;

    if-eqz v1, :cond_2

    .line 1297
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_3

    .line 1299
    :cond_2
    invoke-virtual {p2, v3}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/realm/RealmOperation;

    invoke-static {p0, v1, p3}, Lio/realm/RealmOperationRealmProxy;->copyOrUpdate$1048dc1b(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperation;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;
    .locals 9

    const-string v0, "class_WidgetData"

    .line 461
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "The \'WidgetData\' class is missing from the schema for this Realm."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "class_WidgetData"

    .line 464
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v1

    const-wide/16 v3, 0xa

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 468
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is less than expected - expected 10 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "Field count is more than expected - expected 10 but was %1$d"

    const/4 v3, 0x1

    .line 471
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_2
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is more than expected - expected 10 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 478
    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_1

    .line 481
    :cond_4
    new-instance v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    invoke-direct {v1, v0}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;-><init>(Lio/realm/internal/Table;)V

    .line 483
    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v2

    if-nez v2, :cond_5

    .line 484
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_5
    invoke-virtual {v0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    iget-wide v4, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    .line 487
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Primary Key annotation definition was changed, from field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to field id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v2, "id"

    .line 491
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 492
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string v2, "id"

    .line 494
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_8

    .line 495
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'long\' for field \'id\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_8
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    .line 498
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v2, "id"

    .line 500
    invoke-virtual {v0, v2}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 501
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v2, "balance"

    .line 503
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 504
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'balance\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v2, "balance"

    .line 506
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_c

    .line 507
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'balance\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 509
    :cond_c
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 510
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'balance\' is required. Either set @Required to field \'balance\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string v2, "miles"

    .line 512
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 513
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'miles\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v2, "miles"

    .line 515
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_f

    .line 516
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'miles\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 518
    :cond_f
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_10

    .line 519
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'miles\' is required. Either set @Required to field \'miles\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_10
    const-string v2, "limit"

    .line 521
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 522
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'limit\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v2, "limit"

    .line 524
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_12

    .line 525
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'int\' for field \'limit\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 527
    :cond_12
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 528
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'limit\' does support null values in the existing Realm file. Use corresponding boxed type for field \'limit\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_13
    const-string v2, "usedOperation"

    .line 530
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 531
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'usedOperation\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_14
    const-string v2, "usedOperation"

    .line 533
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_15

    .line 534
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'int\' for field \'usedOperation\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_15
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 537
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'usedOperation\' does support null values in the existing Realm file. Use corresponding boxed type for field \'usedOperation\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_16
    const-string v2, "operator"

    .line 539
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 540
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'operator\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_17
    const-string v2, "operator"

    .line 542
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_18

    .line 543
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'operator\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 545
    :cond_18
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_19

    .line 546
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'operator\' is required. Either set @Required to field \'operator\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_19
    const-string v2, "number"

    .line 548
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 549
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'number\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1a
    const-string v2, "number"

    .line 551
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_1b

    .line 552
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'number\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 554
    :cond_1b
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 555
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'number\' is required. Either set @Required to field \'number\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1c
    const-string v2, "unlimitedCashouts"

    .line 557
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 558
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'unlimitedCashouts\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1d
    const-string v2, "unlimitedCashouts"

    .line 560
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_1e

    .line 561
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'boolean\' for field \'unlimitedCashouts\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_1e
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 564
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'unlimitedCashouts\' does support null values in the existing Realm file. Use corresponding boxed type for field \'unlimitedCashouts\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1f
    const-string v2, "friends"

    .line 566
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 567
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'friends\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_20
    const-string v2, "friends"

    .line 569
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_21

    .line 570
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'RealmWidgetFriend\' for field \'friends\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_21
    const-string v2, "class_RealmWidgetFriend"

    .line 572
    invoke-virtual {p0, v2}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 573
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing class \'class_RealmWidgetFriend\' for field \'friends\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_22
    const-string v2, "class_RealmWidgetFriend"

    .line 575
    invoke-virtual {p0, v2}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 576
    iget-wide v3, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 577
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid RealmList type for field \'friends\': \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' expected - was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_23
    const-string v2, "operation"

    .line 579
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 580
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'operation\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_24
    const-string v2, "operation"

    .line 582
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq p1, v2, :cond_25

    .line 583
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'RealmOperation\' for field \'operation\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_25
    const-string p1, "class_RealmOperation"

    .line 585
    invoke-virtual {p0, p1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 586
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing class \'class_RealmOperation\' for field \'operation\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_26
    const-string p1, "class_RealmOperation"

    .line 588
    invoke-virtual {p0, p1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p1

    .line 589
    iget-wide v2, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 590
    new-instance v2, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid RealmList type for field \'operation\': \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' expected - was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_27
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1378
    :cond_1
    check-cast p1, Lio/realm/WidgetDataRealmProxy;

    .line 1380
    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1381
    iget-object v3, p1, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1382
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1384
    :cond_3
    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1385
    iget-object v3, p1, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1386
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1388
    :cond_5
    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1363
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1365
    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 1369
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long v6, v2, v0

    long-to-int v0, v6

    add-int/2addr v5, v0

    return v5
.end method

.method public final realm$injectObjectContext()V
    .locals 3

    .line 114
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 118
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iput-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    .line 119
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 120
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 121
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 122
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 123
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public final realmGet$balance()Ljava/lang/String;
    .locals 3

    .line 147
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 148
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$friends()Lio/realm/RealmList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 334
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->friendsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->friendsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 338
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lru/rocketbank/core/realm/RealmWidgetFriend;

    iget-object v3, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/WidgetDataRealmProxy;->friendsRealmList:Lio/realm/RealmList;

    .line 339
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->friendsRealmList:Lio/realm/RealmList;

    return-object v0
.end method

.method public final realmGet$id()J
    .locals 3

    .line 129
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 130
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final realmGet$limit()I
    .locals 3

    .line 207
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 208
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$miles()Ljava/lang/String;
    .locals 3

    .line 177
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 178
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$number()Ljava/lang/String;
    .locals 3

    .line 281
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 282
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$operation()Lio/realm/RealmList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmOperation;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 387
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->operationRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->operationRealmList:Lio/realm/RealmList;

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 391
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lru/rocketbank/core/realm/RealmOperation;

    iget-object v3, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/WidgetDataRealmProxy;->operationRealmList:Lio/realm/RealmList;

    .line 392
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->operationRealmList:Lio/realm/RealmList;

    return-object v0
.end method

.method public final realmGet$operator()Ljava/lang/String;
    .locals 3

    .line 251
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 252
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public final realmGet$unlimitedCashouts()Z
    .locals 3

    .line 311
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 312
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public final realmGet$usedOperation()I
    .locals 3

    .line 229
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 230
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmSet$balance(Ljava/lang/String;)V
    .locals 11

    .line 153
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 159
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 162
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v6, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 168
    iget-object p1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v0, v0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 171
    :cond_3
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$friends(Lio/realm/RealmList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;)V"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "friends"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 352
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 353
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 355
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    .line 356
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/RealmWidgetFriend;

    if-eqz v2, :cond_3

    .line 2283
    instance-of v3, v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 360
    :cond_2
    invoke-virtual {v0, v2}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    .line 358
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    :cond_4
    move-object p1, v1

    .line 366
    :cond_5
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 367
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lio/realm/internal/LinkView;->clear()V

    if-nez p1, :cond_6

    return-void

    .line 372
    :cond_6
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    .line 3283
    instance-of v2, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_9

    .line 373
    invoke-static {v1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 376
    :cond_7
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eq v2, v3, :cond_8

    .line 377
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_8
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/LinkView;->add(J)V

    goto :goto_2

    .line 374
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Each element of \'value\' must be a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method public final realmSet$id(J)V
    .locals 0

    .line 135
    iget-object p1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 141
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string p2, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, p2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final realmSet$limit(I)V
    .locals 8

    .line 213
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setLong$398a59fb(JJJ)V

    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 223
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public final realmSet$miles(Ljava/lang/String;)V
    .locals 11

    .line 183
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 189
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 192
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v6, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 198
    iget-object p1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v0, v0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$number(Ljava/lang/String;)V
    .locals 11

    .line 287
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 293
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 296
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v6, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 300
    :cond_2
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 302
    iget-object p1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v0, v0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 305
    :cond_3
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$operation(Lio/realm/RealmList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmOperation;",
            ">;)V"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "operation"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 405
    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5

    .line 406
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 408
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    .line 409
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/RealmOperation;

    if-eqz v2, :cond_3

    .line 4283
    instance-of v3, v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 413
    :cond_2
    invoke-virtual {v0, v2}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    .line 411
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    :cond_4
    move-object p1, v1

    .line 419
    :cond_5
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 420
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lio/realm/internal/LinkView;->clear()V

    if-nez p1, :cond_6

    return-void

    .line 425
    :cond_6
    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    .line 5283
    instance-of v2, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_9

    .line 426
    invoke-static {v1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 429
    :cond_7
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eq v2, v3, :cond_8

    .line 430
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_8
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/LinkView;->add(J)V

    goto :goto_2

    .line 427
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Each element of \'value\' must be a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method public final realmSet$operator(Ljava/lang/String;)V
    .locals 11

    .line 257
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 263
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 266
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v6, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 272
    iget-object p1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v0, v0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 275
    :cond_3
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$unlimitedCashouts(Z)V
    .locals 7

    .line 317
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setBoolean$3983140b(JJZ)V

    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 327
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public final realmSet$usedOperation(I)V
    .locals 8

    .line 235
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setLong$398a59fb(JJJ)V

    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 245
    iget-object v0, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v1, v1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1309
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 1312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WidgetData = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{id:"

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6129
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6130
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v1

    .line 1314
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{balance:"

    .line 1317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6147
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6148
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7147
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 7148
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 1318
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{miles:"

    .line 1321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7177
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 7178
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8177
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 8178
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    .line 1322
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{limit:"

    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8207
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 8208
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{usedOperation:"

    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8229
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 8230
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{operator:"

    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8251
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 8252
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9251
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 9252
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    .line 1334
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{number:"

    .line 1337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9281
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 9282
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10281
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 10282
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    .line 1338
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{unlimitedCashouts:"

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10311
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 10312
    iget-object v1, p0, Lio/realm/WidgetDataRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/WidgetDataRealmProxy;->columnInfo:Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    iget-wide v2, v2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v1

    .line 1342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{friends:"

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RealmList<RealmWidgetFriend>["

    .line 1346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/WidgetDataRealmProxy;->realmGet$friends()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{operation:"

    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RealmList<RealmOperation>["

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/WidgetDataRealmProxy;->realmGet$operation()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
