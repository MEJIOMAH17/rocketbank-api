.class public final Lru/rocketbank/core/utils/MoneyFormatter;
.super Ljava/lang/Object;
.source "MoneyFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;,
        Lru/rocketbank/core/utils/MoneyFormatter$Companion;
    }
.end annotation


# static fields
.field private static final CURRENCY_ROCKET:Ljava/lang/String; = "RRU"

.field public static final Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private final decimalFormat:Ljava/text/DecimalFormat;

.field private floorAmount:Z

.field private final loyaltyUnitsResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/utils/MoneyFormatter$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorization"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->context:Landroid/content/Context;

    iput-object p3, p0, Lru/rocketbank/core/utils/MoneyFormatter;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 14
    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1}, Ljava/text/DecimalFormat;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 16
    invoke-virtual {p2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object p1

    const-string p2, "userData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object p2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {p1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object p1

    .line 1043
    invoke-virtual {p2, p1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object p1

    .line 1011
    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result p1

    .line 16
    iput p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->loyaltyUnitsResourceId:I

    .line 19
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 p2, 0x2c

    .line 21
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    const/16 p2, 0x20

    .line 22
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const/16 p2, 0x2212

    .line 23
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 25
    iget-object p2, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2, p1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 26
    iget-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 27
    iget-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 28
    iget-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    return-void
.end method

.method public static final synthetic access$getCURRENCY_ROCKET$cp()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lru/rocketbank/core/utils/MoneyFormatter;->CURRENCY_ROCKET:Ljava/lang/String;

    return-object v0
.end method

.method private final round(D)I
    .locals 3

    .line 90
    iget-boolean v0, p0, Lru/rocketbank/core/utils/MoneyFormatter;->floorAmount:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method public final format(DLjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p3}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "currency.toString()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;
    .locals 5

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double p4, v1, v3

    if-gez p4, :cond_0

    sget-object p4, Lru/rocketbank/core/utils/MoneyFormatter;->CURRENCY_ROCKET:Ljava/lang/String;

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, v0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 48
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, v0}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 49
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MoneyFormatter;->round(D)I

    move-result v0

    .line 50
    iget-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "decimalFormat.format(displayingAmount.toLong())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {p4, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 44
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 45
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "decimalFormat.format(amount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :goto_1
    sget-object p2, Lru/rocketbank/core/utils/MoneyFormatter;->CURRENCY_ROCKET:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 54
    iget-object p2, p0, Lru/rocketbank/core/utils/MoneyFormatter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lru/rocketbank/core/utils/MoneyFormatter;->loyaltyUnitsResourceId:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.resources.getQua\u2026d, abs(displayingAmount))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_2
    iget-object p2, p0, Lru/rocketbank/core/utils/MoneyFormatter;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 59
    :cond_3
    :goto_2
    new-instance p3, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public final formatWithSign(DLjava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double p4, v1, v3

    if-gez p4, :cond_0

    sget-object p4, Lru/rocketbank/core/utils/MoneyFormatter;->CURRENCY_ROCKET:Ljava/lang/String;

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, v0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 75
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, v0}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 76
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/utils/MoneyFormatter;->round(D)I

    move-result v0

    .line 77
    iget-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "decimalFormat.format(displayingAmount.toLong())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {p4, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 71
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 72
    iget-object p4, p0, Lru/rocketbank/core/utils/MoneyFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p4, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "decimalFormat.format(amount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const-string v2, " "

    const-string/jumbo v3, "\u00a0"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 79
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 81
    sget-object p2, Lru/rocketbank/core/utils/MoneyFormatter;->CURRENCY_ROCKET:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 82
    iget-object p2, p0, Lru/rocketbank/core/utils/MoneyFormatter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lru/rocketbank/core/utils/MoneyFormatter;->loyaltyUnitsResourceId:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.resources.getQua\u2026d, abs(displayingAmount))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_2
    iget-object p2, p0, Lru/rocketbank/core/utils/MoneyFormatter;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 87
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lru/rocketbank/core/utils/MoneyFormatter;->loyaltyUnitsResourceId:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.resources.getQua\u2026sResourceId, abs(amount))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setFloorAmount(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lru/rocketbank/core/utils/MoneyFormatter;->floorAmount:Z

    return-void
.end method
