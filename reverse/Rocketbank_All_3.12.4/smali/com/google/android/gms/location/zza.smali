.class public Lcom/google/android/gms/location/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTag:Ljava/lang/String;

.field private zzaiu:Ljava/lang/String;

.field private zzbjj:J

.field private zzbjk:Z

.field private zzbjl:Landroid/os/WorkSource;

.field private zzbjm:[I

.field private zzbjn:Z

.field private final zzbjo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JZLandroid/os/WorkSource;Ljava/lang/String;[IZLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/location/zza;->zzbjj:J

    iput-boolean p3, p0, Lcom/google/android/gms/location/zza;->zzbjk:Z

    iput-object p4, p0, Lcom/google/android/gms/location/zza;->zzbjl:Landroid/os/WorkSource;

    iput-object p5, p0, Lcom/google/android/gms/location/zza;->mTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/location/zza;->zzbjm:[I

    iput-boolean p7, p0, Lcom/google/android/gms/location/zza;->zzbjn:Z

    iput-object p8, p0, Lcom/google/android/gms/location/zza;->zzaiu:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/location/zza;->zzbjo:J

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->zzaiu:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/zza;->zzbjj:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzb;->zza(Lcom/google/android/gms/location/zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/zza;->zzbjk:Z

    return v0
.end method

.method public zzHY()Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->zzbjl:Landroid/os/WorkSource;

    return-object v0
.end method

.method public zzHZ()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->zzbjm:[I

    return-object v0
.end method

.method public zzIa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/zza;->zzbjn:Z

    return v0
.end method

.method public zzIb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/zza;->zzbjo:J

    return-wide v0
.end method
