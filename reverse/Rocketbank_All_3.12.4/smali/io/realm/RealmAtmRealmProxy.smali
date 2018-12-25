.class public final Lio/realm/RealmAtmRealmProxy;
.super Lru/rocketbank/core/realm/RealmAtm;
.source "RealmAtmRealmProxy.java"

# interfaces
.implements Lio/realm/RealmAtmRealmProxyInterface;
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;
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
.field private columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isEur"

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isHidden"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isRur"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isUsd"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lat"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lon"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "address"

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hours"

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "name"

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "type"

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmAtmRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lru/rocketbank/core/realm/RealmAtm;-><init>()V

    .line 111
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmAtm;ZLjava/util/Map;)Lru/rocketbank/core/realm/RealmAtm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lru/rocketbank/core/realm/RealmAtm;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lru/rocketbank/core/realm/RealmAtm;"
        }
    .end annotation

    .line 816
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

    .line 817
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 819
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

    .line 822
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 823
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_2

    .line 825
    check-cast v1, Lru/rocketbank/core/realm/RealmAtm;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 830
    const-class v2, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 831
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v3

    .line 832
    move-object v5, p1

    check-cast v5, Lio/realm/RealmAtmRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$id()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->findFirstLong(JJ)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 835
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    iget-object v1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    const-class v2, Lru/rocketbank/core/realm/RealmAtm;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 836
    new-instance v1, Lio/realm/RealmAtmRealmProxy;

    invoke-direct {v1}, Lio/realm/RealmAtmRealmProxy;-><init>()V

    .line 837
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
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

    .line 2173
    move-object p0, v1

    check-cast p0, Lio/realm/RealmAtmRealmProxyInterface;

    check-cast p1, Lio/realm/RealmAtmRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isEur()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isEur(Ljava/lang/Boolean;)V

    .line 2174
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isHidden()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isHidden(Ljava/lang/Boolean;)V

    .line 2175
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isRur()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isRur(Ljava/lang/Boolean;)V

    .line 2176
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isUsd()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isUsd(Ljava/lang/Boolean;)V

    .line 2177
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$lat()F

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$lat(F)V

    .line 2178
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$lon()F

    move-result p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$lon(F)V

    .line 2179
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    .line 2180
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$hours()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$hours(Ljava/lang/String;)V

    .line 2181
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 2182
    invoke-interface {p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    return-object v1

    .line 2855
    :cond_5
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz p2, :cond_6

    .line 2857
    check-cast p2, Lru/rocketbank/core/realm/RealmAtm;

    return-object p2

    .line 2860
    :cond_6
    const-class p2, Lru/rocketbank/core/realm/RealmAtm;

    move-object v0, p1

    check-cast v0, Lio/realm/RealmAtmRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lio/realm/Realm;->createObjectInternal$1e283631(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/realm/RealmAtm;

    .line 2861
    move-object p2, p0

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    move-object p1, p0

    check-cast p1, Lio/realm/RealmAtmRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isEur()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isEur(Ljava/lang/Boolean;)V

    .line 2863
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isHidden()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isHidden(Ljava/lang/Boolean;)V

    .line 2864
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isRur()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isRur(Ljava/lang/Boolean;)V

    .line 2865
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isUsd()Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isUsd(Ljava/lang/Boolean;)V

    .line 2866
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$lat()F

    move-result p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$lat(F)V

    .line 2867
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$lon()F

    move-result p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$lon(F)V

    .line 2868
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    .line 2869
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$hours()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$hours(Ljava/lang/String;)V

    .line 2870
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 2871
    invoke-interface {v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createDetachedCopy$4fc3bdd6(Lru/rocketbank/core/realm/RealmAtm;ILjava/util/Map;)Lru/rocketbank/core/realm/RealmAtm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/realm/RealmAtm;",
            "I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lru/rocketbank/core/realm/RealmAtm;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1144
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/RealmObjectProxy$CacheData;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1148
    iget p2, p1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-gtz p2, :cond_1

    .line 1149
    iget-object p0, p1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lru/rocketbank/core/realm/RealmAtm;

    return-object p0

    .line 1151
    :cond_1
    iget-object p2, p1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p2, Lru/rocketbank/core/realm/RealmAtm;

    .line 1152
    iput v0, p1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p1, p2

    goto :goto_0

    .line 1155
    :cond_2
    new-instance p1, Lru/rocketbank/core/realm/RealmAtm;

    invoke-direct {p1}, Lru/rocketbank/core/realm/RealmAtm;-><init>()V

    .line 1156
    new-instance v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v1, v0, p1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :goto_0
    move-object p2, p1

    check-cast p2, Lio/realm/RealmAtmRealmProxyInterface;

    check-cast p0, Lio/realm/RealmAtmRealmProxyInterface;

    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$id()I

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$id(I)V

    .line 1159
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isEur()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isEur(Ljava/lang/Boolean;)V

    .line 1160
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isHidden(Ljava/lang/Boolean;)V

    .line 1161
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isRur()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isRur(Ljava/lang/Boolean;)V

    .line 1162
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$isUsd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$isUsd(Ljava/lang/Boolean;)V

    .line 1163
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$lat()F

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$lat(F)V

    .line 1164
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$lon()F

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$lon(F)V

    .line 1165
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$address(Ljava/lang/String;)V

    .line 1166
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$hours()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$hours(Ljava/lang/String;)V

    .line 1167
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 1168
    invoke-interface {p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/RealmAtmRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 7

    const-string v0, "RealmAtm"

    .line 443
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RealmAtm"

    .line 444
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    const-string v2, "id"

    .line 445
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "isEur"

    .line 446
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "isHidden"

    .line 447
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "isRur"

    .line 448
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "isUsd"

    .line 449
    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "lat"

    .line 450
    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "lon"

    .line 451
    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "address"

    .line 452
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "hours"

    .line 453
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "name"

    .line 454
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "type"

    .line 455
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    return-object p0

    :cond_0
    const-string v0, "RealmAtm"

    .line 458
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    return-object p0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_RealmAtm"

    return-object v0
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;
    .locals 9

    const-string v0, "class_RealmAtm"

    .line 462
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "The \'RealmAtm\' class is missing from the schema for this Realm."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "class_RealmAtm"

    .line 465
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v1

    const-wide/16 v3, 0xb

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 469
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is less than expected - expected 11 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "Field count is more than expected - expected 11 but was %1$d"

    const/4 v3, 0x1

    .line 472
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 474
    :cond_2
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is more than expected - expected 11 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 479
    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_1

    .line 482
    :cond_4
    new-instance v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    invoke-direct {v1, v0}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;-><init>(Lio/realm/internal/Table;)V

    .line 484
    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v2

    if-nez v2, :cond_5

    .line 485
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_5
    invoke-virtual {v0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    iget-wide v4, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    .line 488
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

    .line 492
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 493
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string v2, "id"

    .line 495
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_8

    .line 496
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_8
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    .line 499
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v2, "id"

    .line 501
    invoke-virtual {v0, v2}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 502
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string v2, "isEur"

    .line 504
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 505
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'isEur\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v2, "isEur"

    .line 507
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_c

    .line 508
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'Boolean\' for field \'isEur\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_c
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 511
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'isEur\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'isEur\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string v2, "isHidden"

    .line 513
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 514
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'isHidden\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v2, "isHidden"

    .line 516
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_f

    .line 517
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'Boolean\' for field \'isHidden\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_f
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_10

    .line 520
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'isHidden\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'isHidden\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_10
    const-string v2, "isHidden"

    .line 522
    invoke-virtual {v0, v2}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_11

    .line 523
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Index not defined for field \'isHidden\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v2, "isRur"

    .line 525
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 526
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'isRur\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_12
    const-string v2, "isRur"

    .line 528
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_13

    .line 529
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'Boolean\' for field \'isRur\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 531
    :cond_13
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_14

    .line 532
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'isRur\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'isRur\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_14
    const-string v2, "isUsd"

    .line 534
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 535
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'isUsd\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_15
    const-string v2, "isUsd"

    .line 537
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_16

    .line 538
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'Boolean\' for field \'isUsd\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_16
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_17

    .line 541
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'isUsd\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'isUsd\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_17
    const-string v2, "lat"

    .line 543
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 544
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'lat\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_18
    const-string v2, "lat"

    .line 546
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_19

    .line 547
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'float\' for field \'lat\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 549
    :cond_19
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 550
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'lat\' does support null values in the existing Realm file. Use corresponding boxed type for field \'lat\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1a
    const-string v2, "lon"

    .line 552
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 553
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'lon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1b
    const-string v2, "lon"

    .line 555
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_1c

    .line 556
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'float\' for field \'lon\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 558
    :cond_1c
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 559
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'lon\' does support null values in the existing Realm file. Use corresponding boxed type for field \'lon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1d
    const-string v2, "address"

    .line 561
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 562
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'address\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1e
    const-string v2, "address"

    .line 564
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_1f

    .line 565
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'address\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 567
    :cond_1f
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_20

    .line 568
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'address\' is required. Either set @Required to field \'address\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_20
    const-string v2, "hours"

    .line 570
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 571
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'hours\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_21
    const-string v2, "hours"

    .line 573
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_22

    .line 574
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'hours\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 576
    :cond_22
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_23

    .line 577
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'hours\' is required. Either set @Required to field \'hours\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_23
    const-string v2, "name"

    .line 579
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 580
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'name\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_24
    const-string v2, "name"

    .line 582
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_25

    .line 583
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'name\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 585
    :cond_25
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_26

    .line 586
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'name\' is required. Either set @Required to field \'name\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_26
    const-string v2, "type"

    .line 588
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 589
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'type\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_27
    const-string v2, "type"

    .line 591
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq p1, v2, :cond_28

    .line 592
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'type\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_28
    iget-wide v2, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result p1

    if-nez p1, :cond_29

    .line 595
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'type\' is required. Either set @Required to field \'type\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_29
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

    .line 1261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1262
    :cond_1
    check-cast p1, Lio/realm/RealmAtmRealmProxy;

    .line 1264
    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1265
    iget-object v3, p1, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 1268
    :cond_3
    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1269
    iget-object v3, p1, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 1272
    :cond_5
    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1247
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1248
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1249
    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1252
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

    .line 1253
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

    .line 116
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 120
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iput-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    .line 121
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 122
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 123
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 124
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 125
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public final realmGet$address()Ljava/lang/String;
    .locals 3

    .line 325
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 326
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$hours()Ljava/lang/String;
    .locals 3

    .line 355
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 356
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$id()I
    .locals 3

    .line 131
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 132
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$isEur()Ljava/lang/Boolean;
    .locals 3

    .line 149
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 150
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$isHidden()Ljava/lang/Boolean;
    .locals 3

    .line 182
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 183
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$isRur()Ljava/lang/Boolean;
    .locals 3

    .line 215
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 216
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$isUsd()Ljava/lang/Boolean;
    .locals 3

    .line 248
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 249
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$lat()F
    .locals 3

    .line 281
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 282
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public final realmGet$lon()F
    .locals 3

    .line 303
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 304
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public final realmGet$name()Ljava/lang/String;
    .locals 3

    .line 385
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 386
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

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

    .line 1242
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public final realmGet$type()Ljava/lang/String;
    .locals 3

    .line 415
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 416
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$address(Ljava/lang/String;)V
    .locals 11

    .line 331
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 337
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 340
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 346
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 349
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$hours(Ljava/lang/String;)V
    .locals 11

    .line 361
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 367
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 376
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 379
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$id(I)V
    .locals 1

    .line 137
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 143
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final realmSet$isEur(Ljava/lang/Boolean;)V
    .locals 11

    .line 158
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 164
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 167
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setBoolean$3983140b(JJZ)V

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 173
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 176
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public final realmSet$isHidden(Ljava/lang/Boolean;)V
    .locals 11

    .line 191
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 197
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 200
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setBoolean$3983140b(JJZ)V

    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 206
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 209
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public final realmSet$isRur(Ljava/lang/Boolean;)V
    .locals 11

    .line 224
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 230
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 233
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setBoolean$3983140b(JJZ)V

    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 239
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public final realmSet$isUsd(Ljava/lang/Boolean;)V
    .locals 11

    .line 257
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 263
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 266
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setBoolean$3983140b(JJZ)V

    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 272
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 275
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public final realmSet$lat(F)V
    .locals 7

    .line 287
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setFloat$398c2b77(JJF)V

    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 297
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public final realmSet$lon(F)V
    .locals 7

    .line 309
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setFloat$398c2b77(JJF)V

    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 319
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setFloat(JF)V

    return-void
.end method

.method public final realmSet$name(Ljava/lang/String;)V
    .locals 11

    .line 391
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 397
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 400
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 404
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 406
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 409
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$type(Ljava/lang/String;)V
    .locals 11

    .line 421
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 427
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 430
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 434
    :cond_2
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 436
    iget-object p1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 439
    :cond_3
    iget-object v0, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1189
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 1192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealmAtm = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{id:"

    .line 1193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3132
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{isEur:"

    .line 1197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isEur()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isEur()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{isHidden:"

    .line 1201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isHidden()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isHidden()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{isRur:"

    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isRur()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isRur()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{isUsd:"

    .line 1209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isUsd()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/RealmAtmRealmProxy;->realmGet$isUsd()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{lat:"

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3282
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v1

    .line 1214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{lon:"

    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3304
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getFloat(J)F

    move-result v1

    .line 1218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{address:"

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3326
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4325
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 4326
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "null"

    .line 1222
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{hours:"

    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 4356
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5355
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 5356
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v1, "null"

    .line 1226
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{name:"

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5385
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 5386
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6385
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6386
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    const-string v1, "null"

    .line 1230
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{type:"

    .line 1233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6415
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6416
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 7415
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 7416
    iget-object v1, p0, Lio/realm/RealmAtmRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmAtmRealmProxy;->columnInfo:Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    const-string v1, "null"

    .line 1234
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
