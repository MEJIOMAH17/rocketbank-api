.class public final Lru/rocketbank/core/model/AccountModel;
.super Ljava/lang/Object;
.source "AccountModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/AccountModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountModel.kt\nru/rocketbank/core/model/AccountModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,283:1\n1519#2,2:284\n7#3,4:286\n*E\n*S KotlinDebug\n*F\n+ 1 AccountModel.kt\nru/rocketbank/core/model/AccountModel\n*L\n138#1,2:284\n281#1,4:286\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/AccountModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/AccountModel$Companion;


# instance fields
.field private accountDetails:Lru/rocketbank/core/model/AccountDetailsModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_details"
    .end annotation
.end field

.field private androidPayWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_pay_works"
    .end annotation
.end field

.field private applepay:Z

.field private balance:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "balance"
    .end annotation
.end field

.field private betterLimits:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "better_limits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;"
        }
    .end annotation
.end field

.field private cashOutCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_out_count"
    .end annotation
.end field

.field private changeLimits:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_limits"
    .end annotation
.end field

.field private changePin:Lru/rocketbank/core/model/dto/ChangePin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_pin"
    .end annotation
.end field

.field private currencyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private currentTariff:Lru/rocketbank/core/model/TariffModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_tariff"
    .end annotation
.end field

.field private details:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field private extracts:Z

.field private freeCashOutLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free_cash_out_limit"
    .end annotation
.end field

.field private freeCashOutLimitText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free_cash_out_limit_text"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field private isChangedTariff:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changed_tariff"
    .end annotation
.end field

.field private limits:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;"
        }
    .end annotation
.end field

.field private main:Z

.field private month:S

.field private nameInLatin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name_in_latin"
    .end annotation
.end field

.field private nextTariff:Lru/rocketbank/core/model/TariffModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_tariff"
    .end annotation
.end field

.field private operations:Z

.field private pan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pan"
    .end annotation
.end field

.field private plasticToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plastic_token"
    .end annotation
.end field

.field private spent:D

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

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field private unlimitedCashouts:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unlimited_cashouts"
    .end annotation
.end field

.field private year:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/AccountModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/AccountModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/AccountModel;->Companion:Lru/rocketbank/core/model/AccountModel$Companion;

    .line 286
    new-instance v0, Lru/rocketbank/core/model/AccountModel$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/AccountModel$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 289
    sput-object v0, Lru/rocketbank/core/model/AccountModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->isChangedTariff:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lru/rocketbank/core/model/AccountModel;->balance:D

    .line 110
    const-class v0, Lru/rocketbank/core/model/AccountDetailsModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/AccountDetailsModel;

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->accountDetails:Lru/rocketbank/core/model/AccountDetailsModel;

    .line 111
    sget-object v0, Lru/rocketbank/core/model/Limit;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->limits:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currencyCode:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->details:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->nameInLatin:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->pan:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->status:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->title:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    .line 119
    const-class v0, Lru/rocketbank/core/model/TariffModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/TariffModel;

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currentTariff:Lru/rocketbank/core/model/TariffModel;

    .line 120
    const-class v0, Lru/rocketbank/core/model/TariffModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/TariffModel;

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    .line 121
    const-class v0, Lru/rocketbank/core/model/dto/ChangePin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/ChangePin;

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->iconUrl:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->plasticToken:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lru/rocketbank/core/model/AccountModel;->year:S

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lru/rocketbank/core/model/AccountModel;->month:S

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->applepay:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/AccountModel;->cashOutCount:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimit:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->unlimitedCashouts:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimitText:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lru/rocketbank/core/model/AccountModel;->spent:D

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->operations:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->changeLimits:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lru/rocketbank/core/model/AccountModel;->extracts:Z

    .line 137
    const-class v0, Lru/rocketbank/core/model/Limit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 140
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bundle.keySet()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 284
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "bundle.getParcelableArrayList(it)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 146
    :cond_6
    iput-object v0, p0, Lru/rocketbank/core/model/AccountModel;->betterLimits:Ljava/util/LinkedHashMap;

    :cond_7
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 196
    instance-of v0, p1, Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_1

    .line 197
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/model/AccountModel;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 229
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    check-cast p1, Lru/rocketbank/core/model/AccountModel;

    iget-object p1, p1, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->accountDetails:Lru/rocketbank/core/model/AccountDetailsModel;

    return-object v0
.end method

.method public final getAndroidPayWorks()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->androidPayWorks:Z

    return v0
.end method

.method public final getApplepay()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->applepay:Z

    return v0
.end method

.method public final getBalance()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lru/rocketbank/core/model/AccountModel;->balance:D

    return-wide v0
.end method

.method public final getBetterLimits()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->betterLimits:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final getCashOutCount()I
    .locals 1

    .line 62
    iget v0, p0, Lru/rocketbank/core/model/AccountModel;->cashOutCount:I

    return v0
.end method

.method public final getChangeLimits()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->changeLimits:Z

    return v0
.end method

.method public final getChangePin()Lru/rocketbank/core/model/dto/ChangePin;
    .locals 1

    .line 97
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    return-object v0
.end method

.method public final getCurrency()Lru/rocketbank/core/model/enums/Currency;
    .locals 2

    .line 237
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Currency;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    const-string v1, "Currency.fromString(currencyCode)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentTariff()Lru/rocketbank/core/model/TariffModel;
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currentTariff:Lru/rocketbank/core/model/TariffModel;

    return-object v0
.end method

.method public final getDetails()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtracts()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->extracts:Z

    return v0
.end method

.method public final getFreeCashOutLimit()I
    .locals 1

    .line 65
    iget v0, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimit:I

    return v0
.end method

.method public final getFreeCashOutLimitText()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimitText:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimitByName(Ljava/lang/String;)Lru/rocketbank/core/model/LimitModel;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getLimits()Ljava/util/List;

    move-result-object v0

    .line 254
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/LimitModel;

    .line 256
    invoke-virtual {v3}, Lru/rocketbank/core/model/LimitModel;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getLimits()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->limits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLimits()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/LimitModel;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v1, p0, Lru/rocketbank/core/model/AccountModel;->limits:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lru/rocketbank/core/model/AccountModel;->limits:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/Limit;

    .line 243
    invoke-virtual {v2}, Lru/rocketbank/core/model/Limit;->getLimits()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    invoke-virtual {v2}, Lru/rocketbank/core/model/Limit;->getLimits()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "limit.limits!![1]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "\u0452"

    const-string/jumbo v7, "\u20bd"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v4, Lru/rocketbank/core/model/LimitModel;

    invoke-direct {v4, v3, v2}, Lru/rocketbank/core/model/LimitModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getMain()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->main:Z

    return v0
.end method

.method public final getMonth()S
    .locals 1

    .line 28
    iget-short v0, p0, Lru/rocketbank/core/model/AccountModel;->month:S

    return v0
.end method

.method public final getNameInLatin()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->nameInLatin:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextTariff()Lru/rocketbank/core/model/TariffModel;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    return-object v0
.end method

.method public final getOperations()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->operations:Z

    return v0
.end method

.method public final getPan()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlasticToken()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->plasticToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpent()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lru/rocketbank/core/model/AccountModel;->spent:D

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusValue()Lru/rocketbank/core/model/enums/Status;
    .locals 2

    .line 265
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->status:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Status;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    const-string v1, "Status.fromString(status)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnlimitedCashouts()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->unlimitedCashouts:Z

    return v0
.end method

.method public final getYear()S
    .locals 1

    .line 30
    iget-short v0, p0, Lru/rocketbank/core/model/AccountModel;->year:S

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 273
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isBlocked()Z
    .locals 2

    .line 277
    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->HARD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->FRAUD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isChangedTariff()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->isChangedTariff:Z

    return v0
.end method

.method public final setAccountDetails(Lru/rocketbank/core/model/AccountDetailsModel;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->accountDetails:Lru/rocketbank/core/model/AccountDetailsModel;

    return-void
.end method

.method public final setAndroidPayWorks(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->androidPayWorks:Z

    return-void
.end method

.method public final setApplepay(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->applepay:Z

    return-void
.end method

.method public final setBalance(D)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lru/rocketbank/core/model/AccountModel;->balance:D

    return-void
.end method

.method public final setBetterLimits(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->betterLimits:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public final setCashOutCount(I)V
    .locals 0

    .line 62
    iput p1, p0, Lru/rocketbank/core/model/AccountModel;->cashOutCount:I

    return-void
.end method

.method public final setChangeLimits(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->changeLimits:Z

    return-void
.end method

.method public final setChangePin(Lru/rocketbank/core/model/dto/ChangePin;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    return-void
.end method

.method public final setChangedTariff(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->isChangedTariff:Z

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentTariff(Lru/rocketbank/core/model/TariffModel;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->currentTariff:Lru/rocketbank/core/model/TariffModel;

    return-void
.end method

.method public final setDetails(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->details:Ljava/lang/String;

    return-void
.end method

.method public final setExtracts(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->extracts:Z

    return-void
.end method

.method public final setFreeCashOutLimit(I)V
    .locals 0

    .line 65
    iput p1, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimit:I

    return-void
.end method

.method public final setFreeCashOutLimitText(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimitText:Ljava/lang/String;

    return-void
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setLimits(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->limits:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMain(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->main:Z

    return-void
.end method

.method public final setMonth(S)V
    .locals 0

    .line 28
    iput-short p1, p0, Lru/rocketbank/core/model/AccountModel;->month:S

    return-void
.end method

.method public final setNameInLatin(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->nameInLatin:Ljava/lang/String;

    return-void
.end method

.method public final setNextTariff(Lru/rocketbank/core/model/TariffModel;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    return-void
.end method

.method public final setOperations(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->operations:Z

    return-void
.end method

.method public final setPan(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->pan:Ljava/lang/String;

    return-void
.end method

.method public final setPlasticToken(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->plasticToken:Ljava/lang/String;

    return-void
.end method

.method public final setSpent(D)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lru/rocketbank/core/model/AccountModel;->spent:D

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->status:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    return-void
.end method

.method public final setUnlimitedCashouts(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lru/rocketbank/core/model/AccountModel;->unlimitedCashouts:Z

    return-void
.end method

.method public final setUserStatus(Lru/rocketbank/core/model/enums/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Status;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/AccountModel;->status:Ljava/lang/String;

    return-void
.end method

.method public final setYear(S)V
    .locals 0

    .line 30
    iput-short p1, p0, Lru/rocketbank/core/model/AccountModel;->year:S

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lru/rocketbank/core/model/AccountModel;->isChangedTariff:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget-wide v0, p0, Lru/rocketbank/core/model/AccountModel;->balance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 153
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->accountDetails:Lru/rocketbank/core/model/AccountDetailsModel;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->limits:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->details:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->nameInLatin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->pan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->currentTariff:Lru/rocketbank/core/model/TariffModel;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->nextTariff:Lru/rocketbank/core/model/TariffModel;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->changePin:Lru/rocketbank/core/model/dto/ChangePin;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object p2, p0, Lru/rocketbank/core/model/AccountModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lru/rocketbank/core/model/AccountModel;->plasticToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-short p2, p0, Lru/rocketbank/core/model/AccountModel;->year:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-short p2, p0, Lru/rocketbank/core/model/AccountModel;->month:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-boolean p2, p0, Lru/rocketbank/core/model/AccountModel;->applepay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lru/rocketbank/core/model/AccountModel;->cashOutCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-boolean p2, p0, Lru/rocketbank/core/model/AccountModel;->unlimitedCashouts:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object p2, p0, Lru/rocketbank/core/model/AccountModel;->freeCashOutLimitText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-wide v0, p0, Lru/rocketbank/core/model/AccountModel;->spent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 176
    iget-boolean p2, p0, Lru/rocketbank/core/model/AccountModel;->operations:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean p2, p0, Lru/rocketbank/core/model/AccountModel;->changeLimits:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-boolean p2, p0, Lru/rocketbank/core/model/AccountModel;->extracts:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 182
    iget-object v0, p0, Lru/rocketbank/core/model/AccountModel;->betterLimits:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 183
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
