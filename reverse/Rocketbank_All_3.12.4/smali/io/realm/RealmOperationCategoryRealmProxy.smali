.class public final Lio/realm/RealmOperationCategoryRealmProxy;
.super Lru/rocketbank/core/realm/RealmOperationCategory;
.source "RealmOperationCategoryRealmProxy.java"

# interfaces
.implements Lio/realm/RealmOperationCategoryRealmProxyInterface;
.implements Lio/realm/internal/RealmObjectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;
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
.field private columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lru/rocketbank/core/realm/RealmOperationCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fullName"

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "icon"

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "subIcon"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "displayName"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "name"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "spent"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/RealmOperationCategoryRealmProxy;->FIELD_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lru/rocketbank/core/realm/RealmOperationCategory;-><init>()V

    .line 95
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copyOrUpdate$3a139521(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmOperationCategory;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmOperationCategory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lru/rocketbank/core/realm/RealmOperationCategory;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lru/rocketbank/core/realm/RealmOperationCategory;"
        }
    .end annotation

    .line 589
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

    .line 590
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 592
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

    .line 595
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    .line 596
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 598
    check-cast v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    return-object v0

    .line 2605
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3

    .line 2607
    check-cast v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    return-object v0

    .line 2610
    :cond_3
    const-class v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/realm/Realm;->createObjectInternal$6d9349d5(Ljava/lang/Class;Ljava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/realm/RealmOperationCategory;

    .line 2611
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    move-object v1, v0

    check-cast v1, Lio/realm/RealmOperationCategoryRealmProxyInterface;

    check-cast p1, Lio/realm/RealmOperationCategoryRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$id(J)V

    .line 2613
    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$fullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$fullName(Ljava/lang/String;)V

    .line 2614
    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$icon(Ljava/lang/String;)V

    .line 2615
    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$subIcon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$subIcon(Ljava/lang/String;)V

    .line 2616
    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$displayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$displayName(Ljava/lang/String;)V

    .line 2617
    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 2619
    invoke-interface {p1}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$spent()Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2621
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/RealmMoneyData;

    if-eqz v2, :cond_4

    .line 2623
    invoke-interface {v1, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$spent(Lru/rocketbank/core/realm/RealmMoneyData;)V

    goto :goto_0

    .line 2625
    :cond_4
    invoke-static {p0, p1, p2}, Lio/realm/RealmMoneyDataRealmProxy;->copyOrUpdate$47a39055(Lio/realm/Realm;Lru/rocketbank/core/realm/RealmMoneyData;Ljava/util/Map;)Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$spent(Lru/rocketbank/core/realm/RealmMoneyData;)V

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    .line 2628
    invoke-interface {v1, p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$spent(Lru/rocketbank/core/realm/RealmMoneyData;)V

    :goto_0
    return-object v0
.end method

.method public static createDetachedCopy(Lru/rocketbank/core/realm/RealmOperationCategory;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmOperationCategory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/realm/RealmOperationCategory;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lru/rocketbank/core/realm/RealmOperationCategory;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 842
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-eqz v0, :cond_2

    .line 846
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_1

    .line 847
    iget-object p0, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lru/rocketbank/core/realm/RealmOperationCategory;

    return-object p0

    .line 849
    :cond_1
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    .line 850
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    goto :goto_0

    .line 853
    :cond_2
    new-instance v1, Lru/rocketbank/core/realm/RealmOperationCategory;

    invoke-direct {v1}, Lru/rocketbank/core/realm/RealmOperationCategory;-><init>()V

    .line 854
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :goto_0
    move-object v0, v1

    check-cast v0, Lio/realm/RealmOperationCategoryRealmProxyInterface;

    check-cast p0, Lio/realm/RealmOperationCategoryRealmProxyInterface;

    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$id()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$id(J)V

    .line 857
    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$fullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$fullName(Ljava/lang/String;)V

    .line 858
    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$icon(Ljava/lang/String;)V

    .line 859
    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$subIcon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$subIcon(Ljava/lang/String;)V

    .line 860
    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$displayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$displayName(Ljava/lang/String;)V

    .line 861
    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 864
    invoke-interface {p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmGet$spent()Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lio/realm/RealmMoneyDataRealmProxy;->createDetachedCopy(Lru/rocketbank/core/realm/RealmMoneyData;IILjava/util/Map;)Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/realm/RealmOperationCategoryRealmProxyInterface;->realmSet$spent(Lru/rocketbank/core/realm/RealmMoneyData;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 7

    const-string v0, "RealmOperationCategory"

    .line 336
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RealmOperationCategory"

    .line 337
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string v2, "id"

    .line 338
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "fullName"

    .line 339
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "icon"

    .line 340
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "subIcon"

    .line 341
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "displayName"

    .line 342
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v2, "name"

    .line 343
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;

    const-string v1, "RealmMoneyData"

    .line 344
    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-static {p0}, Lio/realm/RealmMoneyDataRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    :cond_0
    const-string v1, "spent"

    .line 347
    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "RealmMoneyData"

    invoke-virtual {p0, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lio/realm/RealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;

    return-object v0

    :cond_1
    const-string v0, "RealmOperationCategory"

    .line 350
    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p0

    return-object p0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "class_RealmOperationCategory"

    return-object v0
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;
    .locals 9

    const-string v0, "class_RealmOperationCategory"

    .line 354
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "The \'RealmOperationCategory\' class is missing from the schema for this Realm."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "class_RealmOperationCategory"

    .line 357
    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 361
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is less than expected - expected 7 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "Field count is more than expected - expected 7 but was %1$d"

    const/4 v3, 0x1

    .line 364
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    :cond_2
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field count is more than expected - expected 7 but was "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 371
    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_1

    .line 374
    :cond_4
    new-instance v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    invoke-direct {v1, v0}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;-><init>(Lio/realm/internal/Table;)V

    .line 376
    invoke-virtual {v0}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
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

    .line 380
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 381
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v2, "id"

    .line 383
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_7

    .line 384
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'long\' for field \'id\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_7
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 387
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'id\' does support null values in the existing Realm file. Use corresponding boxed type for field \'id\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string v2, "fullName"

    .line 389
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 390
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'fullName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string v2, "fullName"

    .line 392
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_a

    .line 393
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'fullName\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_a
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_b

    .line 396
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'fullName\' is required. Either set @Required to field \'fullName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v2, "icon"

    .line 398
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 399
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'icon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string v2, "icon"

    .line 401
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_d

    .line 402
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'icon\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_d
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_e

    .line 405
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'icon\' is required. Either set @Required to field \'icon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v2, "subIcon"

    .line 407
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 408
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'subIcon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string v2, "subIcon"

    .line 410
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_10

    .line 411
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'subIcon\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_10
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_11

    .line 414
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'subIcon\' is required. Either set @Required to field \'subIcon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v2, "displayName"

    .line 416
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 417
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'displayName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_12
    const-string v2, "displayName"

    .line 419
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_13

    .line 420
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'displayName\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_13
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_14

    .line 423
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'displayName\' is required. Either set @Required to field \'displayName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_14
    const-string v2, "name"

    .line 425
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 426
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'name\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_15
    const-string v2, "name"

    .line 428
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_16

    .line 429
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'String\' for field \'name\' in existing Realm file."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_16
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v2

    if-nez v2, :cond_17

    .line 432
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Field \'name\' is required. Either set @Required to field \'name\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_17
    const-string v2, "spent"

    .line 434
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 435
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing field \'spent\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_18
    const-string v2, "spent"

    .line 437
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq p1, v2, :cond_19

    .line 438
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid type \'RealmMoneyData\' for field \'spent\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_19
    const-string p1, "class_RealmMoneyData"

    .line 440
    invoke-virtual {p0, p1}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 441
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing class \'class_RealmMoneyData\' for field \'spent\'"

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1a
    const-string p1, "class_RealmMoneyData"

    .line 443
    invoke-virtual {p0, p1}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p1

    .line 444
    iget-wide v2, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->getLinkTarget(J)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/Table;->hasSameSchema(Lio/realm/internal/Table;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 445
    new-instance v2, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid RealmObject for field \'spent\': \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

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

    :cond_1b
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

    .line 927
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 928
    :cond_1
    check-cast p1, Lio/realm/RealmOperationCategoryRealmProxy;

    .line 930
    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 931
    iget-object v3, p1, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 932
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 934
    :cond_3
    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 935
    iget-object v3, p1, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 936
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 938
    :cond_5
    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 913
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 915
    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 918
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

    .line 919
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

    .line 100
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 104
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iput-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    .line 105
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 106
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 107
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 108
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 109
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public final realmGet$displayName()Ljava/lang/String;
    .locals 3

    .line 227
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 228
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$fullName()Ljava/lang/String;
    .locals 3

    .line 137
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 138
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$icon()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 168
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmGet$id()J
    .locals 3

    .line 115
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 116
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final realmGet$name()Ljava/lang/String;
    .locals 3

    .line 257
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 258
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

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

    .line 908
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public final realmGet$spent()Lru/rocketbank/core/realm/RealmMoneyData;
    .locals 5

    .line 286
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 287
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/realm/RealmMoneyData;

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v3, v3, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-interface {v2, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/BaseRealm;->get$1557dc49(Ljava/lang/Class;JLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/realm/RealmMoneyData;

    return-object v0
.end method

.method public final realmGet$subIcon()Ljava/lang/String;
    .locals 3

    .line 197
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 198
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final realmSet$displayName(Ljava/lang/String;)V
    .locals 11

    .line 233
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 239
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 242
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 246
    :cond_2
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 248
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$fullName(Ljava/lang/String;)V
    .locals 11

    .line 143
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 149
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 152
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 158
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$icon(Ljava/lang/String;)V
    .locals 11

    .line 173
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 179
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 182
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 188
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 191
    :cond_3
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$id(J)V
    .locals 8

    .line 121
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setLong$398a59fb(JJJ)V

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 131
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public final realmSet$name(Ljava/lang/String;)V
    .locals 11

    .line 263
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 269
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 272
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 278
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 281
    :cond_3
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final realmSet$spent(Lru/rocketbank/core/realm/RealmMoneyData;)V
    .locals 8

    .line 295
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "spent"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1283
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/realm/RealmMoneyData;

    .line 305
    :cond_2
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_3

    .line 308
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 311
    :cond_3
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 312
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' is not a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_4
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 315
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_5
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setLink$398a59fb(JJJ)V

    return-void

    .line 321
    :cond_6
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_7

    .line 323
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->nullifyLink(J)V

    return-void

    .line 2283
    :cond_7
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_a

    .line 326
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 329
    :cond_8
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 330
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_9
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    return-void

    .line 327
    :cond_a
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'value\' is not a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final realmSet$subIcon(Ljava/lang/String;)V
    .locals 11

    .line 203
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 209
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->setNull$48779ebf(JJ)V

    return-void

    .line 212
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v6, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v8

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->setString$5ffaa975(JJLjava/lang/String;)V

    return-void

    .line 216
    :cond_2
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 218
    iget-object p1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v0, v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 221
    :cond_3
    iget-object v0, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v1, v1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 871
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 874
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealmOperationCategory = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{id:"

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3116
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v1

    .line 876
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{fullName:"

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 3138
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4137
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 4138
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 880
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{icon:"

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 4168
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5167
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 5168
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    .line 884
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{subIcon:"

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5197
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 5198
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6197
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6198
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    .line 888
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{displayName:"

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6227
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 6228
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7227
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 7228
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    .line 892
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{name:"

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7257
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 7258
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 8257
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 8258
    iget-object v1, p0, Lio/realm/RealmOperationCategoryRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmOperationCategoryRealmProxy;->columnInfo:Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    iget-wide v2, v2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v1, "null"

    .line 896
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{spent:"

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {p0}, Lio/realm/RealmOperationCategoryRealmProxy;->realmGet$spent()Lru/rocketbank/core/realm/RealmMoneyData;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "RealmMoneyData"

    goto :goto_5

    :cond_6
    const-string v1, "null"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
