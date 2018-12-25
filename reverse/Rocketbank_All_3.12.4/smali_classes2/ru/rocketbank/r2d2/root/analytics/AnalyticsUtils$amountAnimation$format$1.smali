.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils;->amountAnimation(Lru/rocketbank/core/widgets/RocketTextView;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field final synthetic $floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/CurrencyManager;Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;->$currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;->$floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;->invoke(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual$3bd129e3(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;->$floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sget-object p1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "0 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;->$currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
