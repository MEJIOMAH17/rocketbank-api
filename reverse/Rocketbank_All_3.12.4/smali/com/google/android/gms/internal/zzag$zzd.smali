.class public final Lcom/google/android/gms/internal/zzag$zzd;
.super Lcom/google/android/gms/internal/zzbyd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbyd<",
        "Lcom/google/android/gms/internal/zzag$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public data:[B

.field public zzcv:[B

.field public zzcw:[B

.field public zzcx:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcwL:I

    return-void
.end method

.method public static zze([B)Lcom/google/android/gms/internal/zzag$zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbyi;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzag$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzag$zzd;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbyj;->zza(Lcom/google/android/gms/internal/zzbyj;[B)Lcom/google/android/gms/internal/zzbyj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzag$zzd;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzb(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzb(I[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzb(I[B)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzb(I[B)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbyd;->zza(Lcom/google/android/gms/internal/zzbyc;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzbyj;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzag$zzd;->zzk(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzag$zzd;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzag$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzaeW()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbyd;->zza(Lcom/google/android/gms/internal/zzbyb;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method protected final zzu()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbyd;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
