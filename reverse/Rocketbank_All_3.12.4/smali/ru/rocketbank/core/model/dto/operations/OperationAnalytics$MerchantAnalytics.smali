.class public final Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;
.super Ljava/lang/Object;
.source "OperationAnalytics.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/dto/operations/OperationAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MerchantAnalytics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion;


# instance fields
.field private final currentMonth:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_month"
    .end annotation
.end field

.field private months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final previousMonth:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previous_month"
    .end annotation
.end field

.field private final total:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->Companion:Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion;

    .line 80
    new-instance v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->currentMonth:D

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->previousMonth:D

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->total:F

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 51
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 52
    iget-object v2, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrentMonth()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->currentMonth:D

    return-wide v0
.end method

.method public final getMonths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPreviousMonth()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->previousMonth:D

    return-wide v0
.end method

.method public final getTotal()F
    .locals 1

    .line 37
    iget v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->total:F

    return v0
.end method

.method public final setMonths(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->currentMonth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->previousMonth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    iget p2, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->total:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 67
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 68
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 71
    iget-object v2, p0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->months:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "months!![i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 75
    :cond_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
