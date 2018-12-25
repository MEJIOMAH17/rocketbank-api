.class public Lru/rocketbank/core/model/dto/operations/Miles;
.super Ljava/lang/Object;
.source "Miles.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/Miles;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_COMPLETED:Ljava/lang/String; = "completed"

.field public static final STATUS_CONFIRMED:Ljava/lang/String; = "confirmed"


# instance fields
.field private amount:F

.field private enoughMiles:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enough_miles"
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lru/rocketbank/core/model/dto/operations/Miles$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/Miles$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/Miles;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/dto/operations/Miles;->amount:F

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/dto/operations/Miles;->enoughMiles:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Miles;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()F
    .locals 1

    .line 56
    iget v0, p0, Lru/rocketbank/core/model/dto/operations/Miles;->amount:F

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Miles;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isEnoughMiles()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lru/rocketbank/core/model/dto/operations/Miles;->enoughMiles:Z

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 60
    iput p1, p0, Lru/rocketbank/core/model/dto/operations/Miles;->amount:F

    return-void
.end method

.method public setEnoughMiles(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lru/rocketbank/core/model/dto/operations/Miles;->enoughMiles:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Miles;->status:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget p2, p0, Lru/rocketbank/core/model/dto/operations/Miles;->amount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    iget-boolean p2, p0, Lru/rocketbank/core/model/dto/operations/Miles;->enoughMiles:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Miles;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
