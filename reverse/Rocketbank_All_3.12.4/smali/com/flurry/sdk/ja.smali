.class public Lcom/flurry/sdk/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field static final a:Ljava/lang/String; = "ja"

.field static b:I = 0x64

.field static c:I = 0xa

.field static d:I = 0x3e8

.field static e:I = 0x27100

.field static f:I = 0x32


# instance fields
.field private final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:I

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/it;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private final G:Lcom/flurry/sdk/hl;

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flurry/sdk/ld;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/io/File;

.field i:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iy;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:B

.field n:Ljava/lang/Long;

.field o:Z

.field final p:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jf;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final t:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private u:J

.field private v:I

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iy;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iu;",
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

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Lcom/flurry/sdk/ja$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ja$1;-><init>(Lcom/flurry/sdk/ja;)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->t:Lcom/flurry/sdk/ka;

    const/4 v0, -0x1

    .line 162
    iput v0, p0, Lcom/flurry/sdk/ja;->v:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->x:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 170
    iput v1, p0, Lcom/flurry/sdk/ja;->C:I

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    .line 172
    iput v1, p0, Lcom/flurry/sdk/ja;->E:I

    .line 173
    iput v1, p0, Lcom/flurry/sdk/ja;->F:I

    .line 175
    iput-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    .line 184
    new-instance v0, Lcom/flurry/sdk/hl;

    invoke-direct {v0}, Lcom/flurry/sdk/hl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->G:Lcom/flurry/sdk/hl;

    .line 186
    new-instance v0, Lcom/flurry/sdk/ja$9;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ja$9;-><init>(Lcom/flurry/sdk/ja;)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->p:Lcom/flurry/sdk/ka;

    .line 201
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ja;->t:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ja;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/flurry/sdk/ja;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/ja;ZJ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ja;->a(ZJ)V

    return-void
.end method

.method private declared-synchronized a(ZJ)V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 883
    :try_start_0
    iget-boolean v2, v1, Lcom/flurry/sdk/ja;->o:Z

    const/4 v3, 0x3

    if-nez v2, :cond_0

    .line 884
    sget-object v2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v4, "Analytics disabled, not sending agent report."

    invoke-static {v3, v2, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 888
    :try_start_1
    iget-object v2, v1, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 889
    monitor-exit p0

    return-void

    .line 892
    :cond_1
    :try_start_2
    sget-object v2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v4, "generating agent report"

    invoke-static {v3, v2, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 896
    :try_start_3
    new-instance v15, Lcom/flurry/sdk/iw;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    .line 25101
    iget-object v5, v4, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 896
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jn;->i()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v1, Lcom/flurry/sdk/ja;->j:Z

    .line 897
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/je;->d()Z

    move-result v8

    iget-wide v9, v1, Lcom/flurry/sdk/ja;->u:J

    iget-object v13, v1, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    .line 898
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v4

    .line 25127
    iget-object v4, v4, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    .line 898
    iget-object v4, v1, Lcom/flurry/sdk/ja;->G:Lcom/flurry/sdk/hl;

    invoke-virtual {v4}, Lcom/flurry/sdk/hl;->a()Ljava/util/Map;

    move-result-object v16

    iget-object v11, v1, Lcom/flurry/sdk/ja;->x:Ljava/util/Map;

    .line 899
    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jt;->c()Ljava/util/HashMap;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v4, v15

    move-object/from16 v20, v11

    move-wide/from16 v11, p2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v4 .. v19}, Lcom/flurry/sdk/iw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 25206
    iget-object v2, v2, Lcom/flurry/sdk/iw;->a:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 903
    :try_start_4
    sget-object v4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v5, "Exception while generating report: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 907
    sget-object v2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 909
    :cond_2
    sget-object v4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    .line 910
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v3

    .line 26091
    iget-object v3, v3, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/ix;

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 915
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v5

    .line 26101
    iget-object v5, v5, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 915
    invoke-virtual {v3, v2, v5, v4}, Lcom/flurry/sdk/ix;->b([BLjava/lang/String;Ljava/lang/String;)V

    .line 26965
    :goto_1
    iget-object v2, v1, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26966
    iget-object v2, v1, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v2}, Lcom/flurry/sdk/jy;->b()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 882
    monitor-exit p0

    throw v2
.end method

.method static synthetic b(Lcom/flurry/sdk/ja;)Lcom/flurry/sdk/ka;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/flurry/sdk/ja;->t:Lcom/flurry/sdk/ka;

    return-object p0
.end method

.method private declared-synchronized b(J)V
    .locals 3

    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iv;

    .line 5041
    iget-boolean v2, v1, Lcom/flurry/sdk/iv;->b:Z

    if-eqz v2, :cond_0

    .line 5045
    iget-boolean v2, v1, Lcom/flurry/sdk/iv;->c:Z

    if-nez v2, :cond_0

    .line 557
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/iv;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 560
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 554
    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/flurry/sdk/ja;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->e()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/ja;)V
    .locals 4

    .line 27978
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 28097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 27978
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    .line 27980
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/ja;->j:Z

    const-string v1, "com.flurry.sdk.initial_run_time"

    .line 27981
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/ja;->u:J

    return-void
.end method

.method private declared-synchronized e()V
    .locals 7

    monitor-enter p0

    .line 928
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Loading persistent session report data."

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 932
    iget-object v1, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 935
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 936
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Legacy persistent agent data found, converting."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/hn;->a(Ljava/io/File;)Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27075
    iget-boolean v1, v0, Lcom/flurry/sdk/jb;->a:Z

    .line 27079
    iget-wide v2, v0, Lcom/flurry/sdk/jb;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 945
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    .line 948
    :cond_1
    iput-boolean v1, p0, Lcom/flurry/sdk/ja;->j:Z

    .line 949
    iput-wide v2, p0, Lcom/flurry/sdk/ja;->u:J

    .line 950
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->f()V

    .line 27083
    iget-object v0, v0, Lcom/flurry/sdk/jb;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v1, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 959
    invoke-virtual {p0}, Lcom/flurry/sdk/ja;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 927
    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ja;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->f()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/ja;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 985
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 27097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 985
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    .line 988
    iget-boolean v2, p0, Lcom/flurry/sdk/ja;->j:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.flurry.sdk.initial_run_time"

    .line 989
    iget-wide v2, p0, Lcom/flurry/sdk/ja;->u:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 990
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/ja;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/flurry/sdk/ja;->o:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    monitor-enter p0

    .line 623
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 625
    monitor-exit p0

    return-object v0

    .line 627
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 628
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "\ue8ffsid+Tumblr"

    .line 631
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 632
    invoke-virtual {p0, p1, p3, p2}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1

    const/4 p2, 0x5

    .line 633
    sget-object p3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v0, "logEvent status for syndication:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 622
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    monitor-enter p0

    .line 638
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 640
    iget-boolean v1, p0, Lcom/flurry/sdk/ja;->o:Z

    if-nez v1, :cond_0

    .line 641
    sget-object p1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 642
    sget-object p2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string p3, "Analytics has been disabled, not logging event."

    invoke-static {p2, p3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-object p1

    .line 646
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->e()J

    move-result-wide v3

    sub-long v9, v1, v3

    .line 648
    invoke-static {p1}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 650
    sget-object p1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    monitor-exit p0

    return-object p1

    .line 653
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iu;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 655
    iget-object v1, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/ja;->b:I

    if-ge v1, v3, :cond_2

    .line 656
    new-instance v1, Lcom/flurry/sdk/iu;

    invoke-direct {v1}, Lcom/flurry/sdk/iu;-><init>()V

    .line 657
    iput v2, v1, Lcom/flurry/sdk/iu;->a:I

    .line 658
    iget-object v2, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v2, "Event count started: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Too many different events. Event not counted: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 666
    :cond_3
    iget v0, v1, Lcom/flurry/sdk/iu;->a:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/flurry/sdk/iu;->a:I

    .line 667
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Event count incremented: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 671
    :goto_0
    iget-boolean v1, p0, Lcom/flurry/sdk/ja;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/ja;->d:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/flurry/sdk/ja;->C:I

    sget v3, Lcom/flurry/sdk/ja;->e:I

    if-ge v1, v3, :cond_7

    if-nez p2, :cond_4

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 675
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/ja;->c:I

    if-le v0, v1, :cond_5

    .line 676
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "MaxEventParams exceeded: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 680
    :cond_5
    new-instance v0, Lcom/flurry/sdk/iv;

    .line 16994
    iget-object v1, p0, Lcom/flurry/sdk/ja;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move v11, p3

    .line 680
    invoke-direct/range {v5 .. v11}, Lcom/flurry/sdk/iv;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 17076
    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object p3

    array-length p3, p3

    .line 683
    iget v1, p0, Lcom/flurry/sdk/ja;->C:I

    add-int/2addr p3, v1

    sget v1, Lcom/flurry/sdk/ja;->e:I

    if-gt p3, v1, :cond_6

    .line 684
    iget-object p3, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    iget p3, p0, Lcom/flurry/sdk/ja;->C:I

    .line 18076
    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr p3, v0

    .line 685
    iput p3, p0, Lcom/flurry/sdk/ja;->C:I

    .line 686
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 692
    iget-boolean p3, p0, Lcom/flurry/sdk/ja;->o:Z

    if-eqz p3, :cond_8

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object p3

    .line 18087
    iget-object p3, p3, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    if-eqz p3, :cond_8

    .line 693
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p3

    new-instance v1, Lcom/flurry/sdk/ja$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/ja$7;-><init>(Lcom/flurry/sdk/ja;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 702
    :cond_6
    sget p1, Lcom/flurry/sdk/ja;->e:I

    iput p1, p0, Lcom/flurry/sdk/ja;->C:I

    .line 703
    iput-boolean v2, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 705
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string p2, "Event Log size exceeded. No more event details logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 712
    :cond_7
    iput-boolean v2, p0, Lcom/flurry/sdk/ja;->B:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    :cond_8
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 637
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(JJJI)Lcom/flurry/sdk/iy;
    .locals 2

    monitor-enter p0

    .line 570
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/iz;

    invoke-direct {v0}, Lcom/flurry/sdk/iz;-><init>()V

    .line 572
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/jn;->i()Ljava/lang/String;

    move-result-object v1

    .line 6043
    iput-object v1, v0, Lcom/flurry/sdk/iz;->a:Ljava/lang/String;

    .line 6051
    iput-wide p1, v0, Lcom/flurry/sdk/iz;->b:J

    .line 6059
    iput-wide p3, v0, Lcom/flurry/sdk/iz;->c:J

    .line 6067
    iput-wide p5, v0, Lcom/flurry/sdk/iz;->d:J

    .line 576
    iget-object p1, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    .line 6075
    iput-object p1, v0, Lcom/flurry/sdk/iz;->e:Ljava/util/Map;

    .line 577
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 6150
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 6152
    invoke-virtual {p1}, Lcom/flurry/sdk/jq;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 7083
    :goto_0
    iput-object p1, v0, Lcom/flurry/sdk/iz;->f:Ljava/lang/String;

    .line 578
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 7165
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7167
    invoke-virtual {p1}, Lcom/flurry/sdk/jq;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 8091
    :goto_1
    iput-object p1, v0, Lcom/flurry/sdk/iz;->g:Ljava/lang/String;

    .line 579
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 8180
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8182
    invoke-virtual {p1}, Lcom/flurry/sdk/jq;->f()Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, p2

    .line 9099
    :goto_2
    iput-object p1, v0, Lcom/flurry/sdk/iz;->h:Ljava/util/Map;

    .line 581
    invoke-static {}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    invoke-static {}, Lcom/flurry/sdk/jh;->b()Ljava/lang/String;

    move-result-object p1

    .line 9107
    iput-object p1, v0, Lcom/flurry/sdk/iz;->i:Ljava/lang/String;

    .line 582
    invoke-static {}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    .line 10031
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    .line 10115
    iput-object p1, v0, Lcom/flurry/sdk/iz;->j:Ljava/lang/String;

    .line 10123
    iput p7, v0, Lcom/flurry/sdk/iz;->k:I

    .line 584
    iget p1, p0, Lcom/flurry/sdk/ja;->v:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_3

    iget p1, p0, Lcom/flurry/sdk/ja;->v:I

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/lp;->e()I

    move-result p1

    .line 10131
    :goto_3
    iput p1, v0, Lcom/flurry/sdk/iz;->l:I

    .line 11006
    iget-object p1, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    .line 11139
    :goto_4
    iput-object p1, v0, Lcom/flurry/sdk/iz;->m:Ljava/lang/String;

    .line 587
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/ji;->e()Landroid/location/Location;

    move-result-object p1

    .line 11147
    iput-object p1, v0, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 12038
    iget p1, p0, Lcom/flurry/sdk/ja;->F:I

    .line 12155
    iput p1, v0, Lcom/flurry/sdk/iz;->o:I

    .line 590
    iget-byte p1, p0, Lcom/flurry/sdk/ja;->m:B

    .line 12163
    iput-byte p1, v0, Lcom/flurry/sdk/iz;->p:B

    .line 591
    iget-object p1, p0, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    .line 12171
    iput-object p1, v0, Lcom/flurry/sdk/iz;->q:Ljava/lang/Long;

    .line 13034
    iget-object p1, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    .line 13179
    iput-object p1, v0, Lcom/flurry/sdk/iz;->r:Ljava/util/Map;

    .line 14022
    iget-object p1, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    .line 14187
    iput-object p1, v0, Lcom/flurry/sdk/iz;->s:Ljava/util/List;

    .line 595
    iget-boolean p1, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 14195
    iput-boolean p1, v0, Lcom/flurry/sdk/iz;->t:Z

    .line 15030
    iget-object p1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    .line 15211
    iput-object p1, v0, Lcom/flurry/sdk/iz;->v:Ljava/util/List;

    .line 598
    iget p1, p0, Lcom/flurry/sdk/ja;->E:I

    .line 16203
    iput p1, v0, Lcom/flurry/sdk/iz;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :try_start_1
    new-instance p1, Lcom/flurry/sdk/iy;

    invoke-direct {p1, v0}, Lcom/flurry/sdk/iy;-><init>(Lcom/flurry/sdk/iz;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception p1

    const/4 p3, 0x5

    .line 607
    :try_start_2
    sget-object p4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string p5, "Error creating analytics session report: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    :goto_5
    if-nez p1, :cond_5

    .line 611
    sget-object p2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string p3, "New session report wasn\'t created"

    invoke-static {p2, p3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :cond_5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 569
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lp;->e()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ja;->v:I

    .line 292
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$15;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$15;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$16;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$16;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 289
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    .line 367
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ja;->p:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/ka;)V

    .line 370
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$5;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 398
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/ja$6;-><init>(Lcom/flurry/sdk/ja;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 407
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object p1

    const-string p2, "Gender"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 409
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object p1

    const-string p2, "UserId"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 411
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object p1

    const-string p2, "Age"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 412
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object p1

    const-string p2, "LogEvents"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 366
    monitor-exit p0

    throw p1
.end method

.method final a(Landroid/content/Context;)V
    .locals 8

    .line 468
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 469
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 472
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launch Options Bundle is present "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 472
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 480
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "null"

    .line 482
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/ja;->x:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Its value: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "LogEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "analyticsEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "UserId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 440
    sget-object p2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 436
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/ja;->o:Z

    .line 437
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 432
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    .line 433
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, Birthdate = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 428
    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcom/flurry/sdk/ja;->m:B

    .line 429
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, Gender = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/flurry/sdk/ja;->m:B

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 424
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    .line 425
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, UserId = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 420
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/ja;->k:Z

    .line 421
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, LogEvents = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->k:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_4
        -0x66855b25 -> :sswitch_3
        -0x2bfdf2a3 -> :sswitch_2
        0x100df -> :sswitch_1
        0x7eeadee1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "uncaught"

    .line 761
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move v2, v0

    .line 763
    :goto_0
    iget v3, p0, Lcom/flurry/sdk/ja;->E:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/flurry/sdk/ja;->E:I

    .line 764
    iget-object v1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/ja;->f:I

    if-ge v1, v3, :cond_1

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 766
    new-instance v9, Lcom/flurry/sdk/it;

    .line 21998
    iget-object v1, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 766
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/flurry/sdk/it;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    iget-object p1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error logged: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22125
    iget-object p3, v9, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    .line 770
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v2, :cond_4

    .line 774
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 775
    iget-object v1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/it;

    .line 23125
    iget-object v2, v1, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "uncaught"

    .line 24125
    iget-object v1, v1, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    .line 777
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 779
    new-instance v10, Lcom/flurry/sdk/it;

    .line 24998
    iget-object v2, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 779
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, v10

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/flurry/sdk/it;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    iget-object p1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {p1, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 774
    :cond_3
    monitor-exit p0

    return-void

    .line 786
    :cond_4
    :try_start_2
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string p2, "Max errors logged. No more errors logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    .line 760
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iv;

    .line 19049
    iget-boolean v2, v1, Lcom/flurry/sdk/iv;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v4, v1, Lcom/flurry/sdk/iv;->d:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->e()J

    move-result-wide v6

    sub-long v8, v4, v6

    if-eqz p2, :cond_4

    .line 726
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget p1, p0, Lcom/flurry/sdk/ja;->C:I

    sget v0, Lcom/flurry/sdk/ja;->e:I

    if-ge p1, v0, :cond_4

    .line 728
    iget p1, p0, Lcom/flurry/sdk/ja;->C:I

    .line 19076
    invoke-virtual {v1}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr p1, v0

    .line 730
    new-instance v0, Ljava/util/HashMap;

    .line 731
    invoke-virtual {v1}, Lcom/flurry/sdk/iv;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 732
    invoke-virtual {v1, p2}, Lcom/flurry/sdk/iv;->a(Ljava/util/Map;)V

    .line 20076
    invoke-virtual {v1}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, p1

    .line 734
    sget v2, Lcom/flurry/sdk/ja;->e:I

    if-gt p2, v2, :cond_3

    .line 735
    invoke-virtual {v1}, Lcom/flurry/sdk/iv;->a()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    sget v2, Lcom/flurry/sdk/ja;->c:I

    if-le p2, v2, :cond_2

    .line 736
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded on endEvent: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1}, Lcom/flurry/sdk/iv;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 736
    invoke-static {p1, p2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/iv;->b(Ljava/util/Map;)V

    goto :goto_1

    .line 21076
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p1, p2

    .line 741
    iput p1, p0, Lcom/flurry/sdk/ja;->C:I

    goto :goto_1

    .line 745
    :cond_3
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/iv;->b(Ljava/util/Map;)V

    .line 746
    iput-boolean v3, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 747
    sget p1, Lcom/flurry/sdk/ja;->e:I

    iput p1, p0, Lcom/flurry/sdk/ja;->C:I

    .line 749
    sget-object p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string p2, "Event Log size exceeded. No more event details logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_4
    :goto_1
    invoke-virtual {v1, v8, v9}, Lcom/flurry/sdk/iv;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    return-void

    .line 758
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 721
    monitor-exit p0

    throw p1
.end method

.method final a(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-eqz p1, :cond_1

    .line 495
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v1, "boot.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 500
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 501
    iget-object v2, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v3, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v2, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v3, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v2, "disk.size.total.external"

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v2, "disk.size.available.external"

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v3, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v2, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v3, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v2, "disk.size.total.external"

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v2, "disk.size.available.external"

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v1, "carrier.name"

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    invoke-static {}, Lcom/flurry/sdk/jl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string v1, "carrier.details"

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    invoke-static {}, Lcom/flurry/sdk/jl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "activity"

    .line 520
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 521
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 522
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 524
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "memory.available"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v3, ".start"

    goto :goto_1

    :cond_2
    const-string v3, ".end"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4

    .line 526
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "memory.total"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v3, ".start"

    goto :goto_2

    :cond_3
    const-string v3, ".end"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 534
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    .line 4097
    iget-object v4, v4, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const/4 v5, 0x0

    .line 535
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "status"

    .line 538
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    if-ne v4, v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    const-string v4, "level"

    .line 541
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "scale"

    .line 542
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_5

    :catch_1
    move-exception v3

    move v4, v2

    .line 546
    :goto_3
    sget-object v5, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v6, "Error getting battery status: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :goto_4
    move v2, v4

    :goto_5
    int-to-float v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 550
    iget-object v2, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "battery.charging"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v4, ".start"

    goto :goto_6

    :cond_8
    const-string v4, ".end"

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "battery.remaining"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    const-string p1, ".start"

    goto :goto_7

    :cond_9
    const-string p1, ".end"

    :goto_7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 314
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ja;->a(Z)V

    .line 317
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v3

    .line 318
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->f()J

    move-result-wide v5

    .line 319
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    const-wide/16 v0, 0x0

    .line 2134
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2149
    iget-wide v0, v2, Lcom/flurry/sdk/jq;->f:J

    :cond_0
    move-wide v7, v0

    .line 320
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->h()Lcom/flurry/sdk/jk$a;

    move-result-object v0

    .line 3063
    iget v9, v0, Lcom/flurry/sdk/jk$a;->e:I

    .line 322
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ja;->b(J)V

    .line 325
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 3087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    if-eqz v0, :cond_1

    .line 326
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$2;

    invoke-direct {v1, p0, v3, v4}, Lcom/flurry/sdk/ja$2;-><init>(Lcom/flurry/sdk/ja;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 335
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$3;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 344
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v10, Lcom/flurry/sdk/ja$4;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/flurry/sdk/ja$4;-><init>(Lcom/flurry/sdk/ja;JJJI)V

    invoke-virtual {v0, v10}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 313
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 618
    :try_start_0
    iget v0, p0, Lcom/flurry/sdk/ja;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/ja;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 617
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 922
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    iget-object v1, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 921
    monitor-exit p0

    throw v0
.end method
