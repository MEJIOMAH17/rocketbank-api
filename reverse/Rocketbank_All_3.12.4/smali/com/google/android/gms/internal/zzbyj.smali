.class public abstract Lcom/google/android/gms/internal/zzbyj;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzcwL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbyj;->zzcwL:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzbyj;[B)Lcom/google/android/gms/internal/zzbyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzbyj;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbyi;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzbyj;->zzb(Lcom/google/android/gms/internal/zzbyj;[BII)Lcom/google/android/gms/internal/zzbyj;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzbyj;[BII)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzbyc;->zzc([BII)Lcom/google/android/gms/internal/zzbyc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbyj;->zza(Lcom/google/android/gms/internal/zzbyc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyc;->zzafo()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzbyj;[BII)Lcom/google/android/gms/internal/zzbyj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzbyj;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbyi;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzbyb;->zzb([BII)Lcom/google/android/gms/internal/zzbyb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbyj;->zzb(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzbyj;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbyb;->zzrc(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbyi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/zzbyj;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyj;->zzafB()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzbyj;->zza(Lcom/google/android/gms/internal/zzbyj;[BII)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyj;->zzafq()Lcom/google/android/gms/internal/zzbyj;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbyk;->zzg(Lcom/google/android/gms/internal/zzbyj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public zzafA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbyj;->zzcwL:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyj;->zzafB()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbyj;->zzcwL:I

    return v0
.end method

.method public zzafB()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyj;->zzu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbyj;->zzcwL:I

    return v0
.end method

.method public zzafq()Lcom/google/android/gms/internal/zzbyj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbyj;

    return-object v0
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzbyj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected zzu()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
