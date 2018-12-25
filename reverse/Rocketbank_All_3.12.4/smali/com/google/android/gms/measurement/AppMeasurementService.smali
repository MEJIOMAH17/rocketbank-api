.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/zzaum$zza;


# instance fields
.field private zzbqj:Lcom/google/android/gms/internal/zzaum;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private zzJT()Lcom/google/android/gms/internal/zzaum;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzbqj:Lcom/google/android/gms/internal/zzaum;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaum;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaum;-><init>(Lcom/google/android/gms/internal/zzaum$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzbqj:Lcom/google/android/gms/internal/zzaum;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zzbqj:Lcom/google/android/gms/internal/zzaum;

    return-object v0
.end method


# virtual methods
.method public final callServiceStopSelfResult(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzJT()Lcom/google/android/gms/internal/zzaum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaum;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzJT()Lcom/google/android/gms/internal/zzaum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaum;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzJT()Lcom/google/android/gms/internal/zzaum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaum;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzJT()Lcom/google/android/gms/internal/zzaum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaum;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzJT()Lcom/google/android/gms/internal/zzaum;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaum;->onStartCommand(Landroid/content/Intent;II)I

    invoke-static {p1}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    const/4 p1, 0x2

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzJT()Lcom/google/android/gms/internal/zzaum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaum;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
