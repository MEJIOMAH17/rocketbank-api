.class public final Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;
.super Ljava/lang/Object;
.source "AnalyticsOperationsResponseData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion;


# instance fields
.field private joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

.field private mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

.field private total:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion;

    .line 28
    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const-class v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    .line 16
    const-class v2, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    .line 15
    invoke-direct {p0, v0, v1, p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;-><init>(Ljava/lang/Double;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    iput-object p3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;Ljava/lang/Double;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;ILjava/lang/Object;)Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->copy(Ljava/lang/Double;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-object v0
.end method

.method public final component3()Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;-><init>(Ljava/lang/Double;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)V

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

    instance-of v0, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    iget-object p1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

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

.method public final getJoint()Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-object v0
.end method

.method public final getMine()Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-object v0
.end method

.method public final getTotal()Ljava/lang/Double;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setJoint(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-void
.end method

.method public final setMine(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    return-void
.end method

.method public final setTotal(Ljava/lang/Double;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsOperationsResponseData(total="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", joint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->total:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->joint:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;->mine:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_2
    return-void
.end method
