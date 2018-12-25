.class public final Lru/rocketbank/core/utils/CurrencyData;
.super Ljava/lang/Object;
.source "CurrencyData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyData.kt\nru/rocketbank/core/utils/CurrencyData\n*L\n1#1,174:1\n*E\n"
.end annotation


# instance fields
.field private final hashMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AED"

    const-string/jumbo v2, "\u062f.\u0625"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AFN"

    const-string/jumbo v2, "\u060b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ALL"

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AMD"

    const-string/jumbo v2, "\u0564\u0580."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ANG"

    const-string/jumbo v2, "\u0192"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AOA"

    const-string v2, "Kz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ARS"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AUD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AWG"

    const-string/jumbo v2, "\u0192"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "AZN"

    const-string/jumbo v2, "\u20bc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BAM"

    const-string/jumbo v2, "\u041a\u041c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BBD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BDT"

    const-string/jumbo v2, "\u09f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BGN"

    const-string/jumbo v2, "\u043b\u0432"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BHD"

    const-string/jumbo v2, "\u0628.\u062f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BIF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BMD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BND"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BOB"

    const-string v2, "Bs."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BRL"

    const-string v2, "R$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BSD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BTN"

    const-string v2, "Nu."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BWP"

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BYR"

    const-string v2, "Br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "BZD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CAD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CDF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CHF"

    const-string v2, "CHF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CLF"

    const-string v2, "UF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CLP"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CNY"

    const-string/jumbo v2, "\u00a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "COP"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CRC"

    const-string/jumbo v2, "\u20a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CUC"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CUP"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CVE"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CZK"

    const-string v2, "K\u010d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "DJF"

    const-string v2, "Fdj"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "DKK"

    const-string v2, "kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "DOP"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "DZD"

    const-string/jumbo v2, "\u062f.\u062c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "EGP"

    const-string/jumbo v2, "\u062c.\u0645"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ERN"

    const-string v2, "Nfk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ETB"

    const-string v2, "Br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "EUR"

    const-string/jumbo v2, "\u20ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "FJD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "FKP"

    const-string/jumbo v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GBP"

    const-string/jumbo v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GEL"

    const-string/jumbo v2, "\u10da"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GHS"

    const-string/jumbo v2, "\u20b5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GIP"

    const-string/jumbo v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GMD"

    const-string v2, "D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GNF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GTQ"

    const-string v2, "Q"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "GYD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "HKD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "HNL"

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "HRK"

    const-string v2, "kn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "HTG"

    const-string v2, "G"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "HUF"

    const-string v2, "Ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "IDR"

    const-string v2, "Rp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ILS"

    const-string/jumbo v2, "\u20aa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "INR"

    const-string/jumbo v2, "\u20b9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "IQD"

    const-string/jumbo v2, "\u0639.\u062f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "IRR"

    const-string/jumbo v2, "\ufdfc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ISK"

    const-string v2, "kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "JMD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "JOD"

    const-string/jumbo v2, "\u062f.\u0627"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "JPY"

    const-string/jumbo v2, "\u00a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KES"

    const-string v2, "KSh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KGS"

    const-string v2, "som"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KHR"

    const-string/jumbo v2, "\u17db"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KMF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KPW"

    const-string/jumbo v2, "\u20a9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KRW"

    const-string/jumbo v2, "\u20a9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KWD"

    const-string/jumbo v2, "\u062f.\u0643"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KYD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "KZT"

    const-string/jumbo v2, "\u3012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LAK"

    const-string/jumbo v2, "\u20ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LBP"

    const-string/jumbo v2, "\u0644.\u0644"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LKR"

    const-string/jumbo v2, "\u20a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LRD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LSL"

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LTL"

    const-string v2, "Lt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LVL"

    const-string v2, "Ls"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "LYD"

    const-string/jumbo v2, "\u0644.\u062f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MAD"

    const-string/jumbo v2, "\u062f.\u0645."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MDL"

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MGA"

    const-string v2, "Ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MKD"

    const-string/jumbo v2, "\u0434\u0435\u043d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MMK"

    const-string v2, "K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MNT"

    const-string/jumbo v2, "\u20ae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MOP"

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MRO"

    const-string v2, "UM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MUR"

    const-string/jumbo v2, "\u20a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MVR"

    const-string v2, "MVR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MWK"

    const-string v2, "MK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MXN"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MYR"

    const-string v2, "RM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "MZN"

    const-string v2, "MTn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "NAD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "NGN"

    const-string/jumbo v2, "\u20a6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "NIO"

    const-string v2, "C$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "NOK"

    const-string v2, "kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "NPR"

    const-string/jumbo v2, "\u20a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "NZD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "OMR"

    const-string/jumbo v2, "\u0631.\u0639."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PAB"

    const-string v2, "B/."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PEN"

    const-string v2, "S/."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PGK"

    const-string v2, "K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PHP"

    const-string/jumbo v2, "\u20b1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PKR"

    const-string/jumbo v2, "\u20a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PLN"

    const-string/jumbo v2, "z\u0142"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "PYG"

    const-string/jumbo v2, "\u20b2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "QAR"

    const-string/jumbo v2, "\u0631.\u0642"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "RON"

    const-string v2, "Lei"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "RSD"

    const-string/jumbo v2, "\u0420\u0421\u0414"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "RUB"

    const-string/jumbo v2, "\u20bd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "RWF"

    const-string v2, "FRw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SAR"

    const-string/jumbo v2, "\u0631.\u0633"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SBD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SCR"

    const-string/jumbo v2, "\u20a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SDG"

    const-string/jumbo v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SEK"

    const-string v2, "kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SGD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SHP"

    const-string/jumbo v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SKK"

    const-string v2, "Sk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SLL"

    const-string v2, "Le"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SOS"

    const-string v2, "Sh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SRD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SSP"

    const-string/jumbo v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "STD"

    const-string v2, "Db"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SVC"

    const-string/jumbo v2, "\u20a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SYP"

    const-string/jumbo v2, "\u00a3S"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "SZL"

    const-string v2, "E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "THB"

    const-string/jumbo v2, "\u0e3f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TJS"

    const-string/jumbo v2, "\u0405\u041c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TMT"

    const-string v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TND"

    const-string/jumbo v2, "\u062f.\u062a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TOP"

    const-string v2, "T$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TRY"

    const-string/jumbo v2, "\u20ba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TTD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TWD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "TZS"

    const-string v2, "Sh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "UAH"

    const-string/jumbo v2, "\u20b4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "UGX"

    const-string v2, "USh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "USD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "UYU"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "UZS"

    const-string/jumbo v2, "\u0441\u0443\u043c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "VEF"

    const-string v2, "Bs F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "VND"

    const-string/jumbo v2, "\u20ab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "VUV"

    const-string v2, "Vt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "WST"

    const-string v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XAF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XAG"

    const-string v2, "oz t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XAU"

    const-string v2, "oz t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XCD"

    const-string v2, "$"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XDR"

    const-string v2, "SDR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XOF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "XPF"

    const-string v2, "Fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "YER"

    const-string/jumbo v2, "\ufdfc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ZAR"

    const-string v2, "R"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ZMK"

    const-string v2, "ZK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ZMW"

    const-string v2, "ZK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getHashMap()Landroid/support/v4/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/utils/CurrencyData;->hashMap:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method
