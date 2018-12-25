.class public Lcom/flurry/sdk/il;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field static d:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/im;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Lcom/flurry/sdk/il;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/String;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:J

.field private j:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/flurry/sdk/il;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/flurry/sdk/il$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/il$1;-><init>(Lcom/flurry/sdk/il;)V

    iput-object v0, p0, Lcom/flurry/sdk/il;->j:Lcom/flurry/sdk/ka;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/il;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    sget v0, Lcom/flurry/sdk/il;->b:I

    if-nez v0, :cond_0

    const v0, 0x927c0

    .line 72
    sput v0, Lcom/flurry/sdk/il;->b:I

    .line 75
    :cond_0
    sget v0, Lcom/flurry/sdk/il;->a:I

    if-nez v0, :cond_1

    const/16 v0, 0xf

    .line 76
    sput v0, Lcom/flurry/sdk/il;->a:I

    .line 1491
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    .line 1491
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timeToSendNextPulseReport"

    const-wide/16 v2, 0x0

    .line 1492
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    .line 81
    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/flurry/sdk/il;->m()V

    .line 85
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/il;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/il;
    .locals 2

    const-class v0, Lcom/flurry/sdk/il;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/flurry/sdk/il;

    invoke-direct {v1}, Lcom/flurry/sdk/il;-><init>()V

    sput-object v1, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    .line 93
    :cond_0
    sget-object v1, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 88
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/il;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    .line 106
    sput p0, Lcom/flurry/sdk/il;->a:I

    return-void
.end method

.method public static b()V
    .locals 3

    .line 97
    sget-object v0, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    sget-object v2, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    iget-object v2, v2, Lcom/flurry/sdk/il;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 99
    sget-object v0, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    .line 101
    sput-object v0, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 0

    .line 110
    sput p0, Lcom/flurry/sdk/il;->b:I

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/il;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/flurry/sdk/il;->k()V

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from PulseCallbackManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit p0

    throw p1
.end method

.method private c(Lcom/flurry/sdk/ij;)V
    .locals 3

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p1, Lcom/flurry/sdk/ij;->d:Z

    .line 346
    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->a()V

    .line 349
    sget-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 25088
    iget-object v0, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    invoke-virtual {v0}, Lcom/flurry/sdk/ii;->c()V

    .line 354
    iget-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26072
    iget-object v2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 26124
    iget-object v2, v2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 27084
    iget-object v2, v2, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28076
    iget-object p1, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 28116
    iget-object p1, p1, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " finalized."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 354
    invoke-static {v1, v0, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V

    .line 360
    invoke-direct {p0}, Lcom/flurry/sdk/il;->g()V

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/flurry/sdk/il;->m()V

    .line 337
    :cond_0
    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/flurry/sdk/il;->m()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 365
    invoke-static {}, Lcom/flurry/sdk/il;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/il;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 366
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string v2, "Threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/flurry/sdk/il;->j()V

    :cond_1
    return-void
.end method

.method private static h()Z
    .locals 2

    .line 387
    sget-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    sget v1, Lcom/flurry/sdk/il;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()Z
    .locals 5

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/il;->i:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .locals 10

    .line 400
    invoke-static {}, Lcom/flurry/sdk/il;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/im;

    .line 404
    invoke-virtual {v1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/ii;

    .line 405
    iget-object v4, v4, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    .line 406
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 407
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/ij;

    .line 410
    iget-boolean v7, v6, Lcom/flurry/sdk/ij;->j:Z

    if-eqz v7, :cond_3

    .line 411
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 416
    :cond_3
    iget-object v7, v6, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    sget-object v8, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    invoke-virtual {v7, v8}, Lcom/flurry/sdk/ik;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 424
    iput-boolean v5, v6, Lcom/flurry/sdk/ij;->j:Z

    move v2, v5

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    .line 429
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/im;)V

    goto :goto_0

    .line 434
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/in;->b()V

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v3, Lcom/flurry/sdk/il;->b:I

    int-to-long v3, v3

    add-long v5, v0, v3

    iput-wide v5, p0, Lcom/flurry/sdk/il;->i:J

    .line 438
    invoke-direct {p0}, Lcom/flurry/sdk/il;->k()V

    .line 28454
    invoke-static {}, Lcom/flurry/sdk/il;->c()Ljava/util/List;

    move-result-object v0

    move v1, v2

    .line 28457
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 28458
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/im;

    .line 28461
    invoke-virtual {v3}, Lcom/flurry/sdk/im;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 29076
    iget v3, v3, Lcom/flurry/sdk/im;->b:I

    .line 28462
    invoke-direct {p0, v3}, Lcom/flurry/sdk/il;->c(I)V

    goto :goto_6

    .line 28466
    :cond_6
    invoke-virtual {v3}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v4

    move v5, v2

    .line 28469
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 28470
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/ii;

    .line 29127
    iget-boolean v7, v6, Lcom/flurry/sdk/ii;->l:Z

    if-eqz v7, :cond_7

    .line 30097
    iget-object v7, v3, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    .line 30102
    iget-wide v8, v6, Lcom/flurry/sdk/ii;->b:J

    .line 28473
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 28478
    :cond_7
    iget-object v6, v6, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 28479
    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 28480
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/ij;

    .line 28482
    iget-boolean v7, v7, Lcom/flurry/sdk/ij;->j:Z

    if-eqz v7, :cond_8

    .line 28483
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 444
    :cond_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 446
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V

    return-void
.end method

.method private k()V
    .locals 4

    .line 496
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 31097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timeToSendNextPulseReport"

    .line 499
    iget-wide v2, p0, Lcom/flurry/sdk/il;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private declared-synchronized l()I
    .locals 1

    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/il;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

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

.method private static m()V
    .locals 5

    .line 508
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 32097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    .line 508
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    new-instance v3, Lcom/flurry/sdk/il$6;

    invoke-direct {v3}, Lcom/flurry/sdk/il$6;-><init>()V

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    sput-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/ij;)V
    .locals 3

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6072
    iget-object v2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 6124
    iget-object v2, v2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 7084
    iget-object v2, v2, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report sent successfully to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8076
    iget-object v2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 8116
    iget-object v2, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 205
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/flurry/sdk/ik;->a:Lcom/flurry/sdk/ik;

    iput-object v0, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    const-string v0, ""

    .line 210
    iput-object v0, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 212
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V

    .line 215
    invoke-static {}, Lcom/flurry/sdk/kf;->c()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$4;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/il$4;-><init>(Lcom/flurry/sdk/il;Lcom/flurry/sdk/ij;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/im;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string v1, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding and sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3084
    iget-object v3, p1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " report to PulseCallbackManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/il;->b:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/flurry/sdk/il;->i:J

    .line 128
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/il$2;-><init>(Lcom/flurry/sdk/il;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/il;->l()I

    move-result v0

    .line 3113
    iput v0, p1, Lcom/flurry/sdk/im;->b:I

    .line 138
    sget-object v1, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 4094
    iget-object v0, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/kp;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ih;->b(Lcom/flurry/sdk/kp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :cond_2
    monitor-exit p0

    return-void

    .line 114
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 229
    :try_start_0
    iget v0, p1, Lcom/flurry/sdk/ij;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/flurry/sdk/ij;->h:I

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/ij;->i:J

    .line 9056
    iget-object v0, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    iget v2, p1, Lcom/flurry/sdk/ij;->h:I

    .line 9098
    iget v0, v0, Lcom/flurry/sdk/ii;->d:I

    const/4 v3, 0x0

    if-le v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v2, 0x3

    if-nez v0, :cond_2

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13076
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 13116
    iget-object v4, v4, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " redirecting to url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14084
    iget-object p1, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 15067
    iput-object p2, p1, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return v1

    .line 233
    :cond_2
    :goto_1
    :try_start_1
    iget-object p2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum number of redirects attempted. Aborting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10072
    iget-object v1, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 10124
    iget-object v1, v1, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 11084
    iget-object v1, v1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " report to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12076
    iget-object v1, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 12116
    iget-object v1, v1, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v2, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object p2, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    iput-object p2, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    const-string p2, ""

    .line 239
    iput-object p2, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 241
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ij;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15072
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 15124
    iget-object v3, v3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 16084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/flurry/sdk/ik;->b:Lcom/flurry/sdk/ik;

    iput-object v0, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/ij;->i:J

    const-string v0, ""

    .line 267
    iput-object v0, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 270
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/im;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 151
    :try_start_0
    iget-object p1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string v1, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 155
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/flurry/sdk/il;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/flurry/sdk/il;->b:I

    int-to-long v3, v3

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/flurry/sdk/il;->i:J

    .line 158
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/il$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/il$3;-><init>(Lcom/flurry/sdk/il;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/il;->l()I

    move-result v1

    .line 4113
    iput v1, p1, Lcom/flurry/sdk/im;->b:I

    .line 169
    sget-object v2, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/ii;

    .line 173
    iget-object v2, v2, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    sget-object v3, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4373
    invoke-static {}, Lcom/flurry/sdk/il;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4374
    iget-object v3, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string v4, "Max Callback Attempts threshold reached. Sending callback logging reports"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4375
    invoke-direct {p0}, Lcom/flurry/sdk/il;->j()V

    goto :goto_0

    .line 4380
    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/il;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4381
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string v2, "Time threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4382
    invoke-direct {p0}, Lcom/flurry/sdk/il;->j()V

    .line 182
    :cond_5
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5084
    iget-object p1, p1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " report to PulseCallbackManager. Number of stored completed callbacks: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 149
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 277
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    iput-object v0, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/ij;->i:J

    if-nez p2, :cond_0

    const-string p2, ""

    .line 279
    :cond_0
    iput-object p2, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 17052
    iget-object p2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 18026
    iget v0, p2, Lcom/flurry/sdk/kp;->p:I

    .line 17094
    iget p2, p2, Lcom/flurry/sdk/ii;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 284
    iget-object p2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18072
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 18124
    iget-object v3, v3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 19084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " report to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20076
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 20116
    iget-object v3, v3, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, p2, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V

    goto :goto_1

    .line 21080
    :cond_2
    iget-object p2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 22038
    iget-object p2, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 292
    invoke-static {p2}, Lcom/flurry/sdk/ly;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 293
    iget-object p2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Url: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22080
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 23038
    iget-object v3, v3, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is invalid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V

    goto :goto_1

    .line 302
    :cond_3
    iget-object p2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying callback to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23072
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 23124
    iget-object v3, v3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 24084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 24111
    iget-wide v3, v3, Lcom/flurry/sdk/ii;->g:J

    const-wide/16 v5, 0x3e8

    .line 303
    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v0, p2, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->a()V

    .line 309
    sget-object p1, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 310
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V

    .line 311
    invoke-direct {p0}, Lcom/flurry/sdk/il;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .line 314
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method

.method public final d()V
    .locals 2

    .line 318
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/il$5;-><init>(Lcom/flurry/sdk/il;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method
