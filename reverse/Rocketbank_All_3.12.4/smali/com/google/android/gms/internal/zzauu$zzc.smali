.class public final Lcom/google/android/gms/internal/zzauu$zzc;
.super Lcom/google/android/gms/internal/zzbyd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbyd<",
        "Lcom/google/android/gms/internal/zzauu$zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbww:[Lcom/google/android/gms/internal/zzauu$zzc;


# instance fields
.field public zzbwA:Ljava/lang/String;

.field public zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

.field public zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

.field public zzbwz:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyd;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zzc;->zzNq()Lcom/google/android/gms/internal/zzauu$zzc;

    return-void
.end method

.method public static zzNp()[Lcom/google/android/gms/internal/zzauu$zzc;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbyh;->zzcwK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzauu$zzc;

    sput-object v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:[Lcom/google/android/gms/internal/zzauu$zzc;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:[Lcom/google/android/gms/internal/zzauu$zzc;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzauu$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauu$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauu$zzd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyf;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    return v0

    :cond_c
    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauu$zzf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauu$zzd;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyf;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v1, v2

    return v1
.end method

.method public final zzI(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzauu$zzc;
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

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbyd;->zza(Lcom/google/android/gms/internal/zzbyb;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzafc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauu$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauu$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbyb;->zza(Lcom/google/android/gms/internal/zzbyj;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final zzNq()Lcom/google/android/gms/internal/zzauu$zzc;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcwL:I

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zza(ILcom/google/android/gms/internal/zzbyj;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zza(ILcom/google/android/gms/internal/zzbyj;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzg(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzq(ILjava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zzc;->zzI(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzauu$zzc;

    move-result-object p1

    return-object p1
.end method

.method protected final zzu()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbyd;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(ILcom/google/android/gms/internal/zzbyj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwy:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(ILcom/google/android/gms/internal/zzbyj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
