.class public final Lcom/google/android/gms/internal/zzatg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field public final versionCode:I

.field public zzbqW:Ljava/lang/String;

.field public zzbqX:Lcom/google/android/gms/internal/zzauq;

.field public zzbqY:J

.field public zzbqZ:Z

.field public zzbra:Ljava/lang/String;

.field public zzbrb:Lcom/google/android/gms/internal/zzatq;

.field public zzbrc:J

.field public zzbrd:Lcom/google/android/gms/internal/zzatq;

.field public zzbre:J

.field public zzbrf:Lcom/google/android/gms/internal/zzatq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzath;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzath;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzatg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzatg;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzatg;->zzbrb:Lcom/google/android/gms/internal/zzatq;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzatg;->zzbrc:J

    iput-object p12, p0, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    iput-wide p13, p0, Lcom/google/android/gms/internal/zzatg;->zzbre:J

    iput-object p15, p0, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzatg;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzatg;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbrb:Lcom/google/android/gms/internal/zzatq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbrb:Lcom/google/android/gms/internal/zzatq;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbrc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbrc:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzatg;->zzbre:J

    iget-object p1, p1, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzatg;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzatg;->zzbrb:Lcom/google/android/gms/internal/zzatq;

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzatg;->zzbrc:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    iput-wide p12, p0, Lcom/google/android/gms/internal/zzatg;->zzbre:J

    iput-object p14, p0, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzath;->zza(Lcom/google/android/gms/internal/zzatg;Landroid/os/Parcel;I)V

    return-void
.end method
