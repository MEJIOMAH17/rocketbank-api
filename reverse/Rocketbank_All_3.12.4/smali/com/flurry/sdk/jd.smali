.class public Lcom/flurry/sdk/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ki;


# static fields
.field private static final a:Ljava/lang/String; = "jd"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jd;
    .locals 3

    const-class v0, Lcom/flurry/sdk/jd;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    const-class v2, Lcom/flurry/sdk/jd;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ki;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 79
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1133
    iget-wide v0, v0, Lcom/flurry/sdk/jq;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static d()J
    .locals 2

    .line 90
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1137
    iget-wide v0, v0, Lcom/flurry/sdk/jq;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static e()J
    .locals 2

    .line 101
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    iget-wide v0, v0, Lcom/flurry/sdk/jq;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static f()J
    .locals 2

    .line 112
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    iget-wide v0, v0, Lcom/flurry/sdk/jq;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static g()J
    .locals 2

    .line 123
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static h()Lcom/flurry/sdk/jk$a;
    .locals 1

    .line 192
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jk$a;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lcom/flurry/sdk/jq;
    .locals 2

    .line 196
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1204
    :cond_0
    const-class v1, Lcom/flurry/sdk/jq;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ld;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jq;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 40
    const-class p1, Lcom/flurry/sdk/jq;

    invoke-static {p1}, Lcom/flurry/sdk/ld;->a(Ljava/lang/Class;)V

    .line 43
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    .line 53
    invoke-static {}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    .line 54
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/flurry/sdk/jp;->b()V

    const/4 v0, 0x0

    .line 1020
    sput-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;

    .line 62
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 63
    invoke-static {}, Lcom/flurry/sdk/je;->b()V

    .line 64
    invoke-static {}, Lcom/flurry/sdk/ji;->b()V

    .line 65
    invoke-static {}, Lcom/flurry/sdk/jl;->b()V

    .line 66
    invoke-static {}, Lcom/flurry/sdk/je;->b()V

    .line 67
    invoke-static {}, Lcom/flurry/sdk/jk;->b()V

    .line 68
    invoke-static {}, Lcom/flurry/sdk/jt;->b()V

    .line 69
    invoke-static {}, Lcom/flurry/sdk/li;->b()V

    .line 70
    invoke-static {}, Lcom/flurry/sdk/lm;->b()V

    .line 71
    invoke-static {}, Lcom/flurry/sdk/kb;->b()V

    .line 73
    const-class v0, Lcom/flurry/sdk/jq;

    invoke-static {v0}, Lcom/flurry/sdk/ld;->b(Ljava/lang/Class;)V

    return-void
.end method
