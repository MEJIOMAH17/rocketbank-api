.class public abstract Lcom/flurry/sdk/kq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/kp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "kq"

.field public static b:J = 0x2710L


# instance fields
.field public c:Z

.field public d:J

.field private final e:I

.field private final f:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "TReportInfo;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TReportInfo;>;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/lang/Runnable;

.field private final j:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jj;",
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
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lcom/flurry/sdk/kq;->e:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/flurry/sdk/kq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$1;-><init>(Lcom/flurry/sdk/kq;)V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->i:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/flurry/sdk/kq$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$2;-><init>(Lcom/flurry/sdk/kq;)V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->j:Lcom/flurry/sdk/ka;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/kq;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 54
    invoke-virtual {p0}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kq;->f:Lcom/flurry/sdk/jy;

    .line 56
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/flurry/sdk/kq;->h:I

    .line 60
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$3;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kq;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->b()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/kq;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/kq;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 136
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/kq;->h:I

    if-ltz v0, :cond_1

    const/4 v0, 0x3

    .line 141
    sget-object v1, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->g()V

    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/flurry/sdk/kq;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 154
    :try_start_3
    iput v0, p0, Lcom/flurry/sdk/kq;->h:I

    .line 155
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$8;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/flurry/sdk/kq;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->e()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    const/4 v0, 0x0

    .line 169
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v1

    .line 2079
    iget-boolean v1, v1, Lcom/flurry/sdk/jk;->b:Z

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    iget v1, p0, Lcom/flurry/sdk/kq;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 171
    iget-object v1, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/kq;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/kq;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/kp;

    .line 3022
    iget-boolean v2, v1, Lcom/flurry/sdk/kp;->o:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 178
    sget-object v2, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string v3, "Network is not available, aborting transmission"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 185
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/kp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 5

    monitor-enter p0

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->g()V

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kq;->a(Ljava/util/List;)V

    .line 194
    iget-boolean v0, p0, Lcom/flurry/sdk/kq;->c:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string v2, "Reporter paused"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string v2, "All reports sent successfully"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    goto :goto_0

    .line 204
    :cond_1
    iget-wide v2, p0, Lcom/flurry/sdk/kq;->d:J

    const/4 v0, 0x1

    shl-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flurry/sdk/kq;->d:J

    .line 206
    sget-object v0, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "One or more reports failed to send, backing off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/flurry/sdk/kq;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/kq;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/kq;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;J)V

    :goto_0
    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcom/flurry/sdk/kq;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 190
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 8

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 232
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/kp;

    .line 4022
    iget-boolean v2, v1, Lcom/flurry/sdk/kp;->o:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 236
    sget-object v2, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Url transmitted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4030
    iget-object v5, v1, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5026
    iget v1, v1, Lcom/flurry/sdk/kp;->p:I

    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6026
    :cond_1
    iget v2, v1, Lcom/flurry/sdk/kp;->p:I

    .line 238
    invoke-virtual {v1}, Lcom/flurry/sdk/kp;->a()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 239
    sget-object v2, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exceeded max no of attempts - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6030
    iget-object v5, v1, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7026
    iget v1, v1, Lcom/flurry/sdk/kp;->p:I

    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 8018
    iget-wide v6, v1, Lcom/flurry/sdk/kp;->n:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 8026
    iget v2, v1, Lcom/flurry/sdk/kp;->p:I

    if-lez v2, :cond_0

    .line 242
    sget-object v2, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expired: Time expired - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8030
    iget-object v5, v1, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9026
    iget v1, v1, Lcom/flurry/sdk/kp;->p:I

    .line 242
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 246
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 230
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract a()Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "TReportInfo;>;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/kp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TReportInfo;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    iget-object p1, p0, Lcom/flurry/sdk/kq;->f:Lcom/flurry/sdk/jy;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 223
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/kp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/kq$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$5;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TReportInfo;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 217
    iget-object v0, p0, Lcom/flurry/sdk/kq;->f:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 214
    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/kq;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->c(Ljava/lang/Runnable;)V

    .line 1249
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/kq;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    return-void
.end method

.method public final declared-synchronized c(Lcom/flurry/sdk/kp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 2046
    :try_start_0
    iput-boolean v0, p1, Lcom/flurry/sdk/kp;->o:Z

    .line 114
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/kq$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$6;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 111
    monitor-exit p0

    throw p1
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/flurry/sdk/kq;->c:Z

    .line 87
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$4;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized d(Lcom/flurry/sdk/kp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/kp;->a_()V

    .line 125
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/kq$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$7;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit p0

    throw p1
.end method
