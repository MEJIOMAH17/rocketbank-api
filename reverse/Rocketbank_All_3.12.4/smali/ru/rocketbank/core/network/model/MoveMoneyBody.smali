.class public final Lru/rocketbank/core/network/model/MoveMoneyBody;
.super Ljava/lang/Object;
.source "MoveMoneyBody.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/MoveMoneyBody$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoveMoneyBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveMoneyBody.kt\nru/rocketbank/core/network/model/MoveMoneyBody\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,41:1\n7#2,4:42\n*E\n*S KotlinDebug\n*F\n+ 1 MoveMoneyBody.kt\nru/rocketbank/core/network/model/MoveMoneyBody\n*L\n38#1,4:42\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/MoveMoneyBody$Companion;


# instance fields
.field private amount:D

.field private currency:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private hash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_uniq_timestamp_hash"
    .end annotation
.end field

.field private to:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/MoveMoneyBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/MoveMoneyBody$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/MoveMoneyBody;->Companion:Lru/rocketbank/core/network/model/MoveMoneyBody$Companion;

    .line 42
    new-instance v0, Lru/rocketbank/core/network/model/MoveMoneyBody$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/MoveMoneyBody$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 45
    sput-object v0, Lru/rocketbank/core/network/model/MoveMoneyBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    iput-object p3, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    iput-object p5, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    .line 17
    sget-object p1, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    invoke-virtual {p1}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->hash:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/network/model/MoveMoneyBody;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 29
    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/network/model/MoveMoneyBody;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->hash:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/MoveMoneyBody;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/network/model/MoveMoneyBody;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/core/network/model/MoveMoneyBody;->copy(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/network/model/MoveMoneyBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/network/model/MoveMoneyBody;
    .locals 7

    new-instance v6, Lru/rocketbank/core/network/model/MoveMoneyBody;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/network/model/MoveMoneyBody;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/MoveMoneyBody;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/MoveMoneyBody;

    iget-wide v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    iget-wide v2, p1, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

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

.method public final getAmount()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    return-wide v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    iget-wide v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final setAmount(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setFrom(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    return-void
.end method

.method public final setTo(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoveMoneyBody(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-wide v0, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 21
    iget-object p2, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->from:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->to:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lru/rocketbank/core/network/model/MoveMoneyBody;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
