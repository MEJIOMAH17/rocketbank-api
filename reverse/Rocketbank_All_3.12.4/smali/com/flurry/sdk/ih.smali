.class public Lcom/flurry/sdk/ih;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/kq<",
        "Lcom/flurry/sdk/ii;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J = 0x0L

.field private static final e:Ljava/lang/String; = "ih"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/flurry/sdk/kq;-><init>()V

    const-wide/16 v0, 0x7530

    .line 1070
    sput-wide v0, Lcom/flurry/sdk/kq;->b:J

    .line 1071
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V
    .locals 1

    .line 19238
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/ij;)V

    .line 19240
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/kl;)V
    .locals 5

    const-string v0, "Location"

    .line 23195
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 23197
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24030
    iget-object v1, p2, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 23197
    invoke-static {v0, v1}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23200
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 23203
    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    const-string v3, "Received redirect url. Retrying: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23206
    :cond_1
    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    const-string v3, "Received redirect url. Retrying: false"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_3

    .line 24067
    iput-object v0, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 24134
    iput-object v0, p3, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    const-string p1, "Location"

    .line 24267
    iget-object p2, p3, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    .line 25108
    iget-object p2, p2, Lcom/flurry/sdk/jw;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 24268
    iget-object p2, p3, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    invoke-virtual {p2, p1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;)Z

    .line 23214
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    return-void

    .line 23217
    :cond_3
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Ljava/lang/String;)V
    .locals 2

    .line 20224
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z

    move-result p1

    .line 20226
    sget-object p3, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    const-string v0, "Failed report retrying: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 20229
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->d(Lcom/flurry/sdk/kp;)V

    return-void

    .line 20232
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V
    .locals 3

    .line 21184
    sget-object v0, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22124
    iget-object v2, p2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 23084
    iget-object v2, v2, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 21184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report sent successfully to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23116
    iget-object v2, p2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 21184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 21186
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/ij;)V

    .line 21187
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/jy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ii;",
            ">;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 1097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v2, ".yflurryanpulsecallbackreporter"

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryanpulsecallbackreporter"

    new-instance v3, Lcom/flurry/sdk/ih$1;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/ih$1;-><init>(Lcom/flurry/sdk/ih;)V

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/flurry/sdk/kp;)V
    .locals 10

    .line 24
    check-cast p1, Lcom/flurry/sdk/ii;

    .line 4050
    sget-object v0, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending next pulse report to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5116
    iget-object v2, p1, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 4050
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6038
    iget-object v2, p1, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 4051
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 4050
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4057
    sget-wide v0, Lcom/flurry/sdk/ih;->a:J

    :cond_0
    move-wide v4, v0

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->g()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    .line 4064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, v4

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    .line 7026
    :goto_0
    iget v8, p1, Lcom/flurry/sdk/kp;->p:I

    .line 4070
    new-instance v9, Lcom/flurry/sdk/ij;

    move-object v0, v9

    move-object v1, p1

    move-wide v2, v4

    move-wide v4, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ij;-><init>(Lcom/flurry/sdk/ii;JJI)V

    .line 4074
    new-instance v0, Lcom/flurry/sdk/kl;

    invoke-direct {v0}, Lcom/flurry/sdk/kl;-><init>()V

    .line 7038
    iget-object v1, p1, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 7134
    iput-object v1, v0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    const v1, 0x186a0

    .line 8029
    iput v1, v0, Lcom/flurry/sdk/lx;->w:I

    .line 8108
    iget-object v1, p1, Lcom/flurry/sdk/ii;->e:Lcom/flurry/sdk/ip;

    .line 4079
    sget-object v2, Lcom/flurry/sdk/ip;->c:Lcom/flurry/sdk/ip;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ip;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4080
    new-instance v1, Lcom/flurry/sdk/kv;

    invoke-direct {v1}, Lcom/flurry/sdk/kv;-><init>()V

    .line 9040
    iput-object v1, v0, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 9122
    iget-object v1, p1, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10122
    iget-object v1, p1, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    .line 4083
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 11036
    iput-object v1, v0, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 4087
    :cond_2
    sget-object v1, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 11142
    iput-object v1, v0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    goto :goto_1

    .line 4091
    :cond_3
    sget-object v1, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    .line 12142
    iput-object v1, v0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    .line 13118
    :goto_1
    iget v1, p1, Lcom/flurry/sdk/ii;->h:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 13152
    iput v1, v0, Lcom/flurry/sdk/kn;->h:I

    .line 14120
    iget v1, p1, Lcom/flurry/sdk/ii;->i:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 14158
    iput v1, v0, Lcom/flurry/sdk/kn;->i:I

    const/4 v1, 0x1

    .line 14193
    iput-boolean v1, v0, Lcom/flurry/sdk/kn;->l:Z

    .line 15162
    iput-boolean v1, v0, Lcom/flurry/sdk/kn;->r:Z

    .line 16118
    iget v1, p1, Lcom/flurry/sdk/ii;->h:I

    .line 16120
    iget v2, p1, Lcom/flurry/sdk/ii;->i:I

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    .line 16170
    iput v1, v0, Lcom/flurry/sdk/kn;->s:I

    .line 17114
    iget-object v1, p1, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 18114
    iget-object v2, p1, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    .line 4109
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4111
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4112
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 18191
    iput-boolean v1, v0, Lcom/flurry/sdk/kn;->j:Z

    .line 4118
    new-instance v1, Lcom/flurry/sdk/ih$2;

    invoke-direct {v1, p0, p1, v9}, Lcom/flurry/sdk/ih$2;-><init>(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ij;)V

    .line 19048
    iput-object v1, v0, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 4178
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ii;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/il;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 245
    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ii;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    invoke-static {}, Lcom/flurry/sdk/il;->e()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 255
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 258
    monitor-exit p0

    return-void

    .line 260
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from report queue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/im;

    .line 263
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/im;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    invoke-static {}, Lcom/flurry/sdk/il;->c()Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/im;

    .line 271
    invoke-virtual {v1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/ii;

    .line 1127
    iget-boolean v4, v2, Lcom/flurry/sdk/ii;->l:Z

    if-nez v4, :cond_4

    .line 273
    sget-object v4, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Callback for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2124
    iget-object v6, v2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 3084
    iget-object v6, v6, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    iget-object v6, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 279
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 251
    monitor-exit p0

    throw p1
.end method
