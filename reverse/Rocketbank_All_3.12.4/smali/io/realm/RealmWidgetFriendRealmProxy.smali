.class public final Lio/realm/RealmWidgetFriendRealmProxy;
.super Lru/rocketbank/core/realm/RealmWidgetFriend;
.source "RealmWidgetFriendRealmProxy.java"

# interfaces
.implements Lio/realm/RealmWidgetFriendRealmProxyInterface;
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;
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
.field private columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "firstName"

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lastName"

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "userpicUrl"

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmWidgetFriendRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lru/rocketbank/core/realm/RealmWidgetFriend;-><init>()V

    .line 83
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copyOrUpdate$31980307(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmWidgetFriend;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;"
        }
    .end annotation

    .line 382
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

    .line 383
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 385
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

    .line 388
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    .line 389
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 391
    check-cast v0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    return-object v0

    .line 1398
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3

    .line 1400
    check-cast v0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    return-object v0

    .line 1403
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/realm/Realm;->createObjectInternal$6d9349d5(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    .line 1404
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    move-object p2, p0

    check-cast p2, Lio/realm/RealmWidgetFriendRealmProxyInterface;

    check-cast p1, Lio/realm/RealmWidgetFriendRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$id()I

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$id(I)V

    .line 1406
    invoke-interface {p1}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    .line 1407
    invoke-interface {p1}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    .line 1408
    invoke-interface {p1}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$userpicUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$userpicUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createDetachedCopy(Lru/rocketbank/core/realm/RealmWidgetFriend;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmWidgetFriend;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-eqz p2, :cond_2

    .line 545
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_1

    .line 546
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lru/rocketbank/core/realm/RealmWidgetFriend;

    return-object p0

    .line 548
    :cond_1
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lru/rocketbank/core/realm/RealmWidgetFriend;

    .line 549
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    goto :goto_0

    .line 552
    :cond_2
    new-instance p2, Lru/rocketbank/core/realm/RealmWidgetFriend;

    invoke-direct {p2}, Lru/rocketbank/core/realm/RealmWidgetFriend;-><init>()V

    .line 553
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/RealmWidgetFriendRealmProxyInterface;

    check-cast p0, Lio/realm/RealmWidgetFriendRealmProxyInterface;

    invoke-interface {p0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$id()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$id(I)V

    .line 556
    invoke-interface {p0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$firstName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$firstName(Ljava/lang/String;)V

    .line 557
    invoke-interface {p0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$lastName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$lastName(Ljava/lang/String;)V

    .line 558
    invoke-interface {p0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmGet$userpicUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/RealmWidgetFriendRealmProxyInterface;->realmSet$userpicUrl(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 7

    const-string v0, "RealmWidgetFriend"

    .line 213
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RealmWidgetFriend"

    .line 214
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    const-string v2, "id"

    .line 215
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "firstName"

    .line 216
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "lastName"

    .line 217
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "userpicUrl"

    .line 218
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    return-object p0

    :cond_0
    const-string v0, "RealmWidgetFriend"

    .line 221
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    return-object p0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_RealmWidgetFriend"

    return-object v0
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;
    .locals 9

    const-string v0, "class_RealmWidgetFriend"

    .line 225
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "The \'RealmWidgetFriend\' class is missing from the schema for this Realm."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "class_RealmWidgetFriend"

    .line 228
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 232
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is less than expected - expected 4 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "Field count is more than expected - expected 4 but was %1$d"

    const/4 v3, 0x1

    .line 235
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_2
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is more than expected - expected 4 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 242
    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_1

    .line 245
    :cond_4
    new-instance v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    invoke-direct {v1, v0}, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;-><init>(Lio/realm/internal/Table;)V

    .line 247
    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Primary Key defined for field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was removed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v2, "id"

    .line 251
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 252
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v2, "id"

    .line 254
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_7

    .line 255
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_7
    iget-wide v2, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->idIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 258
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'id\' does support null values in the existing Realm file. Use corresponding boxed type for field \'id\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string v2, "firstName"

    .line 260
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 261
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'firstName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string v2, "firstName"

    .line 263
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_a

    .line 264
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'firstName\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_a
    iget-wide v2, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_b

    .line 267
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'firstName\' is required. Either set @Required to field \'firstName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v2, "lastName"

    .line 269
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 270
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'lastName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string v2, "lastName"

    .line 272
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_d

    .line 273
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'lastName\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_d
    iget-wide v2, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_e

    .line 276
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'lastName\' is required. Either set @Required to field \'lastName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v2, "userpicUrl"

    .line 278
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 279
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'userpicUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string v2, "userpicUrl"

    .line 281
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq p1, v2, :cond_10

    .line 282
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'userpicUrl\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_10
    iget-wide v2, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result p1

    if-nez p1, :cond_11

    .line 285
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'userpicUrl\' is required. Either set @Required to field \'userpicUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_11
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

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 610
    :cond_1
    check-cast p1, Lio/realm/RealmWidgetFriendRealmProxy;

    .line 612
    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 613
    iget-object v3, p1, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 614
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 616
    :cond_3
    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 617
    iget-object v3, p1, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 620
    :cond_5
    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 595
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 597
    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 600
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

    .line 601
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

    .line 88
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 92
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iput-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    .line 93
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 94
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 95
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 96
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 97
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public final realmGet$firstName()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 126
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$id()I
    .locals 3

    .line 103
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 104
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final realmGet$lastName()Ljava/lang/String;
    .locals 3

    .line 155
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 156
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

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

    .line 590
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public final realmGet$userpicUrl()Ljava/lang/String;
    .locals 3

    .line 185
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 186
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$firstName(Ljava/lang/String;)V
    .locals 11

    .line 131
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 137
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 140
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 146
    iget-object p1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 149
    :cond_3
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$id(I)V
    .locals 8

    .line 109
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setLong$398a59fb(JJJ)V

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 119
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public final realmSet$lastName(Ljava/lang/String;)V
    .locals 11

    .line 161
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 167
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 170
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 176
    iget-object p1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 179
    :cond_3
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$userpicUrl(Ljava/lang/String;)V
    .locals 11

    .line 191
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 197
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 200
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 206
    iget-object p1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 209
    :cond_3
    iget-object v0, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 565
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealmWidgetFriend = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{id:"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2104
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->idIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{firstName:"

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2126
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3125
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3126
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->firstNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 574
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{lastName:"

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3156
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4155
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 4156
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->lastNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    .line 578
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{userpicUrl:"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 4186
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5185
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 5186
    iget-object v1, p0, Lio/realm/RealmWidgetFriendRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmWidgetFriendRealmProxy;->columnInfo:Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmWidgetFriendRealmProxy$RealmWidgetFriendColumnInfo;->userpicUrlIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    .line 582
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
