.class public Lcom/google/android/gms/tapandpay/firstparty/zzt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaHE:I

.field final zzaiI:I

.field final zzbOC:I

.field final zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt$1;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzt$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)V

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    iput p3, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOC:I

    iput-object p4, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    return-void
.end method

.method private constructor <init>(II[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(III[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)V

    return-void
.end method

.method public static zzTG()Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II)V

    return-object v0
.end method

.method public static zzTH()Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II)V

    return-object v0
.end method

.method public static zzTI()Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II)V

    return-object v0
.end method

.method public static zza([Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)V

    return-object v0
.end method

.method public static zznZ(I)Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II)V

    return-object v0
.end method

.method public static zzoa(I)Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/tapandpay/firstparty/zzt;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/tapandpay/firstparty/zzt;

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOC:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    iget-object p1, p1, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "mEventType"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "mFailedReason"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "mValuableInfos"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzaHE:I

    const/16 v0, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown eventType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOC:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :pswitch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzbOD:[Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
