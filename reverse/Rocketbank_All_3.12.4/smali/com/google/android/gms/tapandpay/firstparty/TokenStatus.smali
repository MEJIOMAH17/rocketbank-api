.class public final Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbOG:Lcom/google/android/gms/tapandpay/firstparty/zzu;

.field zzbOH:I

.field zzbOI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/tapandpay/firstparty/zzu;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOG:Lcom/google/android/gms/tapandpay/firstparty/zzu;

    iput p3, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOH:I

    iput-boolean p4, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOI:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOG:Lcom/google/android/gms/tapandpay/firstparty/zzu;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOG:Lcom/google/android/gms/tapandpay/firstparty/zzu;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOH:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOH:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOI:Z

    iget-boolean p1, p1, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOI:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOG:Lcom/google/android/gms/tapandpay/firstparty/zzu;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOI:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenReference"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOG:Lcom/google/android/gms/tapandpay/firstparty/zzu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenState"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "isSelected"

    iget-boolean v2, p0, Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;->zzbOI:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/firstparty/zzw;->zza(Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;Landroid/os/Parcel;I)V

    return-void
.end method
