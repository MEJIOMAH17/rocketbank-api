.class public final Lcom/flurry/sdk/lm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J = 0x64L

.field private static b:Lcom/flurry/sdk/lm;


# instance fields
.field private final c:Lcom/flurry/sdk/ln;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/flurry/sdk/ln;

    invoke-direct {v0}, Lcom/flurry/sdk/ln;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    sget-wide v1, Lcom/flurry/sdk/lm;->a:J

    .line 1034
    iput-wide v1, v0, Lcom/flurry/sdk/ln;->a:J

    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    const/4 v1, 0x1

    .line 1038
    iput-boolean v1, v0, Lcom/flurry/sdk/ln;->b:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lm;
    .locals 2

    const-class v0, Lcom/flurry/sdk/lm;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/flurry/sdk/lm;

    invoke-direct {v1}, Lcom/flurry/sdk/lm;-><init>()V

    sput-object v1, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    .line 20
    :cond_0
    sget-object v1, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/lm;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    invoke-direct {v1}, Lcom/flurry/sdk/lm;->c()V

    const/4 v1, 0x0

    .line 26
    sput-object v1, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    invoke-virtual {v0}, Lcom/flurry/sdk/ln;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/ka;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/ll;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 37
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object p1

    const-string v0, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    invoke-virtual {p1}, Lcom/flurry/sdk/ln;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ka;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/ll;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 44
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object p1

    const-string v0, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    invoke-virtual {p1}, Lcom/flurry/sdk/ln;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    throw p1
.end method
