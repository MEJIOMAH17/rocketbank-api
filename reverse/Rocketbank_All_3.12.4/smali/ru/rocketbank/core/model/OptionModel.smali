.class public final Lru/rocketbank/core/model/OptionModel;
.super Ljava/lang/Object;
.source "OptionModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/OptionModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionModel.kt\nru/rocketbank/core/model/OptionModel\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,60:1\n7#2,4:61\n*E\n*S KotlinDebug\n*F\n+ 1 OptionModel.kt\nru/rocketbank/core/model/OptionModel\n*L\n58#1,4:61\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/OptionModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/OptionModel$Companion;


# instance fields
.field private cost:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cost"
    .end annotation
.end field

.field private isActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field

.field private paidTo:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paid_to"
    .end annotation
.end field

.field private permalinkRaw:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permalink"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/OptionModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/OptionModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/OptionModel;->Companion:Lru/rocketbank/core/model/OptionModel$Companion;

    .line 61
    new-instance v0, Lru/rocketbank/core/model/OptionModel$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/OptionModel$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 64
    sput-object v0, Lru/rocketbank/core/model/OptionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/OptionModel;->isActive:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/OptionModel;->cost:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/OptionModel;->paidTo:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "`in`.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCost()F
    .locals 1

    .line 18
    iget v0, p0, Lru/rocketbank/core/model/OptionModel;->cost:F

    return v0
.end method

.method public final getPaidTo()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lru/rocketbank/core/model/OptionModel;->paidTo:J

    return-wide v0
.end method

.method public final getPaidTo()Ljava/util/Date;
    .locals 3

    .line 38
    sget-object v0, Lru/rocketbank/core/model/ModelTools;->INSTANCE:Lru/rocketbank/core/model/ModelTools;

    iget-wide v1, p0, Lru/rocketbank/core/model/OptionModel;->paidTo:J

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/ModelTools;->formatDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getPermalink()Lru/rocketbank/core/model/enums/PermalinkOption;
    .locals 2

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/PermalinkOption;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/PermalinkOption;

    move-result-object v0

    const-string v1, "PermalinkOption.fromString(permalinkRaw)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPermalinkRaw()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lru/rocketbank/core/model/OptionModel;->isActive:Z

    return v0
.end method

.method public final setActive(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lru/rocketbank/core/model/OptionModel;->isActive:Z

    return-void
.end method

.method public final setCost(F)V
    .locals 0

    .line 18
    iput p1, p0, Lru/rocketbank/core/model/OptionModel;->cost:F

    return-void
.end method

.method public final setPaidTo(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lru/rocketbank/core/model/OptionModel;->paidTo:J

    return-void
.end method

.method public final setPermalinkRaw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-boolean p2, p0, Lru/rocketbank/core/model/OptionModel;->isActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget p2, p0, Lru/rocketbank/core/model/OptionModel;->cost:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    iget-wide v0, p0, Lru/rocketbank/core/model/OptionModel;->paidTo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-object p2, p0, Lru/rocketbank/core/model/OptionModel;->permalinkRaw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
