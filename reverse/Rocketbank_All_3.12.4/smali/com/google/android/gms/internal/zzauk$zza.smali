.class Lcom/google/android/gms/internal/zzauk$zza;
.super Lcom/google/android/gms/measurement/AppMeasurement$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field public zzbvC:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzauk$zza;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauk$zza;->zzbqe:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqe:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauk$zza;->zzbqf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqf:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:J

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzauk$zza;->zzbvC:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbvC:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqe:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqf:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzauk$zza;->zzbvC:Z

    return-void
.end method
