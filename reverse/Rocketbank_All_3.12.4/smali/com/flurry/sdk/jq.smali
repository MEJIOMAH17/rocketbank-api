.class public Lcom/flurry/sdk/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "jq"


# instance fields
.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flurry/sdk/ld;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field private final g:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/flurry/sdk/jq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jq$1;-><init>(Lcom/flurry/sdk/jq;)V

    iput-object v0, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/ka;

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/flurry/sdk/jq;->c:J

    .line 58
    iput-wide v0, p0, Lcom/flurry/sdk/jq;->d:J

    const-wide/16 v2, -0x1

    .line 59
    iput-wide v2, p0, Lcom/flurry/sdk/jq;->e:J

    .line 60
    iput-wide v0, p0, Lcom/flurry/sdk/jq;->f:J

    .line 62
    iput-wide v0, p0, Lcom/flurry/sdk/jq;->h:J

    .line 73
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 75
    new-instance v0, Lcom/flurry/sdk/jq$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jq$2;-><init>(Lcom/flurry/sdk/jq;)V

    iput-object v0, p0, Lcom/flurry/sdk/jq;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jq;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/flurry/sdk/jq;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/flurry/sdk/jq;)Lcom/flurry/sdk/ka;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/ka;

    return-object p0
.end method

.method public static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    .line 1117
    iget-wide v0, v0, Lcom/flurry/sdk/lf;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 121
    iget-wide v2, p0, Lcom/flurry/sdk/jq;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    add-long v0, v2, v6

    iput-wide v0, p0, Lcom/flurry/sdk/jq;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 116
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 161
    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/jq;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 176
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 165
    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/jq;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .locals 6

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/jq;->d:J

    sub-long v4, v0, v2

    .line 155
    iget-wide v0, p0, Lcom/flurry/sdk/jq;->h:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/flurry/sdk/jq;->h:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/flurry/sdk/jq;->h:J

    :goto_0
    iput-wide v4, p0, Lcom/flurry/sdk/jq;->h:J

    .line 157
    iget-wide v0, p0, Lcom/flurry/sdk/jq;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 153
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jq;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jq;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
