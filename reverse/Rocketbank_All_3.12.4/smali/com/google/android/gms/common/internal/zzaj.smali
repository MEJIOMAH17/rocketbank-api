.class public final Lcom/google/android/gms/common/internal/zzaj;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf<",
        "Lcom/google/android/gms/common/internal/zzy;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzaGI:Lcom/google/android/gms/common/internal/zzaj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzaj;->zzaGI:Lcom/google/android/gms/common/internal/zzaj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzd(Landroid/content/Context;II)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzf$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/zzaj;->zzaGI:Lcom/google/android/gms/common/internal/zzaj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzaj;->zze(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private zze(Landroid/content/Context;II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzf$zza;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzah;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/common/internal/zzah;-><init>(II[Lcom/google/android/gms/common/api/Scope;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzaj;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zzy;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/common/internal/zzy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/common/internal/zzah;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/dynamic/zzf$zza;

    const/16 v1, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not get button with size "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and color "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/dynamic/zzf$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final zzby(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzy;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzy$zza;->zzbx(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzy;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzaj;->zzby(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzy;

    move-result-object p1

    return-object p1
.end method
