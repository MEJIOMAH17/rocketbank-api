.class public final Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;
.super Ljava/lang/Object;
.source "AnalyticsOperationsResponseData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion;


# instance fields
.field private amount:Ljava/lang/Double;

.field private count:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private percentage:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion;

    .line 94
    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;-><init>(Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    iput-object p3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    iput-object p4, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->copy(Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;-><init>(Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

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

    instance-of v0, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

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

.method public final getAmount()Ljava/lang/Double;
    .locals 1

    .line 78
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getCount()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPercentage()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAmount(Ljava/lang/Double;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    return-void
.end method

.method public final setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPercentage(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsTagOperation(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 87
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->amount:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 88
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->percentage:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 89
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->count:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 90
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method
