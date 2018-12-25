.class public Lru/rocketbank/core/model/payments/Payment;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/payments/Payment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:F

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private providerId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lru/rocketbank/core/model/payments/Payment$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/payments/Payment$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/payments/Payment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/payments/Payment;->amount:F

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/payments/Payment;->id:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/payments/Payment;->providerId:I

    .line 27
    sget-object v0, Lru/rocketbank/core/model/provider/ProviderField;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/payments/Payment;->fields:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/payments/Payment;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 59
    instance-of v0, p1, Lru/rocketbank/core/model/payments/Payment;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/payments/Payment;

    iget v0, p1, Lru/rocketbank/core/model/payments/Payment;->providerId:I

    iget v1, p0, Lru/rocketbank/core/model/payments/Payment;->providerId:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lru/rocketbank/core/model/payments/Payment;->fields:Ljava/util/List;

    iget-object v0, p0, Lru/rocketbank/core/model/payments/Payment;->fields:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAmount()F
    .locals 1

    .line 63
    iget v0, p0, Lru/rocketbank/core/model/payments/Payment;->amount:F

    return v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/model/payments/Payment;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 67
    iget v0, p0, Lru/rocketbank/core/model/payments/Payment;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/model/payments/Payment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .line 71
    iget v0, p0, Lru/rocketbank/core/model/payments/Payment;->providerId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget p2, p0, Lru/rocketbank/core/model/payments/Payment;->amount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    iget p2, p0, Lru/rocketbank/core/model/payments/Payment;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget p2, p0, Lru/rocketbank/core/model/payments/Payment;->providerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p2, p0, Lru/rocketbank/core/model/payments/Payment;->fields:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 37
    iget-object p2, p0, Lru/rocketbank/core/model/payments/Payment;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
