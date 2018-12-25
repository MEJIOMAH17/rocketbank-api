.class public final Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;
.super Ljava/lang/Object;
.source "AnalyticsOperationsResponseData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion;


# instance fields
.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation
.end field

.field private total:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->Companion:Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion;

    .line 70
    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    sget-object v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;-><init>(Ljava/lang/Double;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;Ljava/lang/Double;Ljava/util/List;ILjava/lang/Object;)Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->copy(Ljava/lang/Double;Ljava/util/List;)Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;Ljava/util/List;)Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;)",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;-><init>(Ljava/lang/Double;Ljava/util/List;)V

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

    instance-of v0, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    iget-object p1, p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

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

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()Ljava/lang/Double;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    return-void
.end method

.method public final setTotal(Ljava/lang/Double;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsTags(total="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

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

    .line 65
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->total:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 66
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_1
    return-void
.end method
