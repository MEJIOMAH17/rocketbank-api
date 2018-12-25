.class public final Lru/rocketbank/core/network/model/Deposit;
.super Ljava/lang/Object;
.source "Deposit.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/Deposit$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/Deposit;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/Deposit$Companion;


# instance fields
.field private bank:Ljava/lang/String;

.field private capitalizationAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization_available"
    .end annotation
.end field

.field private capitalizationSwitchRefillRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization_switch_refill_rate"
    .end annotation
.end field

.field private capitalizationSwitchStandardRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization_switch_standard_rate"
    .end annotation
.end field

.field private capitalizationSwitchTextCard:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization_switch_texts_card"
    .end annotation
.end field

.field private capitalizationSwitchTextDeposit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization_switch_texts_deposit"
    .end annotation
.end field

.field private capitalizationText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capitalization_switch_text"
    .end annotation
.end field

.field private currency:Ljava/lang/String;

.field private currencyText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_text"
    .end annotation
.end field

.field private minAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_amount"
    .end annotation
.end field

.field private minAmountText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_amount_text"
    .end annotation
.end field

.field private otherCurrenciesText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "other_currencies_text"
    .end annotation
.end field

.field private period:I

.field private periodText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "period_text"
    .end annotation
.end field

.field private permalink:Ljava/lang/String;

.field private rate:D

.field private refillRate:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refill_rate"
    .end annotation
.end field

.field private refillSwitchTextFalse:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refill_switch_texts_false"
    .end annotation
.end field

.field private refillSwitchTextTrue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refill_switch_texts_true"
    .end annotation
.end field

.field private rocketRoubles:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rr_percent_text"
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/Deposit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/Deposit$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/Deposit;->Companion:Lru/rocketbank/core/network/model/Deposit$Companion;

    .line 115
    new-instance v0, Lru/rocketbank/core/network/model/Deposit$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/Deposit$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/network/model/Deposit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationText:Ljava/lang/String;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchStandardRate:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchRefillRate:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationText:Ljava/lang/String;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchStandardRate:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchRefillRate:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->bank:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->currency:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->currencyText:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->rocketRoubles:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/network/model/Deposit;->period:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->periodText:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->permalink:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->minAmountText:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->minAmount:Ljava/lang/Double;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/network/model/Deposit;->rate:D

    .line 73
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->refillRate:Ljava/lang/Double;

    .line 74
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationAvailable:Z

    .line 75
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextTrue:Ljava/lang/String;

    .line 76
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextFalse:Ljava/lang/String;

    .line 77
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextCard:Ljava/lang/String;

    .line 78
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextDeposit:Ljava/lang/String;

    .line 79
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->otherCurrenciesText:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationText:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchStandardRate:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "`in`.readString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchRefillRate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBank()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapitalizationAvailable()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationAvailable:Z

    return v0
.end method

.method public final getCapitalizationSwitchRefillRate()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchRefillRate:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapitalizationSwitchStandardRate()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchStandardRate:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapitalizationSwitchTextCard()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextCard:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapitalizationSwitchTextDeposit()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextDeposit:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapitalizationText()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationText:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrencyText()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->currencyText:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinAmount()Ljava/lang/Double;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->minAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getMinAmountText()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->minAmountText:Ljava/lang/String;

    return-object v0
.end method

.method public final getOtherCurrenciesText()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->otherCurrenciesText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriod()I
    .locals 1

    .line 24
    iget v0, p0, Lru/rocketbank/core/network/model/Deposit;->period:I

    return v0
.end method

.method public final getPeriodText()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->periodText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lru/rocketbank/core/network/model/Deposit;->rate:D

    return-wide v0
.end method

.method public final getRefillRate()Ljava/lang/Double;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->refillRate:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRefillSwitchTextFalse()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextFalse:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefillSwitchTextTrue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextTrue:Ljava/lang/String;

    return-object v0
.end method

.method public final getRocketRoubles()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->rocketRoubles:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/network/model/Deposit;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setBank(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->bank:Ljava/lang/String;

    return-void
.end method

.method public final setCapitalizationAvailable(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationAvailable:Z

    return-void
.end method

.method public final setCapitalizationSwitchRefillRate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchRefillRate:Ljava/lang/String;

    return-void
.end method

.method public final setCapitalizationSwitchStandardRate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchStandardRate:Ljava/lang/String;

    return-void
.end method

.method public final setCapitalizationSwitchTextCard(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextCard:Ljava/lang/String;

    return-void
.end method

.method public final setCapitalizationSwitchTextDeposit(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextDeposit:Ljava/lang/String;

    return-void
.end method

.method public final setCapitalizationText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationText:Ljava/lang/String;

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setCurrencyText(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->currencyText:Ljava/lang/String;

    return-void
.end method

.method public final setMinAmount(Ljava/lang/Double;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->minAmount:Ljava/lang/Double;

    return-void
.end method

.method public final setMinAmountText(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->minAmountText:Ljava/lang/String;

    return-void
.end method

.method public final setOtherCurrenciesText(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->otherCurrenciesText:Ljava/lang/String;

    return-void
.end method

.method public final setPeriod(I)V
    .locals 0

    .line 24
    iput p1, p0, Lru/rocketbank/core/network/model/Deposit;->period:I

    return-void
.end method

.method public final setPeriodText(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->periodText:Ljava/lang/String;

    return-void
.end method

.method public final setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->permalink:Ljava/lang/String;

    return-void
.end method

.method public final setRate(D)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lru/rocketbank/core/network/model/Deposit;->rate:D

    return-void
.end method

.method public final setRefillRate(Ljava/lang/Double;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->refillRate:Ljava/lang/Double;

    return-void
.end method

.method public final setRefillSwitchTextFalse(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextFalse:Ljava/lang/String;

    return-void
.end method

.method public final setRefillSwitchTextTrue(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextTrue:Ljava/lang/String;

    return-void
.end method

.method public final setRocketRoubles(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->rocketRoubles:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/network/model/Deposit;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->bank:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->currencyText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->rocketRoubles:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget p2, p0, Lru/rocketbank/core/network/model/Deposit;->period:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->periodText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->permalink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->minAmountText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->minAmount:Ljava/lang/Double;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 100
    iget-wide v0, p0, Lru/rocketbank/core/network/model/Deposit;->rate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 101
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->refillRate:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 102
    iget-boolean p2, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationAvailable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextTrue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 104
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->refillSwitchTextFalse:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 105
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextCard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 106
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchTextDeposit:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 107
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->otherCurrenciesText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 108
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchStandardRate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lru/rocketbank/core/network/model/Deposit;->capitalizationSwitchRefillRate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
