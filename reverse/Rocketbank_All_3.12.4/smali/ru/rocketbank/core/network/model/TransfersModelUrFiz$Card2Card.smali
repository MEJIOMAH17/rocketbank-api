.class public Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;
.super Ljava/lang/Object;
.source "TransfersModelUrFiz.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/TransfersModelUrFiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Card2Card"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bank:Ljava/lang/String;

.field public color:Ljava/lang/String;

.field public feedIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feed_icon_url"
    .end annotation
.end field

.field public image:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public pan:Ljava/lang/String;

.field public small2xUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small2x_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 416
    new-instance v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->token:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->bank:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->image:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->logo:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->color:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->title:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->pan:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->feedIconUrl:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->small2xUrl:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lru/rocketbank/core/model/CardModel;)V
    .locals 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getBank()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->bank:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getStringColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->color:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->image:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->logo:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getPan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->pan:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->title:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->token:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getFeedIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->feedIconUrl:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getSmall2xUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->small2xUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 435
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->bank:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->pan:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->feedIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;->small2xUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
