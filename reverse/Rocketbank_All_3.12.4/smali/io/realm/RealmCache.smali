.class final Lio/realm/RealmCache;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmCache$RealmCacheType;,
        Lio/realm/RealmCache$RefAndCount;,
        Lio/realm/RealmCache$Callback;
    }
.end annotation


# static fields
.field private static final cachesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/RealmCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final leakedCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/realm/RealmCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lio/realm/RealmConfiguration;

.field private final isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final realmPath:Ljava/lang/String;

.field private final refAndCountMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/realm/RealmCache$RealmCacheType;",
            "Lio/realm/RealmCache$RefAndCount;",
            ">;"
        }
    .end annotation
.end field

.field private final typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->leakedCaches:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 200
    new-array v0, v0, [Lio/realm/internal/ColumnIndices;

    iput-object v0, p0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/RealmCache;->isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    iput-object p1, p0, Lio/realm/RealmCache;->realmPath:Ljava/lang/String;

    .line 220
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lio/realm/RealmCache$RealmCacheType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    .line 221
    invoke-static {}, Lio/realm/RealmCache$RealmCacheType;->values()[Lio/realm/RealmCache$RealmCacheType;

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 222
    iget-object v4, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    new-instance v5, Lio/realm/RealmCache$RefAndCount;

    invoke-direct {v5, v1}, Lio/realm/RealmCache$RefAndCount;-><init>(B)V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 284
    invoke-direct {v0, p0, p1}, Lio/realm/RealmCache;->doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-static {p2}, Lio/realm/RealmCache$RealmCacheType;->valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache$RefAndCount;

    .line 292
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 2183
    invoke-static {}, Lio/realm/internal/Util;->isEmptyString$552c4dfd()Z

    .line 1538
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getFacade$227a051f()Lio/realm/internal/ObjectServerFacade;

    .line 1539
    invoke-static {}, Lio/realm/internal/Util;->isEmptyString$552c4dfd()Z

    .line 294
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->realmExists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 298
    :try_start_1
    invoke-static {p1}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 305
    :try_start_2
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 311
    :try_start_3
    invoke-virtual {v3}, Lio/realm/internal/SharedRealm;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :try_start_4
    invoke-static {p1}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 314
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 318
    :cond_0
    :goto_0
    :try_start_5
    invoke-static {v3}, Lio/realm/internal/Table;->primaryKeyTableNeedsMigration(Lio/realm/internal/SharedRealm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2251
    invoke-virtual {v3}, Lio/realm/internal/SharedRealm;->beginTransaction$1385ff()V

    .line 320
    invoke-static {v3}, Lio/realm/internal/Table;->migratePrimaryKeyTableIfNeeded(Lio/realm/internal/SharedRealm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {v3}, Lio/realm/internal/SharedRealm;->commitTransaction()V

    goto :goto_1

    .line 323
    :cond_1
    invoke-virtual {v3}, Lio/realm/internal/SharedRealm;->cancelTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 329
    :try_start_6
    invoke-virtual {v3}, Lio/realm/internal/SharedRealm;->close()V

    .line 334
    :cond_3
    iput-object p1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 329
    invoke-virtual {v3}, Lio/realm/internal/SharedRealm;->close()V

    :cond_4
    throw p1

    .line 2439
    :cond_5
    iget-object v1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1, p1}, Lio/realm/RealmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2445
    iget-object p2, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object p2

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_6

    .line 2446
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong key used to decrypt Realm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2461
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nNew configuration: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 340
    :cond_7
    :goto_3
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    .line 344
    const-class p1, Lio/realm/Realm;

    if-ne p2, p1, :cond_8

    .line 346
    invoke-static {p0}, Lio/realm/Realm;->createInstance(Lio/realm/RealmCache;)Lio/realm/Realm;

    move-result-object p1

    goto :goto_4

    .line 347
    :cond_8
    const-class p1, Lio/realm/DynamicRealm;

    if-ne p2, p1, :cond_a

    .line 348
    invoke-static {p0}, Lio/realm/DynamicRealm;->createInstance(Lio/realm/RealmCache;)Lio/realm/DynamicRealm;

    move-result-object p1

    .line 354
    :goto_4
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 355
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 357
    const-class v1, Lio/realm/Realm;

    if-ne p2, v1, :cond_9

    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$800(Lio/realm/RealmCache$RefAndCount;)I

    move-result p2

    if-nez p2, :cond_9

    .line 359
    iget-object p2, p0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    iget-object p1, p1, Lio/realm/BaseRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {p1}, Lio/realm/RealmSchema;->getImmutableColumnIndicies()Lio/realm/internal/ColumnIndices;

    move-result-object p1

    invoke-static {p2, p1}, Lio/realm/RealmCache;->storeColumnIndices([Lio/realm/internal/ColumnIndices;Lio/realm/internal/ColumnIndices;)I

    .line 362
    :cond_9
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$808(Lio/realm/RealmCache$RefAndCount;)I

    goto :goto_5

    .line 350
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_b
    :goto_5
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 366
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 369
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/BaseRealm;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    .line 289
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doInvokeWithGlobalRefCount(Lio/realm/RealmCache$Callback;)V
    .locals 1

    monitor-enter p0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v0

    invoke-interface {p1, v0}, Lio/realm/RealmCache$Callback;->onResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 489
    monitor-exit p0

    throw p1
.end method

.method static findColumnIndices([Lio/realm/internal/ColumnIndices;J)Lio/realm/internal/ColumnIndices;
    .locals 5

    .line 620
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 621
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v1}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;
    .locals 5

    .line 228
    sget-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmCache;

    if-nez v3, :cond_1

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v4, v3, Lio/realm/RealmCache;->realmPath:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 242
    new-instance v2, Lio/realm/RealmCache;

    invoke-direct {v2, p0}, Lio/realm/RealmCache;-><init>(Ljava/lang/String;)V

    .line 243
    sget-object p0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getTotalGlobalRefCount()I
    .locals 3

    .line 672
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmCache$RefAndCount;

    .line 673
    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$800(Lio/realm/RealmCache$RefAndCount;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method static invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V
    .locals 2

    .line 479
    sget-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    monitor-enter v0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object p0

    if-nez p0, :cond_0

    .line 482
    invoke-interface {p1, v1}, Lio/realm/RealmCache$Callback;->onResult(I)V

    .line 483
    monitor-exit v0

    return-void

    .line 485
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/RealmCache;->doInvokeWithGlobalRefCount(Lio/realm/RealmCache$Callback;)V

    .line 486
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static storeColumnIndices([Lio/realm/internal/ColumnIndices;Lio/realm/internal/ColumnIndices;)I
    .locals 8

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    .line 643
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 644
    aget-object v4, p0, v3

    if-nez v4, :cond_0

    .line 645
    aput-object p1, p0, v3

    return v3

    .line 649
    :cond_0
    aget-object v4, p0, v3

    .line 650
    invoke-virtual {v4}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_1

    .line 651
    invoke-virtual {v4}, Lio/realm/internal/ColumnIndices;->getSchemaVersion()J

    move-result-wide v0

    move-wide v1, v0

    move v0, v3

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 655
    :cond_2
    aput-object p1, p0, v0

    return v0
.end method


# virtual methods
.method public final getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 660
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public final getTypedColumnIndicesArray()[Lio/realm/internal/ColumnIndices;
    .locals 1

    .line 664
    iget-object v0, p0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    return-object v0
.end method

.method final leak()V
    .locals 2

    .line 684
    iget-object v0, p0, Lio/realm/RealmCache;->isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    sget-object v0, Lio/realm/RealmCache;->leakedCaches:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final declared-synchronized release(Lio/realm/BaseRealm;)V
    .locals 6

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lio/realm/RealmCache$RealmCacheType;->valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$RefAndCount;

    .line 381
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 386
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_1

    const-string p1, "%s has been closed already. refCount is %s"

    const/4 v1, 0x2

    .line 387
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object v2, v1, v5

    invoke-static {p1, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 392
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    .line 397
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 398
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 401
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$810(Lio/realm/RealmCache$RefAndCount;)I

    .line 402
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$800(Lio/realm/RealmCache$RefAndCount;)I

    move-result v2

    if-gez v2, :cond_2

    .line 404
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Global reference counter of Realm"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " got corrupted."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_2
    instance-of v0, p1, Lio/realm/Realm;

    if-eqz v0, :cond_3

    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$800(Lio/realm/RealmCache$RefAndCount;)I

    move-result v0

    if-nez v0, :cond_3

    .line 411
    iget-object v0, p0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    :cond_3
    invoke-virtual {p1}, Lio/realm/BaseRealm;->doClose()V

    .line 418
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 422
    iput-object v3, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    .line 423
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getFacade$227a051f()Lio/realm/internal/ObjectServerFacade;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 428
    :cond_4
    :try_start_2
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 378
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized updateSchemaCache(Lio/realm/Realm;)V
    .locals 2

    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    sget-object v1, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache$RefAndCount;

    .line 500
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 503
    monitor-exit p0

    return-void

    .line 505
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/realm/RealmCache;->typedColumnIndicesArray:[Lio/realm/internal/ColumnIndices;

    .line 506
    invoke-virtual {p1, v0}, Lio/realm/Realm;->updateSchemaCache([Lio/realm/internal/ColumnIndices;)Lio/realm/internal/ColumnIndices;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 508
    invoke-static {v0, p1}, Lio/realm/RealmCache;->storeColumnIndices([Lio/realm/internal/ColumnIndices;Lio/realm/internal/ColumnIndices;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 498
    monitor-exit p0

    throw p1
.end method
