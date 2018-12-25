.class public Lcom/google/android/gms/internal/zzu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzg;


# static fields
.field protected static final DEBUG:Z

.field private static zzan:I = 0xbb8

.field private static zzao:I = 0x1000


# instance fields
.field protected final zzap:Lcom/google/android/gms/internal/zzz;

.field protected final zzaq:Lcom/google/android/gms/internal/zzv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzu;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzz;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzv;

    sget v1, Lcom/google/android/gms/internal/zzu;->zzao:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzv;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzu;-><init>(Lcom/google/android/gms/internal/zzz;Lcom/google/android/gms/internal/zzv;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzz;Lcom/google/android/gms/internal/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzu;->zzap:Lcom/google/android/gms/internal/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzu;->zzaq:Lcom/google/android/gms/internal/zzv;

    return-void
.end method

.method protected static zza([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private zza(JLcom/google/android/gms/internal/zzl;[BLorg/apache/http/StatusLine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gms/internal/zzl<",
            "*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/zzu;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/zzu;->zzan:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    :cond_0
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    if-eqz p4, :cond_1

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzl;->zzq()Lcom/google/android/gms/internal/zzp;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzp;->zzd()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzt;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzl;Lcom/google/android/gms/internal/zzs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzl<",
            "*>;",
            "Lcom/google/android/gms/internal/zzs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzs;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->zzq()Lcom/google/android/gms/internal/zzp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->zzp()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzp;->zza(Lcom/google/android/gms/internal/zzs;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzs; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "%s-retry [timeout=%s]"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzl;->zzc(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzl;->zzc(Ljava/lang/String;)V

    throw p2
.end method

.method private zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzb$zza;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzb$zza;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzb$zza;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzb$zza;->zza:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p2, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private zza(Lorg/apache/http/HttpEntity;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzq;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzu;->zzaq:Lcom/google/android/gms/internal/zzv;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzab;-><init>(Lcom/google/android/gms/internal/zzv;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzq;-><init>()V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzu;->zzaq:Lcom/google/android/gms/internal/zzv;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzv;->zzb(I)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/zzab;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzab;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error occured when calling consumingContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzu;->zzaq:Lcom/google/android/gms/internal/zzv;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzv;->zza([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzab;->close()V

    return-object v2

    :catchall_0
    move-exception v3

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v3

    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "Error occured when calling consumingContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzu;->zzaq:Lcom/google/android/gms/internal/zzv;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzv;->zza([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzab;->close()V

    throw v3
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzl;)Lcom/google/android/gms/internal/zzj;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzl<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzj;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzs;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzl;->zzh()Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Lcom/google/android/gms/internal/zzu;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzb$zza;)V

    iget-object v4, v7, Lcom/google/android/gms/internal/zzu;->zzap:Lcom/google/android/gms/internal/zzz;

    invoke-interface {v4, v8, v3}, Lcom/google/android/gms/internal/zzz;->zza(Lcom/google/android/gms/internal/zzl;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v12
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzu;->zza([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v13
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v1, 0x130

    if-ne v14, v1, :cond_1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzl;->zzh()Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzj;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v19, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v20, v3, v9

    move-object v15, v1

    move-object/from16 v18, v13

    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/internal/zzj;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v1

    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v3, Lcom/google/android/gms/internal/zzj;

    const/16 v15, 0x130

    iget-object v4, v1, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v19, v5, v9

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/zzj;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v15, v2

    move-object/from16 v16, v13

    goto/16 :goto_5

    :cond_1
    :try_start_3
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/zzu;->zza(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_2
    :try_start_5
    new-array v1, v11, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    move-object/from16 v20, v1

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v3, v1, v9

    move-object v1, v7

    move-wide v2, v3

    move-object v4, v8

    move-object/from16 v5, v20

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzu;->zza(JLcom/google/android/gms/internal/zzl;[BLorg/apache/http/StatusLine;)V

    const/16 v1, 0xc8

    if-lt v14, v1, :cond_4

    const/16 v1, 0x12b

    if-le v14, v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzj;

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    sub-long v18, v2, v9

    move-object v3, v13

    move-object v13, v1

    move-object/from16 v15, v20

    move-object/from16 v16, v3

    :try_start_7
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/zzj;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v1

    :cond_4
    :goto_2
    move-object v3, v13

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v13

    :goto_3
    move-object v1, v0

    move-object/from16 v16, v3

    move-object/from16 v15, v20

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v13

    move-object v1, v0

    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v16, v1

    move-object v15, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v16, v1

    move-object v12, v2

    move-object v15, v12

    :goto_4
    move-object v1, v0

    :goto_5
    if-eqz v12, :cond_a

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzl;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/zzj;

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v18, v3, v9

    move-object v13, v2

    move v14, v1

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/zzj;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v3, 0x191

    if-eq v1, v3, :cond_8

    const/16 v3, 0x193

    if-ne v1, v3, :cond_5

    goto :goto_6

    :cond_5
    const/16 v3, 0x190

    if-lt v1, v3, :cond_6

    const/16 v3, 0x1f3

    if-gt v1, v3, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzd;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzj;)V

    throw v1

    :cond_6
    const/16 v3, 0x1f4

    if-lt v1, v3, :cond_7

    const/16 v3, 0x257

    if-gt v1, v3, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzq;-><init>(Lcom/google/android/gms/internal/zzj;)V

    throw v1

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzq;-><init>(Lcom/google/android/gms/internal/zzj;)V

    throw v1

    :cond_8
    :goto_6
    const-string v1, "auth"

    new-instance v3, Lcom/google/android/gms/internal/zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zza;-><init>(Lcom/google/android/gms/internal/zzj;)V

    invoke-static {v1, v8, v3}, Lcom/google/android/gms/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzl;Lcom/google/android/gms/internal/zzs;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "network"

    new-instance v2, Lcom/google/android/gms/internal/zzi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzi;-><init>()V

    goto :goto_7

    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/zzk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzk;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    const-string v1, "connection"

    new-instance v2, Lcom/google/android/gms/internal/zzr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzr;-><init>()V

    goto :goto_7

    :catch_8
    const-string v1, "socket"

    new-instance v2, Lcom/google/android/gms/internal/zzr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzr;-><init>()V

    :goto_7
    invoke-static {v1, v8, v2}, Lcom/google/android/gms/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzl;Lcom/google/android/gms/internal/zzs;)V

    goto/16 :goto_0
.end method
