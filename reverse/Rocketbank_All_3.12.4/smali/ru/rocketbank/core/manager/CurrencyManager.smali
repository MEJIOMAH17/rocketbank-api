.class public final Lru/rocketbank/core/manager/CurrencyManager;
.super Ljava/lang/Object;
.source "CurrencyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyManager.kt\nru/rocketbank/core/manager/CurrencyManager\n*L\n1#1,49:1\n*E\n"
.end annotation


# instance fields
.field private final currencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rubCurrency:Ljava/util/Currency;

.field private final rubCurrencySymbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u20bd"

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/manager/CurrencyManager;->rubCurrencySymbol:Ljava/lang/String;

    const-string v0, "RUB"

    .line 16
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/manager/CurrencyManager;->rubCurrency:Ljava/util/Currency;

    .line 19
    new-instance v0, Lru/rocketbank/core/utils/CurrencyData;

    invoke-direct {v0}, Lru/rocketbank/core/utils/CurrencyData;-><init>()V

    invoke-virtual {v0}, Lru/rocketbank/core/utils/CurrencyData;->getHashMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lru/rocketbank/core/manager/CurrencyManager;->currencies:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_4

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "RUB"

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    iget-object p1, p0, Lru/rocketbank/core/manager/CurrencyManager;->rubCurrencySymbol:Ljava/lang/String;

    return-object p1

    .line 38
    :cond_2
    iget-object v1, p0, Lru/rocketbank/core/manager/CurrencyManager;->currencies:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCurrencySymbolRub()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/manager/CurrencyManager;->rubCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method
