.class public final Lcom/google/android/gms/internal/zzbyr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbys;
.implements Lcom/google/android/gms/internal/zzbyt;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final zzcxT:[B


# instance fields
.field zzaA:J

.field zzcxU:Lcom/google/android/gms/internal/zzbyx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzbyr;->zzcxT:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyr;->zzafT()Lcom/google/android/gms/internal/zzbyr;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbyr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbyr;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget v3, v1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget v4, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    :goto_0
    iget-wide v7, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    iget v7, v1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    move v3, v2

    :goto_1
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    iget-object v10, v1, Lcom/google/android/gms/internal/zzbyx;->data:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lcom/google/android/gms/internal/zzbyx;->data:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    :cond_5
    iget v3, v1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    if-ne v4, v3, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget v3, v1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iget v4, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    if-ne v9, v4, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget v4, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    add-long v9, v5, v7

    move-wide v5, v9

    goto :goto_0

    :cond_8
    return v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget v3, v0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/google/android/gms/internal/zzbyx;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public final read(Lcom/google/android/gms/internal/zzbyr;J)J
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    iget-wide p2, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzbyr;->write(Lcom/google/android/gms/internal/zzbyr;J)V

    return-wide p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyr;->zzafU()Lcom/google/android/gms/internal/zzbyu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lcom/google/android/gms/internal/zzbyr;J)V
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbzd;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget v0, v0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget v1, v1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzbyx;->zzcyb:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    int-to-long v1, v1

    add-long v3, p2, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    :goto_2
    int-to-long v1, v1

    sub-long v5, v3, v1

    const-wide/16 v1, 0x2000

    cmp-long v3, v5, v1

    if-gtz v3, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbyx;->zza(Lcom/google/android/gms/internal/zzbyx;I)V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    sub-long v2, v0, p2

    iput-wide v2, p1, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    add-long v2, v0, p2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    return-void

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbyx;->zzrz(I)Lcom/google/android/gms/internal/zzbyx;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget v1, v0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget v2, v0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyx;->zzafX()Lcom/google/android/gms/internal/zzbyx;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    if-nez v3, :cond_6

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iput-object v4, v0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbyx;->zza(Lcom/google/android/gms/internal/zzbyx;)Lcom/google/android/gms/internal/zzbyx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyx;->zzafY()V

    :goto_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    sub-long v5, v3, v1

    iput-wide v5, p1, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    sub-long v3, p2, v1

    move-wide p2, v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final zzafT()Lcom/google/android/gms/internal/zzbyr;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzbyr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyr;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbyx;-><init>(Lcom/google/android/gms/internal/zzbyx;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iput-object v3, v2, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbyr;->zzcxU:Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    new-instance v3, Lcom/google/android/gms/internal/zzbyx;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzbyx;-><init>(Lcom/google/android/gms/internal/zzbyx;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbyx;->zza(Lcom/google/android/gms/internal/zzbyx;)Lcom/google/android/gms/internal/zzbyx;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    return-object v0
.end method

.method public final zzafU()Lcom/google/android/gms/internal/zzbyu;
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbyr;->zzaA:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbyr;->zzry(I)Lcom/google/android/gms/internal/zzbyu;

    move-result-object v0

    return-object v0
.end method

.method public final zzry(I)Lcom/google/android/gms/internal/zzbyu;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzbyu;->zzcxW:Lcom/google/android/gms/internal/zzbyu;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbyz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbyz;-><init>(Lcom/google/android/gms/internal/zzbyr;I)V

    return-object v0
.end method
