.class public Lcom/samsung/android/sdk/samsungpay/v2/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/Status$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/Status$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    .line 34
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mData:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/Status;->readFromParacel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParacel(Landroid/os/Parcel;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    return v0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mData:Landroid/os/Bundle;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status{mStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 118
    iget p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/Status;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
