.class final Lru/rocketbank/core/model/dto/BinResponseData$1;
.super Ljava/lang/Object;
.source "BinResponseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/dto/BinResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/model/dto/BinResponseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/dto/BinResponseData$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/model/dto/BinResponseData;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/model/dto/BinResponseData;
    .locals 1

    .line 55
    new-instance v0, Lru/rocketbank/core/model/dto/BinResponseData;

    invoke-direct {v0, p1}, Lru/rocketbank/core/model/dto/BinResponseData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/dto/BinResponseData$1;->newArray(I)[Lru/rocketbank/core/model/dto/BinResponseData;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/core/model/dto/BinResponseData;
    .locals 0

    .line 60
    new-array p1, p1, [Lru/rocketbank/core/model/dto/BinResponseData;

    return-object p1
.end method
