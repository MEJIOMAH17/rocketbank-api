.class public Lcom/flurry/sdk/jr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "jr"

.field private static f:Lcom/flurry/sdk/jr;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/String;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/flurry/sdk/kh;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flurry/sdk/jr;->b:Landroid/os/Handler;

    .line 73
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FlurryAgent"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    .line 74
    iget-object p1, p0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    .line 77
    iput-object p2, p0, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/flurry/sdk/kh;

    invoke-direct {p1}, Lcom/flurry/sdk/kh;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    return-void
.end method

.method public static a()Lcom/flurry/sdk/jr;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/flurry/sdk/jr;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    if-eqz v1, :cond_1

    .line 29
    sget-object p0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    .line 1101
    iget-object p0, p0, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one API key per application is supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_0
    sget-object p0, Lcom/flurry/sdk/jr;->e:Ljava/lang/String;

    const-string p1, "Flurry is already initialized"

    invoke-static {p0, p1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    :cond_1
    if-nez p0, :cond_2

    .line 38
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API key must be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_3
    new-instance v1, Lcom/flurry/sdk/jr;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/jr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    sput-object v1, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    .line 2089
    iget-object p1, v1, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {p1, p0}, Lcom/flurry/sdk/kh;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/flurry/sdk/jr;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 51
    monitor-exit v0

    return-void

    .line 54
    :cond_0
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    .line 3093
    iget-object v2, v1, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {v2}, Lcom/flurry/sdk/kh;->a()V

    .line 3085
    iget-object v1, v1, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 55
    sput-object v1, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/flurry/sdk/ki;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/flurry/sdk/ki;",
            ">;)",
            "Lcom/flurry/sdk/ki;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kh;->b(Ljava/lang/Class;)Lcom/flurry/sdk/ki;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/jr;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
