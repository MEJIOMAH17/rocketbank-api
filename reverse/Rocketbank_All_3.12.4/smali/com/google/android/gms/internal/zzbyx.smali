.class final Lcom/google/android/gms/internal/zzbyx;
.super Ljava/lang/Object;


# instance fields
.field final data:[B

.field limit:I

.field pos:I

.field zzcya:Z

.field zzcyb:Z

.field zzcyc:Lcom/google/android/gms/internal/zzbyx;

.field zzcyd:Lcom/google/android/gms/internal/zzbyx;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbyx;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iget v1, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget v2, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzbyx;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyb:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbyx;)Lcom/google/android/gms/internal/zzbyx;
    .locals 1

    iput-object p0, p1, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbyx;I)V
    .locals 5

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbyx;->zzcyb:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    add-int/2addr v0, p2

    iget v2, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iget v1, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iget v3, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget v4, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget v1, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iput v4, p1, Lcom/google/android/gms/internal/zzbyx;->pos:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iget v3, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget p1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    return-void
.end method

.method public final zzafX()Lcom/google/android/gms/internal/zzbyx;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iput-object v3, v2, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iput-object v3, v2, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    return-object v0
.end method

.method public final zzafY()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzbyx;->zzcyb:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iget v1, v1, Lcom/google/android/gms/internal/zzbyx;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    iget v2, v2, Lcom/google/android/gms/internal/zzbyx;->pos:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzbyx;->zza(Lcom/google/android/gms/internal/zzbyx;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyx;->zzafX()Lcom/google/android/gms/internal/zzbyx;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbyy;->zzb(Lcom/google/android/gms/internal/zzbyx;)V

    return-void
.end method

.method public final zzrz(I)Lcom/google/android/gms/internal/zzbyx;
    .locals 5

    if-lez p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbyx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbyx;-><init>(Lcom/google/android/gms/internal/zzbyx;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbyy;->zzafZ()Lcom/google/android/gms/internal/zzbyx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzbyx;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbyx;->zza(Lcom/google/android/gms/internal/zzbyx;)Lcom/google/android/gms/internal/zzbyx;

    return-object v0

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
