.class public final Lru/rocketbank/r2d2/manager/MoneyManager;
.super Ljava/lang/Object;
.source "MoneyManager.java"


# static fields
.field private static moneyManager:Lru/rocketbank/r2d2/manager/MoneyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lru/rocketbank/r2d2/manager/MoneyManager;

    invoke-direct {v0}, Lru/rocketbank/r2d2/manager/MoneyManager;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/manager/MoneyManager;->moneyManager:Lru/rocketbank/r2d2/manager/MoneyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private format(ZDLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 72
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 73
    invoke-virtual {p0, p2, p3, p4}, Lru/rocketbank/r2d2/manager/MoneyManager;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/manager/MoneyManager;->getDecimalFormat()Ljava/text/DecimalFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    if-eqz p1, :cond_1

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lru/rocketbank/r2d2/manager/MoneyManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/manager/MoneyManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDecimalFormat()Ljava/text/DecimalFormat;
    .locals 2

    .line 58
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v1, 0x2c

    .line 59
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    const/16 v1, 0x20

    .line 60
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const/16 v1, 0x2d

    .line 61
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 62
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    const/4 v0, 0x3

    .line 65
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    const/4 v0, 0x2

    .line 67
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-object v1
.end method

.method public static getInstance()Lru/rocketbank/r2d2/manager/MoneyManager;
    .locals 1

    .line 15
    sget-object v0, Lru/rocketbank/r2d2/manager/MoneyManager;->moneyManager:Lru/rocketbank/r2d2/manager/MoneyManager;

    return-object v0
.end method


# virtual methods
.method public final format(DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 39
    invoke-direct {p0}, Lru/rocketbank/r2d2/manager/MoneyManager;->getDecimalFormat()Ljava/text/DecimalFormat;

    move-result-object v0

    const/4 v1, 0x2

    .line 40
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 41
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lru/rocketbank/r2d2/manager/MoneyManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(DLru/rocketbank/core/model/enums/Currency;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    invoke-virtual {p3}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/manager/MoneyManager;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p3}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/manager/MoneyManager;->formatBottom(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/manager/MoneyManager;->formatTop(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatBottom(DLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0, p1, p2, p3}, Lru/rocketbank/r2d2/manager/MoneyManager;->format(ZDLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatTop(DLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, p1, p2, p3}, Lru/rocketbank/r2d2/manager/MoneyManager;->format(ZDLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lru/rocketbank/core/model/enums/Currency;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/manager/MoneyManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
