.class public final Lcom/flurry/sdk/ma;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ma$a;
    }
.end annotation


# static fields
.field private static c:Lcom/flurry/sdk/ma;


# instance fields
.field final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    .line 74
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ma;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    new-instance v0, Lcom/flurry/sdk/ma$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/ma$a;-><init>(Lcom/flurry/sdk/ma;B)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ma;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ma;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ma;->c:Lcom/flurry/sdk/ma;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/flurry/sdk/ma;

    invoke-direct {v1}, Lcom/flurry/sdk/ma;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ma;->c:Lcom/flurry/sdk/ma;

    .line 27
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ma;->c:Lcom/flurry/sdk/ma;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/ma;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ma;->c:Lcom/flurry/sdk/ma;

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/flurry/sdk/ma;->c:Lcom/flurry/sdk/ma;

    .line 1079
    iget-object v1, v1, Lcom/flurry/sdk/ma;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/flurry/sdk/ma;->c:Lcom/flurry/sdk/ma;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
