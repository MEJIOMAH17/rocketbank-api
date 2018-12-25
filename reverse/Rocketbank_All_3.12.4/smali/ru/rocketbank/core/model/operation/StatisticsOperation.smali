.class public final Lru/rocketbank/core/model/operation/StatisticsOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "StatisticsOperation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/operation/StatisticsOperation$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/operation/StatisticsOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/operation/StatisticsOperation$Companion;


# instance fields
.field private months:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private total:Ljava/lang/Float;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/operation/StatisticsOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/operation/StatisticsOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/operation/StatisticsOperation;->Companion:Lru/rocketbank/core/model/operation/StatisticsOperation$Companion;

    .line 32
    new-instance v0, Lru/rocketbank/core/model/operation/StatisticsOperation$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/operation/StatisticsOperation$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/operation/StatisticsOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const-string v0, "months"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    iput p1, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->type:I

    .line 14
    iput-object p3, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->months:Ljava/util/List;

    .line 15
    iput-object p4, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->total:Ljava/lang/Float;

    .line 16
    invoke-virtual {p0, p2}, Lru/rocketbank/core/model/operation/StatisticsOperation;->setId(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getMonths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->months:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()Ljava/lang/Float;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->total:Ljava/lang/Float;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->type:I

    return v0
.end method

.method public final setMonths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->months:Ljava/util/List;

    return-void
.end method

.method public final setTotal(Ljava/lang/Float;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->total:Ljava/lang/Float;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 8
    iput p1, p0, Lru/rocketbank/core/model/operation/StatisticsOperation;->type:I

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
