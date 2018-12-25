.class public final Lcom/google/android/gms/internal/zzatq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzatq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field public final zzbqW:Ljava/lang/String;

.field public final zzbrH:Lcom/google/android/gms/internal/zzato;

.field public final zzbrI:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzatr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzatr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzatq;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    add-int/2addr v4, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "origin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzatr;->zza(Lcom/google/android/gms/internal/zzatq;Landroid/os/Parcel;I)V

    return-void
.end method
