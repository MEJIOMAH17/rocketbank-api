.class Lcom/google/android/gms/internal/zzasg$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabh$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzasg$zzb;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzabh$zzc<",
        "Lcom/google/android/gms/location/LocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbkI:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasg$zzb;Landroid/location/Location;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzasg$zzb$1;->zzbkI:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg$zzb$1;->zzbkI:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzasg$zzb$1;->zza(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public zzwc()V
    .locals 0

    return-void
.end method
