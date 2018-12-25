.class public final Lru/rocketbank/core/model/CardModel;
.super Ljava/lang/Object;
.source "CardModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/CardModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardModel.kt\nru/rocketbank/core/model/CardModel\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,120:1\n7#2,4:121\n*E\n*S KotlinDebug\n*F\n+ 1 CardModel.kt\nru/rocketbank/core/model/CardModel\n*L\n118#1,4:121\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/CardModel$Companion;


# instance fields
.field private bank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank"
    .end annotation
.end field

.field private feedIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feed_icon_url"
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private pan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pan"
    .end annotation
.end field

.field private small2xUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small2x_url"
    .end annotation
.end field

.field private stringColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/CardModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/CardModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/CardModel;->Companion:Lru/rocketbank/core/model/CardModel$Companion;

    .line 121
    new-instance v0, Lru/rocketbank/core/model/CardModel$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/CardModel$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 124
    sput-object v0, Lru/rocketbank/core/model/CardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->bank:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->stringColor:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->image:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->logo:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->pan:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->feedIconUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->small2xUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
    .locals 1

    const-string v0, "transfersModelUrFiz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->bank:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->bank:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->color:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->stringColor:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->image:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->image:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->logo:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->logo:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->pan:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->pan:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->title:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->title:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->token:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object v0, v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->feedIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/CardModel;->feedIconUrl:Ljava/lang/String;

    .line 52
    iget-object p1, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iget-object p1, p1, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->small2xUrl:Ljava/lang/String;

    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->small2xUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 85
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/model/CardModel;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 93
    :cond_1
    instance-of v2, p1, Lru/rocketbank/core/model/CardModel;

    if-eqz v2, :cond_5

    .line 95
    check-cast p1, Lru/rocketbank/core/model/CardModel;

    iget-object v2, p1, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    iget-object v3, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    if-nez v2, :cond_2

    return v1

    .line 99
    :cond_2
    iget-object v1, p1, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    if-nez v1, :cond_3

    return v0

    .line 103
    :cond_3
    iget-object v1, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    if-nez v1, :cond_4

    return v0

    .line 107
    :cond_4
    iget-object p1, p1, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final getBank()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor()I
    .locals 2

    .line 114
    sget-object v0, Lru/rocketbank/core/model/ModelTools;->INSTANCE:Lru/rocketbank/core/model/ModelTools;

    iget-object v1, p0, Lru/rocketbank/core/model/CardModel;->stringColor:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/ModelTools;->formatColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getFeedIconUrl()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->feedIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPan()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmall2xUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->small2xUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStringColor()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->stringColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setBank(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->bank:Ljava/lang/String;

    return-void
.end method

.method public final setFeedIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->feedIconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->image:Ljava/lang/String;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->logo:Ljava/lang/String;

    return-void
.end method

.method public final setPan(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->pan:Ljava/lang/String;

    return-void
.end method

.method public final setSmall2xUrl(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->small2xUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStringColor(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->stringColor:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->bank:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->stringColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->pan:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->feedIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lru/rocketbank/core/model/CardModel;->small2xUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
