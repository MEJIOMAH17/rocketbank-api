.class public Lcom/flurry/sdk/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static b:Lcom/flurry/sdk/lf; = null

.field private static final c:Ljava/lang/String; = "lf"


# instance fields
.field public a:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/ld;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/lg;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private h:Lcom/flurry/sdk/ld;

.field private i:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/lh;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/flurry/sdk/lg;

    invoke-direct {v0}, Lcom/flurry/sdk/lg;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->e:Lcom/flurry/sdk/lg;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/flurry/sdk/lf$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$1;-><init>(Lcom/flurry/sdk/lf;)V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->i:Lcom/flurry/sdk/ka;

    .line 67
    new-instance v0, Lcom/flurry/sdk/lf$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$2;-><init>(Lcom/flurry/sdk/lf;)V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->j:Lcom/flurry/sdk/ka;

    .line 103
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/flurry/sdk/lf;->a:J

    const-string v1, "ContinueSessionMillis"

    .line 107
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/sdk/lf;->g:J

    const-string v1, "ContinueSessionMillis"

    .line 108
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 109
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ContinueSessionMillis = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/flurry/sdk/lf;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/flurry/sdk/lf;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 113
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionTimerEvent"

    iget-object v2, p0, Lcom/flurry/sdk/lf;->i:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lf;
    .locals 2

    const-class v0, Lcom/flurry/sdk/lf;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/flurry/sdk/lf;

    invoke-direct {v1}, Lcom/flurry/sdk/lf;-><init>()V

    sput-object v1, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    .line 33
    :cond_0
    sget-object v1, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/lf;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->h()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lf;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/lf;Lcom/flurry/sdk/ld;)V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 1143
    iput-object p1, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    .line 1145
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b()V
    .locals 4

    const-class v0, Lcom/flurry/sdk/lf;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    iget-object v2, v2, Lcom/flurry/sdk/lf;->i:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/ka;)V

    .line 40
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    iget-object v2, v2, Lcom/flurry/sdk/lf;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/ka;)V

    .line 42
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "ContinueSessionMillis"

    .line 44
    sget-object v3, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/lj;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    :cond_0
    const/4 v1, 0x0

    .line 47
    sput-object v1, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ld;

    if-eqz v0, :cond_1

    .line 220
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 221
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Session already started with context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v1, "Session already started with context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    monitor-exit p0

    return-void

    .line 229
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/lf;->e:Lcom/flurry/sdk/lg;

    invoke-virtual {v0}, Lcom/flurry/sdk/lg;->a()V

    .line 232
    invoke-virtual {p0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Lcom/flurry/sdk/ld;

    invoke-direct {v0}, Lcom/flurry/sdk/ld;-><init>()V

    .line 237
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Flurry session started for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 240
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 241
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 242
    sget v2, Lcom/flurry/sdk/le$a;->a:I

    iput v2, v1, Lcom/flurry/sdk/le;->c:I

    .line 243
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-object v1, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1136
    :try_start_3
    iput-object v0, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    .line 1137
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :try_start_4
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Flurry session resumed for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 252
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 253
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 254
    sget p1, Lcom/flurry/sdk/le$a;->c:I

    iput p1, v1, Lcom/flurry/sdk/le;->c:I

    .line 255
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    const-wide/16 v0, 0x0

    .line 258
    iput-wide v0, p0, Lcom/flurry/sdk/lf;->a:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1137
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 217
    monitor-exit p0

    throw p1
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()I
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->g()I

    move-result v0

    const/4 v1, 0x5

    if-lez v0, :cond_0

    .line 297
    sget-object v2, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v3, "Session cannot be finalized, sessionContextCount:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Session cannot be finalized, current session not found"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 308
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Flurry session ended"

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 311
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 312
    sget v2, Lcom/flurry/sdk/le$a;->e:I

    iput v2, v1, Lcom/flurry/sdk/le;->c:I

    .line 313
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/le;->d:J

    .line 314
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 318
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/lf$4;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/lf$4;-><init>(Lcom/flurry/sdk/lf;Lcom/flurry/sdk/ld;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 294
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 150
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 151
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 156
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 160
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "bootstrap for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lf;->e(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "ContinueSessionMillis"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/lf;->g:J

    const/4 p1, 0x4

    .line 330
    sget-object p2, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, ContinueSessionMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/flurry/sdk/lf;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 332
    sget-object p2, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 167
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 170
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Manual onStartSession for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lf;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit p0

    throw p1
.end method

.method public final c()Lcom/flurry/sdk/ld;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 176
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 177
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 180
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Manual onEndSession for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/lf;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ld;

    if-nez v0, :cond_1

    .line 266
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 267
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Session cannot be ended, session not found for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v1, "Session cannot be ended, session not found for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Flurry session paused for context:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 278
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 279
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 280
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/le;->d:J

    .line 281
    sget p1, Lcom/flurry/sdk/le$a;->d:I

    iput p1, v1, Lcom/flurry/sdk/le;->c:I

    .line 282
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 286
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->g()I

    move-result p1

    if-nez p1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/flurry/sdk/lf;->e:Lcom/flurry/sdk/lg;

    iget-wide v0, p0, Lcom/flurry/sdk/lf;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/lg;->a(J)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    .line 290
    :try_start_3
    iput-wide v0, p0, Lcom/flurry/sdk/lf;->a:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 262
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Z
    .locals 3

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 188
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string v2, "Session not found. No active session"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 189
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 191
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 185
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 5

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    new-instance v2, Lcom/flurry/sdk/le;

    invoke-direct {v2}, Lcom/flurry/sdk/le;-><init>()V

    .line 199
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ld;

    iput-object v1, v2, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 201
    sget v1, Lcom/flurry/sdk/le$a;->d:I

    iput v1, v2, Lcom/flurry/sdk/le;->c:I

    .line 202
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/flurry/sdk/le;->d:J

    .line 203
    invoke-virtual {v2}, Lcom/flurry/sdk/le;->b()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/lf$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/lf$3;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 195
    monitor-exit p0

    throw v0
.end method
