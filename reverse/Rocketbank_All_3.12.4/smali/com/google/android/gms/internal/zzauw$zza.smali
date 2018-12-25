.class public final Lcom/google/android/gms/internal/zzauw$zza;
.super Lcom/google/android/gms/internal/zzbyd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbyd<",
        "Lcom/google/android/gms/internal/zzauw$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwW:[Lcom/google/android/gms/internal/zzauw$zza;


# instance fields
.field public zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

.field public zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

.field public zzbwZ:Ljava/lang/Boolean;

.field public zzbwn:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyd;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw$zza;->zzNB()Lcom/google/android/gms/internal/zzauw$zza;

    return-void
.end method

.method public static zzNA()[Lcom/google/android/gms/internal/zzauw$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:[Lcom/google/android/gms/internal/zzauw$zza;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbyh;->zzcwK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:[Lcom/google/android/gms/internal/zzauw$zza;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzauw$zza;

    sput-object v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:[Lcom/google/android/gms/internal/zzauw$zza;

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
    sget-object v0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:[Lcom/google/android/gms/internal/zzauw$zza;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzauw$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzauw$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauw$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauw$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyf;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauw$zzf;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauw$zzf;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbyf;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v1, v2

    return v1
.end method

.method public final zzNB()Lcom/google/android/gms/internal/zzauw$zza;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwC:Lcom/google/android/gms/internal/zzbyf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcwL:I

    return-object p0
.end method

.method public final zzP(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzauw$zza;
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

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbyd;->zza(Lcom/google/android/gms/internal/zzbyb;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzafc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbyb;->zza(Lcom/google/android/gms/internal/zzbyj;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbyb;->zzafa()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzJ(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zza(ILcom/google/android/gms/internal/zzbyj;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zza(ILcom/google/android/gms/internal/zzbyj;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbyc;->zzg(IZ)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauw$zza;->zzP(Lcom/google/android/gms/internal/zzbyb;)Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object p1

    return-object p1
.end method

.method protected final zzu()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbyd;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwn:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwX:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(ILcom/google/android/gms/internal/zzbyj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwY:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzc(ILcom/google/android/gms/internal/zzbyj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwZ:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbyc;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
