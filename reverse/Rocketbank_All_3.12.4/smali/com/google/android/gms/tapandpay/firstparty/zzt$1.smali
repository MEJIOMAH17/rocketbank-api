.class final Lcom/google/android/gms/tapandpay/firstparty/zzt$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tapandpay/firstparty/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/tapandpay/firstparty/zzt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tapandpay/firstparty/zzt$1;->zzjJ(Landroid/os/Parcel;)Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tapandpay/firstparty/zzt$1;->zzob(I)[Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1
.end method

.method public final zzjJ(Landroid/os/Parcel;)Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown eventType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzoa(I)Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzTI()Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zznZ(I)Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzTH()Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;

    invoke-static {p1}, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zza([Lcom/google/android/gms/tapandpay/firstparty/ValuableInfo;)Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {}, Lcom/google/android/gms/tapandpay/firstparty/zzt;->zzTG()Lcom/google/android/gms/tapandpay/firstparty/zzt;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzob(I)[Lcom/google/android/gms/tapandpay/firstparty/zzt;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/tapandpay/firstparty/zzt;

    return-object p1
.end method
