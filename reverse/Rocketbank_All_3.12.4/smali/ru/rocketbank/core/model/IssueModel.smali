.class public final Lru/rocketbank/core/model/IssueModel;
.super Ljava/lang/Object;
.source "IssueModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/IssueModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivery_scheduled"
    .end annotation
.end field

.field private pin:Lru/rocketbank/core/model/dto/ChangePin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pin"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lru/rocketbank/core/model/IssueModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/IssueModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/IssueModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-class v0, Lru/rocketbank/core/model/DeliveryScheduledModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/DeliveryScheduledModel;

    iput-object v0, p0, Lru/rocketbank/core/model/IssueModel;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledModel;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/IssueModel;->currency:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/IssueModel;->status:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/IssueModel;->title:Ljava/lang/String;

    .line 71
    const-class v0, Lru/rocketbank/core/model/dto/ChangePin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/ChangePin;

    iput-object p1, p0, Lru/rocketbank/core/model/IssueModel;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrency()Lru/rocketbank/core/model/enums/Currency;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/IssueModel;->currency:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Currency;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    return-object v0
.end method

.method public final getDeliveryScheduled()Lru/rocketbank/core/model/DeliveryScheduledModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/IssueModel;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledModel;

    return-object v0
.end method

.method public final getPin()Lru/rocketbank/core/model/dto/ChangePin;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/IssueModel;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    return-object v0
.end method

.method public final getStatus()Lru/rocketbank/core/model/enums/StatusIssue;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/model/IssueModel;->status:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/StatusIssue;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/StatusIssue;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/model/IssueModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 56
    iget-object p2, p0, Lru/rocketbank/core/model/IssueModel;->deliveryScheduled:Lru/rocketbank/core/model/DeliveryScheduledModel;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object p2, p0, Lru/rocketbank/core/model/IssueModel;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lru/rocketbank/core/model/IssueModel;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lru/rocketbank/core/model/IssueModel;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/core/model/IssueModel;->pin:Lru/rocketbank/core/model/dto/ChangePin;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
