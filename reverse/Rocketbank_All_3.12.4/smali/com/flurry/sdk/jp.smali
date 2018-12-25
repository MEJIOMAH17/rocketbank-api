.class public final Lcom/flurry/sdk/jp;
.super Lcom/flurry/sdk/ke;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ke<",
        "Lcom/flurry/sdk/kn;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/jp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .line 39
    const-class v0, Lcom/flurry/sdk/jp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v3, Lcom/flurry/sdk/kc;

    invoke-direct {v3}, Lcom/flurry/sdk/kc;-><init>()V

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/flurry/sdk/ke;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jp;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jp;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/jp;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/flurry/sdk/jp;

    invoke-direct {v1}, Lcom/flurry/sdk/jp;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/jp;

    .line 23
    :cond_0
    sget-object v1, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/jp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/jp;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/jp;

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/jp;

    invoke-virtual {v1}, Lcom/flurry/sdk/jp;->c()V

    :cond_0
    const/4 v1, 0x0

    .line 31
    sput-object v1, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/jp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method
