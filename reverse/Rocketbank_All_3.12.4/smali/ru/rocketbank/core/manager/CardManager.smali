.class public final Lru/rocketbank/core/manager/CardManager;
.super Ljava/lang/Object;
.source "CardManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardManager.kt\nru/rocketbank/core/manager/CardManager\n*L\n1#1,71:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final binCache:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lrx/subjects/BehaviorSubject<",
            "Lru/rocketbank/core/model/dto/BinResponseData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final rocketApi:Lru/rocketbank/core/network/api/RocketAPI;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "rocketApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/CardManager;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    const-string p1, "CardManager"

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/manager/CardManager;->TAG:Ljava/lang/String;

    .line 18
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/CardManager;->binCache:Landroid/support/v4/util/ArrayMap;

    .line 19
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public final getBin(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/BinResponseData;",
            ">;"
        }
    .end annotation

    const-string v0, "pan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pan lenght less then 6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.error<BinResp\u2026Pan lenght less then 6\"))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 29
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->binCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/BehaviorSubject;

    if-eqz v0, :cond_1

    .line 31
    check-cast v0, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p1, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    :try_start_1
    iget-object v1, p0, Lru/rocketbank/core/manager/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Update cache failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :goto_1
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 41
    :try_start_2
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lru/rocketbank/core/manager/CardManager;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 43
    invoke-interface {v1, p1}, Lru/rocketbank/core/network/api/RocketAPI;->requestBin(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 44
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 45
    new-instance v2, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;

    invoke-direct {v2, p0, v0, p1}, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;-><init>(Lru/rocketbank/core/manager/CardManager;Lrx/subjects/BehaviorSubject;Ljava/lang/String;)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 59
    iget-object v1, p0, Lru/rocketbank/core/manager/CardManager;->binCache:Landroid/support/v4/util/ArrayMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    check-cast v0, Lrx/Observable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    iget-object p1, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 63
    :try_start_3
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->TAG:Ljava/lang/String;

    const-string v1, "Update cache failed"

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v0, "subscription"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 66
    :goto_2
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 36
    :goto_3
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final getBinCache()Landroid/support/v4/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lrx/subjects/BehaviorSubject<",
            "Lru/rocketbank/core/model/dto/BinResponseData;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager;->binCache:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method
