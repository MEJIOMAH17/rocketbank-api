.class public final Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;
.super Ljava/lang/Object;
.source "Card2CardTransferResponseData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion;


# instance fields
.field private balance:D

.field private errors:Ljava/lang/String;

.field private html:Ljava/lang/String;

.field private id:I

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->Companion:Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion;

    .line 39
    new-instance v0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->id:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->status:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->errors:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->html:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->balance:D

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBalance()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->balance:D

    return-wide v0
.end method

.method public final getErrors()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->html:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 7
    iget v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->id:I

    return v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final setBalance(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->balance:D

    return-void
.end method

.method public final setErrors(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->errors:Ljava/lang/String;

    return-void
.end method

.method public final setHtml(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->html:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 7
    iput p1, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->id:I

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->status:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget p2, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->errors:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->html:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;->balance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
