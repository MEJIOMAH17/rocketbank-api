.class public final Lru/rocketbank/core/network/model/CardBody;
.super Ljava/lang/Object;
.source "CardBody.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/CardBody$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/CardBody;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/CardBody$Companion;


# instance fields
.field private cardId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linked_card_id"
    .end annotation
.end field

.field private cardNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_card"
    .end annotation
.end field

.field private cvv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cvv"
    .end annotation
.end field

.field private expiryMonth:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field private expiryYear:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/CardBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/CardBody$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/CardBody;->Companion:Lru/rocketbank/core/network/model/CardBody$Companion;

    .line 49
    new-instance v0, Lru/rocketbank/core/network/model/CardBody$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/CardBody$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/network/model/CardBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->cardId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->cardNumber:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->expiryMonth:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->expiryYear:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/CardBody;->cvv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCardId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getCvv()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryMonth()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->expiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryYear()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/network/model/CardBody;->expiryYear:Ljava/lang/String;

    return-object v0
.end method

.method public final setCardId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/network/model/CardBody;->cardId:Ljava/lang/String;

    return-void
.end method

.method public final setCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/network/model/CardBody;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public final setCvv(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/network/model/CardBody;->cvv:Ljava/lang/String;

    return-void
.end method

.method public final setExpiryMonth(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/network/model/CardBody;->expiryMonth:Ljava/lang/String;

    return-void
.end method

.method public final setExpiryYear(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/network/model/CardBody;->expiryYear:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 14
    iget-object p2, p0, Lru/rocketbank/core/network/model/CardBody;->cardId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lru/rocketbank/core/network/model/CardBody;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lru/rocketbank/core/network/model/CardBody;->expiryMonth:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lru/rocketbank/core/network/model/CardBody;->expiryYear:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lru/rocketbank/core/network/model/CardBody;->cvv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
