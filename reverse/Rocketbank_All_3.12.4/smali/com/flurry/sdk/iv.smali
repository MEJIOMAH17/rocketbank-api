.class public final Lcom/flurry/sdk/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:J

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    .line 23
    iput p1, p0, Lcom/flurry/sdk/iv;->f:I

    .line 24
    iput-object p2, p0, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 27
    iget-object p1, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    :cond_0
    iput-wide p4, p0, Lcom/flurry/sdk/iv;->g:J

    .line 31
    iput-boolean p6, p0, Lcom/flurry/sdk/iv;->b:Z

    .line 33
    iget-boolean p1, p0, Lcom/flurry/sdk/iv;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/flurry/sdk/iv;->c:Z

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/flurry/sdk/iv;->c:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/flurry/sdk/iv;->c:Z

    .line 54
    iget-wide v0, p0, Lcom/flurry/sdk/iv;->g:J

    sub-long v2, p1, v0

    iput-wide v2, p0, Lcom/flurry/sdk/iv;->d:J

    const-string p1, "FlurryAgent"

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ended event \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/flurry/sdk/iv;->g:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") after "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/flurry/sdk/iv;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()[B
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/iv;->f:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-wide v3, p0, Lcom/flurry/sdk/iv;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    iget-wide v3, p0, Lcom/flurry/sdk/iv;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 105
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 107
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    :goto_1
    const/4 v1, 0x0

    .line 110
    :try_start_3
    new-array v1, v1, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :try_start_4
    invoke-static {v0}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    .line 115
    :goto_2
    monitor-exit p0

    return-object v0

    .line 112
    :goto_3
    :try_start_5
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 89
    monitor-exit p0

    throw v0
.end method
