.class public final Lcom/google/android/gms/internal/zzauw$zzb;
.super Lcom/google/android/gms/internal/zzbyd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbyd<",
        "Lcom/google/android/gms/internal/zzauw$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbxa:[Lcom/google/android/gms/internal/zzauw$zzb;


# instance fields
.field public count:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

.field public zzbxc:Ljava/lang/Long;

.field public zzbxd:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyd;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw$zzb;->zzND()Lcom/google/android/gms/internal/zzauw$zzb;

    return-void
.end method

.method public static zzNC()[Lcom/google/android/gms/internal/zzauw$zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:[Lcom/google/android/gms/internal/zzauw$zzb;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbyh;->zzcwK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:[Lcom/google/android/gms/internal/zzauw$zzb;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzauw$zzb;

    sput-object v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:[Lcom/google/android/gms/internal/zzauw$zzb;

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
    sget-object v0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:[Lcom/google/android/gms/internal/zzauw$zzb;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbyh;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyf;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v1, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_d
    return v2

    :cond_e
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbyh;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyf;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v1, v2

    return v1
.end method

.method public final zzND()Lcom/google/android/gms/internal/zzauw$zzb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzauw$zzc;->zzNE()[Lcom/google/android/gms/internal/zzauw$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzcwL:I

    return-object p0
.end method

.method public final zzQ(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzauw$zzb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzaeW()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbyd;->zza(Lcom/google/android/gms/internal/zzbyb;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzafa()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzaeZ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzaeZ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbym;->zzb(Lcom/google/android/gms/internal/zzbyb;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauw$zzc;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbyb;->zza(Lcom/google/android/gms/internal/zzbyj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzaeW()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbyb;->zza(Lcom/google/android/gms/internal/zzbyj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbyc;->zza(ILcom/google/android/gms/internal/zzbyj;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzq(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzb(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzb(IJ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzJ(II)V

    :cond_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauw$zzb;->zzQ(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzauw$zzb;

    move-result-object p1

    return-object p1
.end method

.method protected final zzu()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbyd;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(ILcom/google/android/gms/internal/zzbyj;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbyc;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbyc;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
