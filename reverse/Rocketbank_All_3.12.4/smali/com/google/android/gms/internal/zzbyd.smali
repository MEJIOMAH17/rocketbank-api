.class public abstract Lcom/google/android/gms/internal/zzbyd;
.super Lcom/google/android/gms/internal/zzbyj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzbyd<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/zzbyj;"
    }
.end annotation


# instance fields
.field protected zzcwC:Lcom/google/android/gms/internal/zzbyf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyj;-><init>()V

    return-void
.end method

.method private zza(ILcom/google/android/gms/internal/zzbyl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbyf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyf;->zzrt(I)Lcom/google/android/gms/internal/zzbyg;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbyg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyg;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbyf;->zza(ILcom/google/android/gms/internal/zzbyg;)V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbyg;->zza(Lcom/google/android/gms/internal/zzbyl;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyd;->zzafp()Lcom/google/android/gms/internal/zzbyd;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbye;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbye<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    iget v2, p1, Lcom/google/android/gms/internal/zzbye;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbym;->zzrx(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbyf;->zzrt(I)Lcom/google/android/gms/internal/zzbyg;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyg;->zzb(Lcom/google/android/gms/internal/zzbye;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbyf;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbyf;->zzru(I)Lcom/google/android/gms/internal/zzbyg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbyg;->zza(Lcom/google/android/gms/internal/zzbyc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzbyb;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbyb;->zzrd(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbym;->zzrx(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbyb;->zzI(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzbyl;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/zzbyl;-><init>(I[B)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzbyd;->zza(ILcom/google/android/gms/internal/zzbyl;)V

    const/4 p1, 0x1

    return p1
.end method

.method public zzafp()Lcom/google/android/gms/internal/zzbyd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbyj;->zzafq()Lcom/google/android/gms/internal/zzbyj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbyd;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbyh;->zza(Lcom/google/android/gms/internal/zzbyd;Lcom/google/android/gms/internal/zzbyd;)V

    return-object v0
.end method

.method public synthetic zzafq()Lcom/google/android/gms/internal/zzbyj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbyd;

    return-object v0
.end method

.method protected zzu()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbyf;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyd;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbyf;->zzru(I)Lcom/google/android/gms/internal/zzbyg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbyg;->zzu()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
