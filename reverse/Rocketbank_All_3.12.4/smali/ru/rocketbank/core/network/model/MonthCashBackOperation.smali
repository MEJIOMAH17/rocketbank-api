.class public Lru/rocketbank/core/network/model/MonthCashBackOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "MonthCashBackOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/MonthCashBackOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Ljava/lang/String;

.field private discountId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_id"
    .end annotation
.end field

.field private happenedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "happened_at"
    .end annotation
.end field

.field private image:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lru/rocketbank/core/network/model/MonthCashBackOperation$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/MonthCashBackOperation$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->color:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->discountId:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->happenedAt:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->image:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountId()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->discountId:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->image:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 35
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget-object p2, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-wide v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->discountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v0, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->happenedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object p2, p0, Lru/rocketbank/core/network/model/MonthCashBackOperation;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
