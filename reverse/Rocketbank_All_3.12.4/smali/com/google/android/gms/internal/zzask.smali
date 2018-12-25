.class public Lcom/google/android/gms/internal/zzask;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPendingIntent:Landroid/app/PendingIntent;

.field zzbkO:I

.field zzbkP:Lcom/google/android/gms/internal/zzasi;

.field zzbkQ:Lcom/google/android/gms/location/zzk;

.field zzbkR:Lcom/google/android/gms/location/zzj;

.field zzbkS:Lcom/google/android/gms/internal/zzasc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzasl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzasl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzask;->zzbkO:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzask;->zzbkP:Lcom/google/android/gms/internal/zzasi;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/location/zzk$zza;->zzde(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzk;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzask;->zzbkQ:Lcom/google/android/gms/location/zzk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzask;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p5, :cond_1

    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-static {p5}, Lcom/google/android/gms/location/zzj$zza;->zzdd(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzj;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/zzask;->zzbkR:Lcom/google/android/gms/location/zzj;

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p6}, Lcom/google/android/gms/internal/zzasc$zza;->zzdg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzasc;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzask;->zzbkS:Lcom/google/android/gms/internal/zzasc;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzasi;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzask;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzask;-><init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzask;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzj;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzask;-><init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/location/zzk;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzask;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzk;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzask;-><init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static zza(Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzask;

    invoke-interface {p0}, Lcom/google/android/gms/location/zzj;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    move-object v6, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzask;-><init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static zza(Lcom/google/android/gms/location/zzk;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzask;

    invoke-interface {p0}, Lcom/google/android/gms/location/zzk;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    move-object v6, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzask;-><init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzask;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzask;-><init>(ILcom/google/android/gms/internal/zzasi;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzasl;->zza(Lcom/google/android/gms/internal/zzask;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzIr()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzask;->zzbkQ:Lcom/google/android/gms/location/zzk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzask;->zzbkQ:Lcom/google/android/gms/location/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzIs()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzask;->zzbkR:Lcom/google/android/gms/location/zzj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzask;->zzbkR:Lcom/google/android/gms/location/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzIt()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzask;->zzbkS:Lcom/google/android/gms/internal/zzasc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzask;->zzbkS:Lcom/google/android/gms/internal/zzasc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
