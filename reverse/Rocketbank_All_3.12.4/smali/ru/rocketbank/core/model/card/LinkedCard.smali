.class public final Lru/rocketbank/core/model/card/LinkedCard;
.super Ljava/lang/Object;
.source "LinkedCard.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/card/LinkedCard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkedCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkedCard.kt\nru/rocketbank/core/model/card/LinkedCard\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,67:1\n7#2,4:68\n*E\n*S KotlinDebug\n*F\n+ 1 LinkedCard.kt\nru/rocketbank/core/model/card/LinkedCard\n*L\n65#1,4:68\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/card/LinkedCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/card/LinkedCard$Companion;


# instance fields
.field private bank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank"
    .end annotation
.end field

.field private bin:Lru/rocketbank/core/model/card/Bin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bin"
    .end annotation
.end field

.field private color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field private feedIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feed_icon_url"
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

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/card/LinkedCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/card/LinkedCard$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/card/LinkedCard;->Companion:Lru/rocketbank/core/model/card/LinkedCard$Companion;

    .line 68
    new-instance v0, Lru/rocketbank/core/model/card/LinkedCard$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/card/LinkedCard$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 71
    sput-object v0, Lru/rocketbank/core/model/card/LinkedCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->pan:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->token:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->bank:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->logo:Ljava/lang/String;

    .line 20
    const-class v0, Lru/rocketbank/core/model/card/Bin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/card/Bin;

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->bin:Lru/rocketbank/core/model/card/Bin;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->color:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->feedIconUrl:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->logo:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBank()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final getBin()Lru/rocketbank/core/model/card/Bin;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->bin:Lru/rocketbank/core/model/card/Bin;

    return-object v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeedIconUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->feedIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPan()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setBank(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->bank:Ljava/lang/String;

    return-void
.end method

.method public final setBin(Lru/rocketbank/core/model/card/Bin;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->bin:Lru/rocketbank/core/model/card/Bin;

    return-void
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->color:Ljava/lang/String;

    return-void
.end method

.method public final setFeedIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->feedIconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->logo:Ljava/lang/String;

    return-void
.end method

.method public final setPan(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->pan:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lru/rocketbank/core/model/card/LinkedCard;->token:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->pan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->bank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/card/LinkedCard;->bin:Lru/rocketbank/core/model/card/Bin;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget-object p2, p0, Lru/rocketbank/core/model/card/LinkedCard;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lru/rocketbank/core/model/card/LinkedCard;->feedIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lru/rocketbank/core/model/card/LinkedCard;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
