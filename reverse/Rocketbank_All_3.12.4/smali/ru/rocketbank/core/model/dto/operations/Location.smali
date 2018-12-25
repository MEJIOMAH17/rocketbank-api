.class public final Lru/rocketbank/core/model/dto/operations/Location;
.super Ljava/lang/Object;
.source "Location.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/operations/Location$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/operations/Location$Companion;


# instance fields
.field private accuracy:Ljava/lang/Double;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/operations/Location$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/operations/Location$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/Location;->Companion:Lru/rocketbank/core/model/dto/operations/Location$Companion;

    .line 24
    new-instance v0, Lru/rocketbank/core/model/dto/operations/Location$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/Location$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/operations/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lru/rocketbank/core/model/dto/operations/Location;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    iput-object p3, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/operations/Location;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lru/rocketbank/core/model/dto/operations/Location;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/model/dto/operations/Location;->copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lru/rocketbank/core/model/dto/operations/Location;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/dto/operations/Location;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/core/model/dto/operations/Location;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/dto/operations/Location;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Location;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    iget-object p1, p1, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccuracy()Ljava/lang/Double;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual$3bd129e3(Ljava/lang/Double;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual$3bd129e3(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setAccuracy(Ljava/lang/Double;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location(latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 13
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    if-nez p2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->latitude:Ljava/lang/Double;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_2
    if-eqz p1, :cond_5

    .line 14
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    if-nez p2, :cond_3

    move-wide v2, v0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->longitude:Ljava/lang/Double;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_5
    if-eqz p1, :cond_8

    .line 15
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Location;->accuracy:Ljava/lang/Double;

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void

    :cond_8
    return-void
.end method
