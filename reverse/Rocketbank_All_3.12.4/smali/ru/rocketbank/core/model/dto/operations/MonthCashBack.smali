.class public Lru/rocketbank/core/model/dto/operations/MonthCashBack;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "MonthCashBack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/MonthCashBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private monthlyMerchants:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchants"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lru/rocketbank/core/model/dto/operations/MonthCashBack$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/MonthCashBack$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->count:I

    .line 25
    sget-object v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->monthlyMerchants:Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 55
    iget v0, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->count:I

    return v0
.end method

.method public getMonthlyMerchants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->monthlyMerchants:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget p2, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->monthlyMerchants:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 34
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
