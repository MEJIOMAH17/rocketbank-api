.class public final Lru/rocketbank/core/network/model/tariffs/Tariff;
.super Ljava/lang/Object;
.source "Tariff.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;,
        Lru/rocketbank/core/network/model/tariffs/Tariff$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariff.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tariff.kt\nru/rocketbank/core/network/model/tariffs/Tariff\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,93:1\n7#2,4:94\n*E\n*S KotlinDebug\n*F\n+ 1 Tariff.kt\nru/rocketbank/core/network/model/tariffs/Tariff\n*L\n89#1,4:94\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/tariffs/Tariff$Companion;


# instance fields
.field private final conditions:Ljava/lang/String;

.field private final features:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/TariffFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private final monthPay:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month_pay"
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final permalink:Ljava/lang/String;

.field private final priceLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_label"
    .end annotation
.end field

.field private final salary:Lru/rocketbank/core/network/model/tariffs/Salary;

.field private state:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/tariffs/Tariff$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/tariffs/Tariff$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff;->Companion:Lru/rocketbank/core/network/model/tariffs/Tariff$Companion;

    .line 94
    new-instance v0, Lru/rocketbank/core/network/model/tariffs/Tariff$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 97
    sput-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->state:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->priceLabel:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->permalink:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->url:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->imageUrl:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->conditions:Ljava/lang/String;

    .line 49
    const-class v0, Lru/rocketbank/core/network/model/tariffs/Salary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/tariffs/Salary;

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->salary:Lru/rocketbank/core/network/model/tariffs/Salary;

    .line 50
    sget-object v0, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "parcel.createTypedArrayList(TariffFeature.CREATOR)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->features:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->state:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->monthPay:D

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 73
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/network/model/tariffs/Tariff;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    .line 76
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.network.model.tariffs.Tariff"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->permalink:Ljava/lang/String;

    check-cast p1, Lru/rocketbank/core/network/model/tariffs/Tariff;

    iget-object p1, p1, Lru/rocketbank/core/network/model/tariffs/Tariff;->permalink:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final getConditions()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->conditions:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/TariffFeature;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->features:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonthPay()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->monthPay:D

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceLabel()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->priceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getSalary()Lru/rocketbank/core/network/model/tariffs/Salary;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->salary:Lru/rocketbank/core/network/model/tariffs/Salary;

    return-object v0
.end method

.method public final getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->state:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 84
    iget-object v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->permalink:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->state:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->priceLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->permalink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->conditions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->salary:Lru/rocketbank/core/network/model/tariffs/Salary;

    check-cast p2, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->features:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    iget-object p2, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->state:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {p2}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-wide v0, p0, Lru/rocketbank/core/network/model/tariffs/Tariff;->monthPay:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
