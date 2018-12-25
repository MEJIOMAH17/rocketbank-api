.class public abstract Lru/rocketbank/core/model/dto/ChangeCheckCard;
.super Ljava/lang/Object;
.source "ChangeCheckCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private checkCard:Lru/rocketbank/core/model/dto/CheckCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_card"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/CheckCardData;

    iput-object p1, p0, Lru/rocketbank/core/model/dto/ChangeCheckCard;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/dto/ChangeCheckCard;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 29
    iget-object p2, p0, Lru/rocketbank/core/model/dto/ChangeCheckCard;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
