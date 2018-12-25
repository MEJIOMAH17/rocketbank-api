.class public final Lio/realm/internal/SharedRealm;
.super Ljava/lang/Object;
.source "SharedRealm.java"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/SharedRealm$SchemaVersionListener;,
        Lio/realm/internal/SharedRealm$SchemaMode;,
        Lio/realm/internal/SharedRealm$Durability;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J

.field private static volatile temporaryDirectory:Ljava/io/File;


# instance fields
.field public final capabilities:Lio/realm/internal/Capabilities;

.field public final collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final configuration:Lio/realm/RealmConfiguration;

.field final context:Lio/realm/internal/NativeContext;

.field public final iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/Collection$Iterator;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastSchemaVersion:J

.field private final nativePtr:J

.field private final pendingRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/PendingRow;",
            ">;>;"
        }
    .end annotation
.end field

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field private final schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lio/realm/internal/SharedRealm;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/SharedRealm;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(JLio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;)V
    .locals 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->collections:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    .line 189
    new-instance v0, Lcom/github/barteksc/pdfviewer/R;

    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/R;-><init>()V

    .line 190
    new-instance v1, Lio/realm/internal/android/AndroidRealmNotifier;

    invoke-direct {v1, p0, v0}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Capabilities;)V

    .line 192
    invoke-static {p1, p2, v1}, Lio/realm/internal/SharedRealm;->nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    .line 193
    iput-object p3, p0, Lio/realm/internal/SharedRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 195
    iput-object v0, p0, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    .line 196
    iput-object v1, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 197
    iput-object p4, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    .line 198
    new-instance p1, Lio/realm/internal/NativeContext;

    invoke-direct {p1}, Lio/realm/internal/NativeContext;-><init>()V

    iput-object p1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 199
    iget-object p1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    .line 1283
    :cond_0
    iget-wide p1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {p1, p2}, Lio/realm/internal/SharedRealm;->nativeGetVersion(J)J

    move-result-wide p1

    .line 200
    :goto_0
    iput-wide p1, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    .line 201
    iget-wide p1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lio/realm/internal/SharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-static {p0, v0, v1}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;Z)Lio/realm/internal/SharedRealm;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;Z)Lio/realm/internal/SharedRealm;
    .locals 19

    .line 214
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getUserAndServerUrl$4cdbe33d()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    aget-object v3, v1, v2

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const/4 v3, 0x1

    .line 216
    aget-object v4, v1, v3

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    const/4 v4, 0x2

    .line 217
    aget-object v4, v1, v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const/4 v4, 0x3

    .line 218
    aget-object v4, v1, v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    .line 219
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/4 v4, 0x5

    .line 220
    aget-object v1, v1, v4

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual/range {p0 .. p0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v5

    if-eqz v13, :cond_0

    .line 228
    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/SharedRealm$SchemaMode;

    :goto_0
    invoke-virtual {v1}, Lio/realm/internal/SharedRealm$SchemaMode;->getNativeValue()B

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/SharedRealm$SchemaMode;

    goto :goto_0

    .line 229
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/SharedRealm$Durability;

    move-result-object v1

    sget-object v7, Lio/realm/internal/SharedRealm$Durability;->MEM_ONLY:Lio/realm/internal/SharedRealm$Durability;

    if-ne v1, v7, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    const/4 v8, 0x0

    .line 231
    invoke-virtual/range {p0 .. p0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v9

    const/4 v11, 0x1

    move/from16 v12, p2

    .line 225
    invoke-static/range {v4 .. v18}, Lio/realm/internal/SharedRealm;->nativeCreateConfig(Ljava/lang/String;[BBZZJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v1

    .line 242
    :try_start_0
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    .line 244
    new-instance v3, Lio/realm/internal/SharedRealm;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct {v3, v1, v2, v4, v5}, Lio/realm/internal/SharedRealm;-><init>(JLio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v1, v2}, Lio/realm/internal/SharedRealm;->nativeCloseConfig(J)V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lio/realm/internal/SharedRealm;->nativeCloseConfig(J)V

    throw v3
.end method

.method public static initialize(Ljava/io/File;)V
    .locals 2

    .line 44
    sget-object v0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    new-instance p0, Lio/realm/internal/IOException;

    const-string v1, "failed to create temporary directory: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v1, "/"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_2
    invoke-static {v0}, Lio/realm/internal/SharedRealm;->nativeInit(Ljava/lang/String;)V

    .line 61
    sput-object p0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    return-void
.end method

.method private static native nativeBeginTransaction(J)V
.end method

.method private static native nativeCancelTransaction(J)V
.end method

.method private static native nativeCloseConfig(J)V
.end method

.method private static native nativeCloseSharedRealm(J)V
.end method

.method private static native nativeCommitTransaction(J)V
.end method

.method private static native nativeCompact(J)Z
.end method

.method private static native nativeCreateConfig(Ljava/lang/String;[BBZZJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)J
.end method

.method private static native nativeCreateTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J
.end method

.method private static native nativeGetTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetTableName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(J)J
.end method

.method private static native nativeGetVersionID(J)[J
.end method

.method private static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeIsAutoRefresh(J)Z
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsEmpty(J)Z
.end method

.method private static native nativeIsInTransaction(J)Z
.end method

.method private static native nativeReadGroup(J)J
.end method

.method private static native nativeRefresh(J)V
.end method

.method private static native nativeRemoveTable(JLjava/lang/String;)V
.end method

.method private static native nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRequiresMigration(JJ)Z
.end method

.method private static native nativeSetAutoRefresh(JZ)V
.end method

.method private static native nativeSetVersion(JJ)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStopWaitForChange(J)V
.end method

.method private static native nativeUpdateSchema(JJJ)V
.end method

.method private static native nativeWaitForChange(J)Z
.end method

.method private static native nativeWriteCopy(JLjava/lang/String;[B)V
.end method


# virtual methods
.method public final beginTransaction$1385ff()V
    .locals 5

    .line 2460
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2461
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/Collection$Iterator;

    if-eqz v1, :cond_0

    .line 3153
    iget-object v2, v1, Lio/realm/internal/Collection$Iterator;->iteratorCollection:Lio/realm/internal/Collection;

    invoke-virtual {v2}, Lio/realm/internal/Collection;->createSnapshot()Lio/realm/internal/Collection;

    move-result-object v2

    iput-object v2, v1, Lio/realm/internal/Collection$Iterator;->iteratorCollection:Lio/realm/internal/Collection;

    goto :goto_0

    .line 2466
    :cond_1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3503
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3504
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/PendingRow;

    if-eqz v1, :cond_2

    .line 4251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The query has been executed. This \'PendingRow\' is not valid anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3509
    :cond_3
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeBeginTransaction(J)V

    .line 4438
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    if-eqz v0, :cond_4

    .line 4442
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    .line 5283
    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/SharedRealm;->nativeGetVersion(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_4

    .line 4445
    iput-wide v2, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    .line 4446
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    invoke-interface {v0}, Lio/realm/internal/SharedRealm$SchemaVersionListener;->onSchemaVersionChanged$1349ef()V

    :cond_4
    return-void
.end method

.method public final cancelTransaction()V
    .locals 2

    .line 271
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCancelTransaction(J)V

    return-void
.end method

.method public final close()V
    .locals 3

    .line 418
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0}, Lio/realm/internal/RealmNotifier;->close()V

    .line 420
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/NativeContext;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/SharedRealm;->nativeCloseSharedRealm(J)V

    .line 424
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final commitTransaction()V
    .locals 2

    .line 267
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCommitTransaction(J)V

    return-void
.end method

.method public final createTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 3

    .line 315
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/SharedRealm;->nativeCreateTable(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object v0
.end method

.method final getGroupNative()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeReadGroup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    .line 434
    sget-wide v0, Lio/realm/internal/SharedRealm;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    .line 429
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSchemaVersion()J
    .locals 2

    .line 283
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 2

    .line 303
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v0

    .line 304
    new-instance p1, Lio/realm/internal/Table;

    invoke-direct {p1, p0, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object p1
.end method

.method public final getTableName(I)Ljava/lang/String;
    .locals 2

    .line 327
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeGetTableName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final hasTable(Ljava/lang/String;)Z
    .locals 2

    .line 292
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isClosed()Z
    .locals 2

    .line 353
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsClosed(J)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 339
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public final isInTransaction()Z
    .locals 2

    .line 275
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public final setSchemaVersion(J)V
    .locals 2

    .line 279
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SharedRealm;->nativeSetVersion(JJ)V

    return-void
.end method

.method public final size()J
    .locals 2

    .line 331
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method
