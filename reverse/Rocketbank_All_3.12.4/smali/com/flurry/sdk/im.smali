.class public final Lcom/flurry/sdk/im;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/im$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:J

.field b:I

.field public c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/flurry/sdk/ii;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Lcom/flurry/sdk/iq;

.field private i:Z

.field private j:I

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/flurry/sdk/in;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/im;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJLcom/flurry/sdk/iq;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lcom/flurry/sdk/iq;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/flurry/sdk/ii;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/flurry/sdk/im;->i:Z

    .line 47
    iput-wide p3, p0, Lcom/flurry/sdk/im;->a:J

    .line 48
    iput-wide p5, p0, Lcom/flurry/sdk/im;->g:J

    .line 49
    iput-object p7, p0, Lcom/flurry/sdk/im;->h:Lcom/flurry/sdk/iq;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/im;->f:J

    .line 53
    iput-object p8, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p8, :cond_1

    .line 57
    invoke-interface {p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 59
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 60
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p8, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/sdk/ii;

    .line 1136
    iput-object p0, p3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p8}, Ljava/util/Map;->size()I

    move-result p2

    iput p2, p0, Lcom/flurry/sdk/im;->j:I

    goto :goto_1

    .line 67
    :cond_1
    iput p1, p0, Lcom/flurry/sdk/im;->j:I

    .line 70
    :goto_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/flurry/sdk/im;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/im;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/flurry/sdk/im;->b:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/im;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/flurry/sdk/im;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/flurry/sdk/im;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/flurry/sdk/im;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/im;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/im;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/im;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/im;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/flurry/sdk/im;->j:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/im;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/flurry/sdk/im;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/im;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/flurry/sdk/im;->g:J

    return-wide v0
.end method

.method static synthetic d(Lcom/flurry/sdk/im;)Lcom/flurry/sdk/iq;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/flurry/sdk/im;->h:Lcom/flurry/sdk/iq;

    return-object p0
.end method

.method static synthetic e(Lcom/flurry/sdk/im;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/flurry/sdk/im;->i:Z

    return p0
.end method

.method static synthetic f(Lcom/flurry/sdk/im;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/flurry/sdk/im;->b:I

    return p0
.end method

.method static synthetic g(Lcom/flurry/sdk/im;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/flurry/sdk/im;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/flurry/sdk/im;->j:I

    return p0
.end method

.method static synthetic i(Lcom/flurry/sdk/im;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/flurry/sdk/im;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic j(Lcom/flurry/sdk/im;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ii;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/im;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    iget v1, p0, Lcom/flurry/sdk/im;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/im;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    throw v0
.end method

.method public final d()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 217
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/im;->h:Lcom/flurry/sdk/iq;

    .line 2034
    iget v0, v0, Lcom/flurry/sdk/iq;->e:I

    .line 220
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 221
    iget-wide v3, p0, Lcom/flurry/sdk/im;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 222
    iget-wide v3, p0, Lcom/flurry/sdk/im;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 223
    iget-boolean v0, p0, Lcom/flurry/sdk/im;->i:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 224
    iget-boolean v0, p0, Lcom/flurry/sdk/im;->i:Z

    if-eqz v0, :cond_0

    .line 225
    iget v0, p0, Lcom/flurry/sdk/im;->b:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 226
    iget-object v0, p0, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/ii;

    .line 234
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2038
    iget-object v3, v4, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 235
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 236
    iget-object v3, v4, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 239
    iget-object v3, v4, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/ij;

    .line 240
    iget v5, v4, Lcom/flurry/sdk/ij;->a:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    iget-wide v5, v4, Lcom/flurry/sdk/ij;->b:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 242
    iget-wide v5, v4, Lcom/flurry/sdk/ij;->c:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 243
    iget-boolean v5, v4, Lcom/flurry/sdk/ij;->d:Z

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 244
    iget v5, v4, Lcom/flurry/sdk/ij;->e:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    iget-object v5, v4, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 3019
    iget v5, v5, Lcom/flurry/sdk/ik;->e:I

    .line 245
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 246
    iget v5, v4, Lcom/flurry/sdk/ij;->e:I

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    iget v5, v4, Lcom/flurry/sdk/ij;->e:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_3

    .line 247
    :cond_2
    iget-object v5, v4, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 248
    iget-object v5, v4, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 249
    array-length v6, v5

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 250
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 253
    :cond_3
    iget v5, v4, Lcom/flurry/sdk/ij;->h:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 254
    iget-wide v4, v4, Lcom/flurry/sdk/ij;->k:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 259
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    const/4 v1, 0x6

    .line 261
    :try_start_2
    sget-object v3, Lcom/flurry/sdk/im;->e:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v1, v3, v4, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 264
    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0
.end method
