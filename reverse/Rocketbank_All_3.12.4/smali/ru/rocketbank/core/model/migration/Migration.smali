.class public Lru/rocketbank/core/model/migration/Migration;
.super Ljava/lang/Object;
.source "Migration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lru/rocketbank/core/events/EventHelper$IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/migration/Migration$CityList;,
        Lru/rocketbank/core/model/migration/Migration$Transfer;,
        Lru/rocketbank/core/model/migration/Migration$City;,
        Lru/rocketbank/core/model/migration/Migration$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/migration/Migration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private check_card:Lru/rocketbank/core/model/dto/CheckCardData;

.field private cities:Lru/rocketbank/core/model/migration/Migration$CityList;

.field private status:Lru/rocketbank/core/model/migration/Migration$Status;

.field private transfer:Lru/rocketbank/core/model/migration/Migration$Transfer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/migration/Migration$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->pending:Lru/rocketbank/core/model/migration/Migration$Status;

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->pending:Lru/rocketbank/core/model/migration/Migration$Status;

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lru/rocketbank/core/model/migration/Migration$Status;->values()[Lru/rocketbank/core/model/migration/Migration$Status;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 249
    const-class v0, Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/CheckCardData;

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->check_card:Lru/rocketbank/core/model/dto/CheckCardData;

    .line 250
    const-class v0, Lru/rocketbank/core/model/migration/Migration$CityList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/migration/Migration$CityList;

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->cities:Lru/rocketbank/core/model/migration/Migration$CityList;

    .line 251
    const-class v0, Lru/rocketbank/core/model/migration/Migration$Transfer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/migration/Migration$Transfer;

    iput-object p1, p0, Lru/rocketbank/core/model/migration/Migration;->transfer:Lru/rocketbank/core/model/migration/Migration$Transfer;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/migration/Migration$City;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->pending:Lru/rocketbank/core/model/migration/Migration$Status;

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 54
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$CityList;

    invoke-direct {v0, p1}, Lru/rocketbank/core/model/migration/Migration$CityList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->cities:Lru/rocketbank/core/model/migration/Migration$CityList;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/migration/Migration$Status;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/migration/Migration$City;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->pending:Lru/rocketbank/core/model/migration/Migration$Status;

    iput-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 82
    iput-object p1, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 83
    new-instance p1, Lru/rocketbank/core/model/migration/Migration$CityList;

    invoke-direct {p1, p2}, Lru/rocketbank/core/model/migration/Migration$CityList;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lru/rocketbank/core/model/migration/Migration;->cities:Lru/rocketbank/core/model/migration/Migration$CityList;

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

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->check_card:Lru/rocketbank/core/model/dto/CheckCardData;

    return-object v0
.end method

.method public getCities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/migration/Migration$City;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->cities:Lru/rocketbank/core/model/migration/Migration$CityList;

    invoke-virtual {v0}, Lru/rocketbank/core/model/migration/Migration$CityList;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lru/rocketbank/core/model/migration/Migration$Status;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    return-object v0
.end method

.method public getTransfer()Lru/rocketbank/core/model/migration/Migration$Transfer;
    .locals 1

    .line 70
    iget-object v0, p0, Lru/rocketbank/core/model/migration/Migration;->transfer:Lru/rocketbank/core/model/migration/Migration$Transfer;

    return-object v0
.end method

.method public setStatus(Lru/rocketbank/core/model/migration/Migration$Status;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 240
    iget-object p2, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lru/rocketbank/core/model/migration/Migration;->status:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p2}, Lru/rocketbank/core/model/migration/Migration$Status;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object p2, p0, Lru/rocketbank/core/model/migration/Migration;->check_card:Lru/rocketbank/core/model/dto/CheckCardData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 242
    iget-object p2, p0, Lru/rocketbank/core/model/migration/Migration;->cities:Lru/rocketbank/core/model/migration/Migration$CityList;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 243
    iget-object p2, p0, Lru/rocketbank/core/model/migration/Migration;->transfer:Lru/rocketbank/core/model/migration/Migration$Transfer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
