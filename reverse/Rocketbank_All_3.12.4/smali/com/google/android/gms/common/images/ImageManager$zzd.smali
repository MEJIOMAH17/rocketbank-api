.class final Lcom/google/android/gms/common/images/ImageManager$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzd"
.end annotation


# instance fields
.field private final zzaEk:Lcom/google/android/gms/common/images/ImageManager$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzaEk:Lcom/google/android/gms/common/images/ImageManager$zza;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzaEk:Lcom/google/android/gms/common/images/ImageManager$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$zza;->evictAll()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzaEk:Lcom/google/android/gms/common/images/ImageManager$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/ImageManager$zza;->evictAll()V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzaEk:Lcom/google/android/gms/common/images/ImageManager$zza;

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzaEk:Lcom/google/android/gms/common/images/ImageManager$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$zza;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/images/ImageManager$zza;->trimToSize(I)V

    :cond_1
    return-void
.end method
