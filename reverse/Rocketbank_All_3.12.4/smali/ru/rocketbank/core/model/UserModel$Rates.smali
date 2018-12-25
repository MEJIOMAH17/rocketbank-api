.class public Lru/rocketbank/core/model/UserModel$Rates;
.super Ljava/lang/Object;
.source "UserModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/UserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rates"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/UserModel$Rates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card_eur:D

.field private card_usd:D

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 634
    new-instance v0, Lru/rocketbank/core/model/UserModel$Rates$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/UserModel$Rates$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/UserModel$Rates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->card_usd:D

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->card_eur:D

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/UserModel$Rates;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardEur()D
    .locals 2

    .line 605
    iget-wide v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->card_eur:D

    return-wide v0
.end method

.method public getCardUsd()D
    .locals 2

    .line 601
    iget-wide v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->card_usd:D

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 620
    iget-wide v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->card_usd:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 621
    iget-wide v0, p0, Lru/rocketbank/core/model/UserModel$Rates;->card_eur:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 622
    iget-object p2, p0, Lru/rocketbank/core/model/UserModel$Rates;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
