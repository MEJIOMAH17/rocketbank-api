.class public Lcom/flurry/sdk/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ki;
.implements Lcom/flurry/sdk/lj$a;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "lz"


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object p1

    const-string v0, "CaptureUncaughtExceptions"

    .line 40
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/lz;->b:Z

    const-string v0, "CaptureUncaughtExceptions"

    .line 41
    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 42
    sget-object p1, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSettings, CrashReportingEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/lz;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p1, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/flurry/sdk/ma;->a()Lcom/flurry/sdk/ma;

    move-result-object p1

    .line 1050
    iget-object v0, p1, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object p1, p1, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "CaptureUncaughtExceptions"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/lz;->b:Z

    const/4 p1, 0x4

    .line 62
    sget-object p2, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, CrashReportingEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/lz;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 65
    sget-object p2, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/flurry/sdk/ma;->b()V

    .line 53
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    .line 55
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lj;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 71
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    iget-boolean p1, p0, Lcom/flurry/sdk/lz;->b:Z

    if-eqz p1, :cond_3

    const-string p1, ""

    .line 75
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    array-length v0, v0

    if-lez v0, :cond_1

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_2
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    const-string v0, "uncaught"

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/hk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/lf;->e()V

    .line 93
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/ji;->d()V

    return-void
.end method
