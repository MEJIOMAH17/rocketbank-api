.class public final Lru/rocketbank/core/manager/loader/cacher/FeedCache;
.super Ljava/lang/Object;
.source "FeedCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedCache.kt\nru/rocketbank/core/manager/loader/cacher/FeedCache\n*L\n1#1,121:1\n40#1,7:122\n*E\n*S KotlinDebug\n*F\n+ 1 FeedCache.kt\nru/rocketbank/core/manager/loader/cacher/FeedCache\n*L\n105#1,7:122\n*E\n"
.end annotation


# instance fields
.field private final cachedOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedPages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ">;"
        }
    .end annotation
.end field

.field private final lastCacheSize:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final topItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->topItems:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedOperations:Ljava/util/HashSet;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedPages:Landroid/util/SparseArray;

    return-void
.end method

.method private final mergeInsertPage(Lru/rocketbank/core/network/model/NanoFeedResult;)V
    .locals 2

    .line 51
    iget-object v0, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/Pagination;->getCurrentPage()I

    move-result v0

    .line 52
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedPages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object v0, v0, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    const-string v1, "nanoFeedResult.feed.list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeItems(Ljava/util/ArrayList;)V

    .line 55
    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    const-string v0, "nanoFeedResult.feed.list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeTop(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final mergeTop(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeItems(Ljava/util/ArrayList;)V

    .line 100
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->topItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->topItems:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final merge(Lru/rocketbank/core/network/model/NanoFeedResult;)Lru/rocketbank/core/network/model/NanoFeedResult;
    .locals 4

    const-string v0, "nanoFeedResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    .line 122
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_0
    iget-object v1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/Pagination;->getCurrentPage()I

    move-result v1

    .line 108
    iget-object v2, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/Pagination;->getTotalCount()I

    move-result v2

    .line 109
    iget v3, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->lastCacheSize:I

    if-lt v2, v3, :cond_1

    .line 110
    iget-object v2, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedPages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/NanoFeedResult;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0, p1, v1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeOrUpdatePage(Lru/rocketbank/core/network/model/NanoFeedResult;Lru/rocketbank/core/network/model/NanoFeedResult;)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeInsertPage(Lru/rocketbank/core/network/model/NanoFeedResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final mergeItems(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 83
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/model/FeedItem;

    .line 84
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedOperations:Ljava/util/HashSet;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 86
    iget-object v4, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedOperations:Ljava/util/HashSet;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/network/model/FeedItem;

    .line 88
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/FeedItem;->getHappenedAt()J

    move-result-wide v3

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/FeedItem;->getHappenedAt()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 89
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedOperations:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_0
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->cachedOperations:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final mergeOrUpdatePage(Lru/rocketbank/core/network/model/NanoFeedResult;Lru/rocketbank/core/network/model/NanoFeedResult;)Z
    .locals 3

    const-string v0, "nanoFeedResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object v0, v0, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    .line 60
    iget-object p2, p2, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object p2, p2, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    .line 62
    iget-object v1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object v1, v1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    const-string v2, "nanoFeedResult.feed.list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeItems(Ljava/util/ArrayList;)V

    .line 63
    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->top:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    const-string v1, "nanoFeedResult.top.list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;->mergeTop(Ljava/util/ArrayList;)V

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/FeedItem;

    .line 69
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    .line 71
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_0

    return p1

    :cond_0
    return v2
.end method

.method public final readLock(Ljava/util/concurrent/locks/ReadWriteLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "lock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 33
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    throw p2
.end method

.method public final writeLock(Ljava/util/concurrent/locks/ReadWriteLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "lock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2
.end method
