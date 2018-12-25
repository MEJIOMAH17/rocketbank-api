.class public Lru/rocketbank/core/model/ChangeMobilePhone;
.super Lru/rocketbank/core/model/dto/ChangeCheckCard;
.source "ChangeMobilePhone.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/ChangeMobilePhone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private phoneText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lru/rocketbank/core/model/ChangeMobilePhone$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/ChangeMobilePhone$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/ChangeMobilePhone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/ChangeCheckCard;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/dto/ChangeCheckCard;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/ChangeMobilePhone;->phoneText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/ChangeMobilePhone;->phoneText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/dto/ChangeCheckCard;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object p2, p0, Lru/rocketbank/core/model/ChangeMobilePhone;->phoneText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
