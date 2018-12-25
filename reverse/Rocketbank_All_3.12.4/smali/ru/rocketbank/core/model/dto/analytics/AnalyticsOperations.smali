.class public final Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
.super Ljava/lang/Object;
.source "AnalyticsOperationsResponseData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion;


# instance fields
.field private amount:Ljava/lang/Long;

.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private percentage:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion;

    .line 50
    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lru/rocketbank/core/model/dto/operations/Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, v0, v1, p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    iput-object p3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->copy(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;)Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;)Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;)",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;)V

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

    instance-of v0, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    iget-object p1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

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

.method public final getAmount()Ljava/lang/Long;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    return-object v0
.end method

.method public final getPercentage()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAmount(Ljava/lang/Long;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    return-void
.end method

.method public final setOperations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    return-void
.end method

.method public final setPercentage(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsOperations(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->amount:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 45
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->percentage:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 46
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;->operations:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_2
    return-void
.end method
