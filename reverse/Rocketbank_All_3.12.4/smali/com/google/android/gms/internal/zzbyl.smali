.class final Lcom/google/android/gms/internal/zzbyl;
.super Ljava/lang/Object;


# instance fields
.field final tag:I

.field final zzbyc:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbyl;->tag:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbyl;->zzbyc:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbyl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbyl;

    iget v1, p0, Lcom/google/android/gms/internal/zzbyl;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbyl;->tag:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyl;->zzbyc:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbyl;->zzbyc:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbyl;->tag:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyl;->zzbyc:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method final zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbyl;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbyc;->zzrp(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyl;->zzbyc:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbyc;->zzak([B)V

    return-void
.end method

.method final zzu()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbyl;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbyc;->zzrq(I)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyl;->zzbyc:[B

    array-length v0, v0

    add-int/2addr v1, v0

    return v1
.end method
