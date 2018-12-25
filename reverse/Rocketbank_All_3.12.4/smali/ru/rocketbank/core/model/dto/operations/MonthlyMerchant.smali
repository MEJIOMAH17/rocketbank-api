.class public Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;
.super Ljava/lang/Object;
.source "MonthlyMerchant.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isEnable:Z

.field private merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

.field private percent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->isEnable:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->percent:I

    .line 16
    const-class v0, Lru/rocketbank/core/model/dto/operations/Merchant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Merchant;

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .line 32
    iget v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->percent:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->isEnable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->percent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
