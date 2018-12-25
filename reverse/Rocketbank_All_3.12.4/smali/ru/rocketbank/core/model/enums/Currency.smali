.class public final enum Lru/rocketbank/core/model/enums/Currency;
.super Ljava/lang/Enum;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/Currency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/Currency;

.field public static final enum DOLLAR:Lru/rocketbank/core/model/enums/Currency;

.field public static final enum EURO:Lru/rocketbank/core/model/enums/Currency;

.field public static final enum ROUBLE:Lru/rocketbank/core/model/enums/Currency;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lru/rocketbank/core/model/enums/Currency;

    const-string v1, "EURO"

    const-string v2, "EUR"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lru/rocketbank/core/model/enums/Currency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Currency;->EURO:Lru/rocketbank/core/model/enums/Currency;

    .line 5
    new-instance v0, Lru/rocketbank/core/model/enums/Currency;

    const-string v1, "DOLLAR"

    const-string v2, "USD"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lru/rocketbank/core/model/enums/Currency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Currency;->DOLLAR:Lru/rocketbank/core/model/enums/Currency;

    .line 6
    new-instance v0, Lru/rocketbank/core/model/enums/Currency;

    const-string v1, "ROUBLE"

    const-string v2, "RUB"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lru/rocketbank/core/model/enums/Currency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lru/rocketbank/core/model/enums/Currency;

    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->EURO:Lru/rocketbank/core/model/enums/Currency;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->DOLLAR:Lru/rocketbank/core/model/enums/Currency;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    aput-object v1, v0, v5

    sput-object v0, Lru/rocketbank/core/model/enums/Currency;->$VALUES:[Lru/rocketbank/core/model/enums/Currency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lru/rocketbank/core/model/enums/Currency;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;
    .locals 5

    .line 15
    invoke-static {}, Lru/rocketbank/core/model/enums/Currency;->values()[Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 16
    iget-object v4, v3, Lru/rocketbank/core/model/enums/Currency;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;
    .locals 1

    .line 3
    const-class v0, Lru/rocketbank/core/model/enums/Currency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/Currency;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/Currency;
    .locals 1

    .line 3
    sget-object v0, Lru/rocketbank/core/model/enums/Currency;->$VALUES:[Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/Currency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/Currency;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/model/enums/Currency;->value:Ljava/lang/String;

    return-object v0
.end method
