.class public Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;
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
    name = "LinkedAccount"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public formatted_number:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 348
    new-instance v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->formatted_number:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->title:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormatted_number()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->formatted_number:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setFormatted_number(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->formatted_number:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->title:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->token:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 334
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->formatted_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
