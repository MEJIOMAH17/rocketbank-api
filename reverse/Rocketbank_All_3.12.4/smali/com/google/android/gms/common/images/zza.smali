.class public abstract Lcom/google/android/gms/common/images/zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/zza$zza;,
        Lcom/google/android/gms/common/images/zza$zzc;,
        Lcom/google/android/gms/common/images/zza$zzb;
    }
.end annotation


# instance fields
.field private zzaEA:Z

.field final zzaEu:Lcom/google/android/gms/common/images/zza$zza;

.field protected zzaEv:I

.field protected zzaEw:I

.field protected zzaEx:Z

.field private zzaEy:Z

.field private zzaEz:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEv:I

    iput v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEw:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEx:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zza;->zzaEy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEz:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zza;->zzaEA:Z

    new-instance v0, Lcom/google/android/gms/common/images/zza$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/zza$zza;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEu:Lcom/google/android/gms/common/images/zza$zza;

    iput p2, p0, Lcom/google/android/gms/common/images/zza;->zzaEw:I

    return-void
.end method

.method private zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzacd;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected zza(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/zzacb;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzacb;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzacb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzacb;->zzxs()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzacb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzacb;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzc;->zzt(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzacd;)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/common/images/zza;->zzaEA:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_0
    return-void
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzacd;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEw:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEw:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzacd;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract zza(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method protected zzc(ZZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->zzaEy:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzcO(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/images/zza;->zzaEw:I

    return-void
.end method
