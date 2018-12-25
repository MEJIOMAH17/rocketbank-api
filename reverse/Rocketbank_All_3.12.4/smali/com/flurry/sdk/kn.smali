.class public Lcom/flurry/sdk/kn;
.super Lcom/flurry/sdk/lx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kn$a;,
        Lcom/flurry/sdk/kn$b;,
        Lcom/flurry/sdk/kn$c;
    }
.end annotation


# static fields
.field static final e:Ljava/lang/String; = "kn"


# instance fields
.field private A:Lcom/flurry/sdk/km;

.field private a:I

.field private b:I

.field private final c:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/net/HttpURLConnection;

.field public f:Ljava/lang/String;

.field public g:Lcom/flurry/sdk/kn$a;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Lcom/flurry/sdk/kn$c;

.field public l:Z

.field m:J

.field public n:J

.field public o:Ljava/lang/Exception;

.field public p:I

.field public final q:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:I

.field public t:Z

.field private x:Z

.field private y:Z

.field private final z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/flurry/sdk/lx;-><init>()V

    const/16 v0, 0x2710

    .line 101
    iput v0, p0, Lcom/flurry/sdk/kn;->h:I

    const/16 v0, 0x3a98

    .line 102
    iput v0, p0, Lcom/flurry/sdk/kn;->i:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/flurry/sdk/kn;->j:Z

    .line 106
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kn;->c:Lcom/flurry/sdk/jw;

    const-wide/16 v0, -0x1

    .line 113
    iput-wide v0, p0, Lcom/flurry/sdk/kn;->m:J

    .line 114
    iput-wide v0, p0, Lcom/flurry/sdk/kn;->n:J

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/flurry/sdk/kn;->p:I

    .line 119
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kn;->z:Ljava/lang/Object;

    const/16 v0, 0x61a8

    .line 124
    iput v0, p0, Lcom/flurry/sdk/kn;->s:I

    .line 130
    new-instance v0, Lcom/flurry/sdk/km;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/km;-><init>(Lcom/flurry/sdk/kn;)V

    iput-object v0, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kn;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private i()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/lr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 325
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    .line 326
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/kn;->h:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 327
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/kn;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 328
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/kn$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/kn;->j:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    iget-object v2, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 331
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/kn;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->b()Ljava/util/Collection;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 336
    iget-object v2, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    sget-object v0, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/flurry/sdk/kn;->j()V

    return-void

    .line 350
    :cond_3
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 356
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 357
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2427
    :try_start_4
    iget-object v3, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    if-eqz v3, :cond_4

    .line 2431
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2439
    iget-object v3, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    invoke-interface {v3, v2}, Lcom/flurry/sdk/kn$c;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 364
    invoke-static {v0}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 363
    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 364
    invoke-static {v0}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v1

    .line 369
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->l:Z

    if-eqz v0, :cond_6

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/kn;->m:J

    .line 374
    :cond_6
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->r:Z

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    iget v2, p0, Lcom/flurry/sdk/kn;->s:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/km;->a(J)V

    .line 379
    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/kn;->p:I

    .line 382
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->l:Z

    if-eqz v0, :cond_8

    iget-wide v2, p0, Lcom/flurry/sdk/kn;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flurry/sdk/kn;->m:J

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/flurry/sdk/kn;->n:J

    .line 386
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    invoke-virtual {v0}, Lcom/flurry/sdk/km;->a()V

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 392
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    iget-object v5, p0, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 398
    :cond_a
    sget-object v0, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    iget-object v2, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    iget-object v2, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v0, :cond_b

    .line 422
    invoke-direct {p0}, Lcom/flurry/sdk/kn;->j()V

    return-void

    .line 403
    :cond_b
    :try_start_6
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->y:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_c

    .line 422
    invoke-direct {p0}, Lcom/flurry/sdk/kn;->j()V

    return-void

    .line 412
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 413
    :try_start_8
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2443
    :try_start_9
    iget-object v1, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    if-eqz v1, :cond_d

    .line 2447
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->b()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2455
    iget-object v1, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    invoke-interface {v1, p0, v2}, Lcom/flurry/sdk/kn$c;->a(Lcom/flurry/sdk/kn;Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 418
    :cond_d
    :try_start_a
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 419
    invoke-static {v0}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 422
    invoke-direct {p0}, Lcom/flurry/sdk/kn;->j()V

    return-void

    :catchall_3
    move-exception v1

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 418
    :goto_4
    :try_start_b
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 419
    invoke-static {v0}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    .line 422
    invoke-direct {p0}, Lcom/flurry/sdk/kn;->j()V

    throw v0
.end method

.method private j()V
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/flurry/sdk/kn;->x:Z

    .line 477
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 302
    iget-object v0, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    invoke-virtual {v0}, Lcom/flurry/sdk/km;->a()V

    .line 304
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->h()V

    return-void

    .line 279
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v2

    .line 2079
    iget-boolean v2, v2, Lcom/flurry/sdk/jk;->b:Z

    if-nez v2, :cond_1

    .line 280
    sget-object v2, Lcom/flurry/sdk/kn;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network not available, aborting http request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    iget-object v0, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    invoke-virtual {v0}, Lcom/flurry/sdk/km;->a()V

    .line 304
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->h()V

    return-void

    .line 285
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/kn$a;->a:Lcom/flurry/sdk/kn$a;

    iget-object v3, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kn$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    :cond_2
    sget-object v2, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    iput-object v2, p0, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    .line 291
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/kn;->i()V

    .line 293
    sget-object v2, Lcom/flurry/sdk/kn;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/flurry/sdk/kn;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    invoke-virtual {v0}, Lcom/flurry/sdk/km;->a()V

    .line 304
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->h()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 295
    :try_start_3
    sget-object v3, Lcom/flurry/sdk/kn;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP status: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/flurry/sdk/kn;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/flurry/sdk/kn;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during http request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/kn;->b:I

    .line 298
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/kn;->a:I

    .line 299
    iput-object v2, p0, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 302
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/kn;->A:Lcom/flurry/sdk/km;

    invoke-virtual {v1}, Lcom/flurry/sdk/km;->a()V

    .line 304
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->h()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/flurry/sdk/kn;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/kn;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-boolean v1, p0, Lcom/flurry/sdk/kn;->y:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 214
    iget v0, p0, Lcom/flurry/sdk/kn;->p:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/sdk/kn;->p:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 3

    .line 257
    sget-object v0, Lcom/flurry/sdk/kn;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling http request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/flurry/sdk/kn;->z:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 259
    :try_start_0
    iput-boolean v1, p0, Lcom/flurry/sdk/kn;->y:Z

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    iget-boolean v0, p0, Lcom/flurry/sdk/kn;->x:Z

    if-nez v0, :cond_0

    .line 1487
    iput-boolean v1, p0, Lcom/flurry/sdk/kn;->x:Z

    .line 1490
    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 1491
    new-instance v0, Lcom/flurry/sdk/kn$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kn$1;-><init>(Lcom/flurry/sdk/kn;)V

    .line 1502
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 260
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->f()V

    return-void
.end method

.method final h()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/kn;->k:Lcom/flurry/sdk/kn$c;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/kn$c;->a(Lcom/flurry/sdk/kn;)V

    return-void
.end method
