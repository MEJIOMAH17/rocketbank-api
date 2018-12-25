.class public final Lru/rocketbank/core/model/PhoneModel;
.super Ljava/lang/Object;
.source "PhoneModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/PhoneModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private operator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operator"
    .end annotation
.end field

.field private providerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lru/rocketbank/core/model/PhoneModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/PhoneModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/PhoneModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/PhoneModel;->number:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/PhoneModel;->operator:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/PhoneModel;->providerId:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lru/rocketbank/core/model/PhoneModel$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/PhoneModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/model/PhoneModel;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperator()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/PhoneModel;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public final getProviderId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lru/rocketbank/core/model/PhoneModel;->providerId:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 56
    iget-object p2, p0, Lru/rocketbank/core/model/PhoneModel;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lru/rocketbank/core/model/PhoneModel;->operator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-wide v0, p0, Lru/rocketbank/core/model/PhoneModel;->providerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
