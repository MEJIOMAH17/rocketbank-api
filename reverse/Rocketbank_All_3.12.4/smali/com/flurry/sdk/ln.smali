.class public Lcom/flurry/sdk/ln;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "ln"


# instance fields
.field a:J

.field b:Z

.field private d:Z

.field private e:Lcom/flurry/sdk/lw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 14
    iput-wide v0, p0, Lcom/flurry/sdk/ln;->a:J

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/flurry/sdk/ln;->b:Z

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/flurry/sdk/ln;->d:Z

    .line 18
    new-instance v0, Lcom/flurry/sdk/ln$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ln$1;-><init>(Lcom/flurry/sdk/ln;)V

    iput-object v0, p0, Lcom/flurry/sdk/ln;->e:Lcom/flurry/sdk/lw;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ln;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/flurry/sdk/ln;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/flurry/sdk/ln;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/flurry/sdk/ln;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/flurry/sdk/ln;)Lcom/flurry/sdk/lw;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/flurry/sdk/ln;->e:Lcom/flurry/sdk/lw;

    return-object p0
.end method

.method static synthetic d(Lcom/flurry/sdk/ln;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/flurry/sdk/ln;->a:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ln;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 43
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ln;->e:Lcom/flurry/sdk/lw;

    iget-wide v2, p0, Lcom/flurry/sdk/ln;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/flurry/sdk/ln;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ln;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 52
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ln;->e:Lcom/flurry/sdk/lw;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/flurry/sdk/ln;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0

    throw v0
.end method
