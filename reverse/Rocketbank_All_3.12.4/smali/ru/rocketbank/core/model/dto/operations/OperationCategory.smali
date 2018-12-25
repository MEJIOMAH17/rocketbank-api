.class public Lru/rocketbank/core/model/dto/operations/OperationCategory;
.super Ljava/lang/Object;
.source "OperationCategory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/OperationCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation
.end field

.field private fullName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full_name"
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private spent:Lru/rocketbank/core/model/MoneyData;

.field private subIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_icon"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationCategory$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/OperationCategory$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->id:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->fullName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->icon:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->subIcon:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->displayName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->name:Ljava/lang/String;

    .line 35
    const-class v0, Lru/rocketbank/core/model/MoneyData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/MoneyData;

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->spent:Lru/rocketbank/core/model/MoneyData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpent()Lru/rocketbank/core/model/MoneyData;
    .locals 1

    .line 115
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->spent:Lru/rocketbank/core/model/MoneyData;

    return-object v0
.end method

.method public getSubIcon()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->subIcon:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public setSpent(Lru/rocketbank/core/model/MoneyData;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->spent:Lru/rocketbank/core/model/MoneyData;

    return-void
.end method

.method public setSubIcon(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->subIcon:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 40
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->subIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationCategory;->spent:Lru/rocketbank/core/model/MoneyData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
