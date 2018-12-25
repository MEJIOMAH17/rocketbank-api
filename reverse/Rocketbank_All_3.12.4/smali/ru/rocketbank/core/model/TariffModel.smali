.class public final Lru/rocketbank/core/model/TariffModel;
.super Ljava/lang/Object;
.source "TariffModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/TariffModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffModel.kt\nru/rocketbank/core/model/TariffModel\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,84:1\n7#2,4:85\n*E\n*S KotlinDebug\n*F\n+ 1 TariffModel.kt\nru/rocketbank/core/model/TariffModel\n*L\n82#1,4:85\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/TariffModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/TariffModel$Companion;


# instance fields
.field private cobrand:Lru/rocketbank/core/model/enums/Cobrand;

.field private cobrandName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cobrand_name"
    .end annotation
.end field

.field private haveCommissionInMkb:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "have_commission_in_mkb"
    .end annotation
.end field

.field private id:J

.field private isActive:Z

.field public name:Ljava/lang/String;

.field private optionsRaw:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "options"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/OptionModel;",
            ">;"
        }
    .end annotation
.end field

.field private permalinkString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permalink"
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/TariffModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/TariffModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/TariffModel;->Companion:Lru/rocketbank/core/model/TariffModel$Companion;

    .line 85
    new-instance v0, Lru/rocketbank/core/model/TariffModel$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/TariffModel$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 88
    sput-object v0, Lru/rocketbank/core/model/TariffModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lru/rocketbank/core/model/TariffModel;->url:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lru/rocketbank/core/model/TariffModel;->haveCommissionInMkb:Z

    .line 76
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    iput-object v0, p0, Lru/rocketbank/core/model/TariffModel;->cobrand:Lru/rocketbank/core/model/enums/Cobrand;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lru/rocketbank/core/model/TariffModel;->url:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lru/rocketbank/core/model/TariffModel;->haveCommissionInMkb:Z

    .line 76
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    iput-object v1, p0, Lru/rocketbank/core/model/TariffModel;->cobrand:Lru/rocketbank/core/model/enums/Cobrand;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lru/rocketbank/core/model/TariffModel;->id:J

    .line 33
    sget-object v1, Lru/rocketbank/core/model/OptionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "`in`.readString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/core/model/TariffModel;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "`in`.readString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "`in`.readString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/core/model/TariffModel;->url:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/model/TariffModel;->cobrandName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/TariffModel;->haveCommissionInMkb:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 54
    instance-of v0, p1, Lru/rocketbank/core/model/TariffModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Lru/rocketbank/core/model/TariffModel;

    iget-wide v2, p1, Lru/rocketbank/core/model/TariffModel;->id:J

    iget-wide v4, p0, Lru/rocketbank/core/model/TariffModel;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final getCobrand()Lru/rocketbank/core/model/enums/Cobrand;
    .locals 2

    .line 77
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    iget-object v1, p0, Lru/rocketbank/core/model/TariffModel;->cobrandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    return-object v0
.end method

.method public final getCobrandName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->cobrandName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHaveCommissionInMkb()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lru/rocketbank/core/model/TariffModel;->haveCommissionInMkb:Z

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/model/TariffModel;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "name"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getOption()Lru/rocketbank/core/model/OptionModel;
    .locals 2

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/OptionModel;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOptionsRaw()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/OptionModel;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPermalink()Lru/rocketbank/core/model/enums/PermalinkTariff;
    .locals 2

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/PermalinkTariff;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/PermalinkTariff;

    move-result-object v0

    const-string v1, "PermalinkTariff.fromString(permalinkString)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPermalinkString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lru/rocketbank/core/model/TariffModel;->isActive:Z

    return v0
.end method

.method public final setActive(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lru/rocketbank/core/model/TariffModel;->isActive:Z

    return-void
.end method

.method public final setCobrand(Lru/rocketbank/core/model/enums/Cobrand;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lru/rocketbank/core/model/TariffModel;->cobrand:Lru/rocketbank/core/model/enums/Cobrand;

    return-void
.end method

.method public final setCobrandName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lru/rocketbank/core/model/TariffModel;->cobrandName:Ljava/lang/String;

    return-void
.end method

.method public final setHaveCommissionInMkb(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lru/rocketbank/core/model/TariffModel;->haveCommissionInMkb:Z

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lru/rocketbank/core/model/TariffModel;->id:J

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/TariffModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOption(Lru/rocketbank/core/model/OptionModel;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_2

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public final setOptionsRaw(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/OptionModel;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPermalinkString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lru/rocketbank/core/model/TariffModel;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-wide v0, p0, Lru/rocketbank/core/model/TariffModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-object p2, p0, Lru/rocketbank/core/model/TariffModel;->optionsRaw:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 44
    iget-object p2, p0, Lru/rocketbank/core/model/TariffModel;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v0, "name"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lru/rocketbank/core/model/TariffModel;->permalinkString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lru/rocketbank/core/model/TariffModel;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lru/rocketbank/core/model/TariffModel;->cobrandName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-boolean p2, p0, Lru/rocketbank/core/model/TariffModel;->haveCommissionInMkb:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
