.class public final Lru/rocketbank/core/model/DepositModel;
.super Ljava/lang/Object;
.source "DepositModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/DepositModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepositModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepositModel.kt\nru/rocketbank/core/model/DepositModel\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,136:1\n7#2,4:137\n*E\n*S KotlinDebug\n*F\n+ 1 DepositModel.kt\nru/rocketbank/core/model/DepositModel\n*L\n134#1,4:137\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/DepositModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/DepositModel$Companion;


# instance fields
.field private balance:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "balance"
    .end annotation
.end field

.field private balanceWithoutPercents:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "balance_without_percents"
    .end annotation
.end field

.field private bank:Ljava/lang/String;

.field private canBeRefilled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_be_refilled"
    .end annotation
.end field

.field private canRefillByDate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_refill_by_date"
    .end annotation
.end field

.field private deliver:Lru/rocketbank/core/model/DeliveryScheduledModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deliver"
    .end annotation
.end field

.field private endDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_date"
    .end annotation
.end field

.field private id:J

.field private maxAmount:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_amount"
    .end annotation
.end field

.field private percent:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percent"
    .end annotation
.end field

.field private period:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "period"
    .end annotation
.end field

.field private refillable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refillable"
    .end annotation
.end field

.field private requisites:Lru/rocketbank/core/model/RequisitesModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requisites"
    .end annotation
.end field

.field private rocketDeposit:Lru/rocketbank/core/model/RocketDepositModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rocket_deposit"
    .end annotation
.end field

.field private startDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_date"
    .end annotation
.end field

.field private statementKinds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statement_kinds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statements:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/StatementModel;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/DepositModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/DepositModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/DepositModel;->Companion:Lru/rocketbank/core/model/DepositModel$Companion;

    .line 137
    new-instance v0, Lru/rocketbank/core/model/DepositModel$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/DepositModel$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 140
    sput-object v0, Lru/rocketbank/core/model/DepositModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->bank:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/DepositModel;->balance:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->id:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/DepositModel;->period:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->canBeRefilled:Z

    .line 78
    const-class v0, Lru/rocketbank/core/model/DeliveryScheduledModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/DeliveryScheduledModel;

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->deliver:Lru/rocketbank/core/model/DeliveryScheduledModel;

    .line 79
    sget-object v0, Lru/rocketbank/core/model/StatementModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->statements:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->statementKinds:Ljava/util/List;

    .line 81
    const-class v0, Lru/rocketbank/core/model/RequisitesModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/RequisitesModel;

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->requisites:Lru/rocketbank/core/model/RequisitesModel;

    .line 82
    const-class v0, Lru/rocketbank/core/model/RocketDepositModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/RocketDepositModel;

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->rocketDeposit:Lru/rocketbank/core/model/RocketDepositModel;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->endDate:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->startDate:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->status:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DepositModel;->title:Ljava/lang/String;

    .line 87
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Double"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->percent:D

    .line 88
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->refillable:Z

    .line 89
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->canRefillByDate:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lru/rocketbank/core/model/DepositModel;->maxAmount:F

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 117
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/model/DepositModel;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 120
    :cond_0
    instance-of v0, p1, Lru/rocketbank/core/model/DepositModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 121
    check-cast p1, Lru/rocketbank/core/model/DepositModel;

    iget-wide v3, p1, Lru/rocketbank/core/model/DepositModel;->id:J

    iget-wide v5, p0, Lru/rocketbank/core/model/DepositModel;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public final getBalance()F
    .locals 1

    .line 17
    iget v0, p0, Lru/rocketbank/core/model/DepositModel;->balance:F

    return v0
.end method

.method public final getBalanceWithoutPercents()F
    .locals 1

    .line 68
    iget v0, p0, Lru/rocketbank/core/model/DepositModel;->balanceWithoutPercents:F

    return v0
.end method

.method public final getBank()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanBeRefilled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->canBeRefilled:Z

    return v0
.end method

.method public final getCanRefillByDate()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->canRefillByDate:Z

    return v0
.end method

.method public final getDeliver()Lru/rocketbank/core/model/DeliveryScheduledModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->deliver:Lru/rocketbank/core/model/DeliveryScheduledModel;

    return-object v0
.end method

.method public final getEndDate()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->id:J

    return-wide v0
.end method

.method public final getMaxAmount()F
    .locals 1

    .line 20
    iget v0, p0, Lru/rocketbank/core/model/DepositModel;->maxAmount:F

    return v0
.end method

.method public final getPercent()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->percent:D

    return-wide v0
.end method

.method public final getPeriod()I
    .locals 1

    .line 28
    iget v0, p0, Lru/rocketbank/core/model/DepositModel;->period:I

    return v0
.end method

.method public final getRefillable()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->refillable:Z

    return v0
.end method

.method public final getRequisites()Lru/rocketbank/core/model/RequisitesModel;
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->requisites:Lru/rocketbank/core/model/RequisitesModel;

    return-object v0
.end method

.method public final getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->rocketDeposit:Lru/rocketbank/core/model/RocketDepositModel;

    return-object v0
.end method

.method public final getStartDate()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementKinds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->statementKinds:Ljava/util/List;

    return-object v0
.end method

.method public final getStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/StatementModel;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->statements:Ljava/util/List;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusValue()Lru/rocketbank/core/model/enums/StatusDeposit;
    .locals 2

    .line 129
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->status:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/StatusDeposit;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/StatusDeposit;

    move-result-object v0

    const-string v1, "StatusDeposit.fromString(status)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 126
    iget-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public final setBalance(F)V
    .locals 0

    .line 17
    iput p1, p0, Lru/rocketbank/core/model/DepositModel;->balance:F

    return-void
.end method

.method public final setBalanceWithoutPercents(F)V
    .locals 0

    .line 68
    iput p1, p0, Lru/rocketbank/core/model/DepositModel;->balanceWithoutPercents:F

    return-void
.end method

.method public final setBank(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->bank:Ljava/lang/String;

    return-void
.end method

.method public final setCanBeRefilled(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lru/rocketbank/core/model/DepositModel;->canBeRefilled:Z

    return-void
.end method

.method public final setCanRefillByDate(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lru/rocketbank/core/model/DepositModel;->canRefillByDate:Z

    return-void
.end method

.method public final setDeliver(Lru/rocketbank/core/model/DeliveryScheduledModel;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->deliver:Lru/rocketbank/core/model/DeliveryScheduledModel;

    return-void
.end method

.method public final setEndDate(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->endDate:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lru/rocketbank/core/model/DepositModel;->id:J

    return-void
.end method

.method public final setMaxAmount(F)V
    .locals 0

    .line 20
    iput p1, p0, Lru/rocketbank/core/model/DepositModel;->maxAmount:F

    return-void
.end method

.method public final setPercent(D)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lru/rocketbank/core/model/DepositModel;->percent:D

    return-void
.end method

.method public final setPeriod(I)V
    .locals 0

    .line 28
    iput p1, p0, Lru/rocketbank/core/model/DepositModel;->period:I

    return-void
.end method

.method public final setRefillable(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lru/rocketbank/core/model/DepositModel;->refillable:Z

    return-void
.end method

.method public final setRequisites(Lru/rocketbank/core/model/RequisitesModel;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->requisites:Lru/rocketbank/core/model/RequisitesModel;

    return-void
.end method

.method public final setRocketDeposit(Lru/rocketbank/core/model/RocketDepositModel;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->rocketDeposit:Lru/rocketbank/core/model/RocketDepositModel;

    return-void
.end method

.method public final setStartDate(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->startDate:Ljava/lang/String;

    return-void
.end method

.method public final setStatementKinds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->statementKinds:Ljava/util/List;

    return-void
.end method

.method public final setStatements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/StatementModel;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->statements:Ljava/util/List;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->status:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lru/rocketbank/core/model/DepositModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->bank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lru/rocketbank/core/model/DepositModel;->balance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget v0, p0, Lru/rocketbank/core/model/DepositModel;->period:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean v0, p0, Lru/rocketbank/core/model/DepositModel;->canBeRefilled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->deliver:Lru/rocketbank/core/model/DeliveryScheduledModel;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->statements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->statementKinds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->requisites:Lru/rocketbank/core/model/RequisitesModel;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/model/DepositModel;->rocketDeposit:Lru/rocketbank/core/model/RocketDepositModel;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object p2, p0, Lru/rocketbank/core/model/DepositModel;->endDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lru/rocketbank/core/model/DepositModel;->startDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lru/rocketbank/core/model/DepositModel;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lru/rocketbank/core/model/DepositModel;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lru/rocketbank/core/model/DepositModel;->percent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 109
    iget-boolean p2, p0, Lru/rocketbank/core/model/DepositModel;->refillable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 110
    iget-boolean p2, p0, Lru/rocketbank/core/model/DepositModel;->canRefillByDate:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 111
    iget p2, p0, Lru/rocketbank/core/model/DepositModel;->maxAmount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
