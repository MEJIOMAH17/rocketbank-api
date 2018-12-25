.class public final Lru/rocketbank/core/network/model/RefillCardResponse;
.super Ljava/lang/Object;
.source "RefillCardResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/RefillCardResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currency:Ljava/lang/String;

.field private from:Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

.field private rate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatted_rate"
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private to:Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lru/rocketbank/core/network/model/RefillCardResponse$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/RefillCardResponse$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/model/RefillCardResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->currency:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->rate:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->status:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->from:Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    return-object v0
.end method

.method public final getRate()Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->rate:Ljava/lang/String;

    const-string/jumbo v1, "\u0452"

    const-string/jumbo v2, "\u20bd"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->to:Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 72
    iget-object p2, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->rate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lru/rocketbank/core/network/model/RefillCardResponse;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
