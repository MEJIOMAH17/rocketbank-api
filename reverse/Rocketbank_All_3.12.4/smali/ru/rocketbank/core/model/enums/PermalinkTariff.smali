.class public final enum Lru/rocketbank/core/model/enums/PermalinkTariff;
.super Ljava/lang/Enum;
.source "PermalinkTariff.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/PermalinkTariff;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum ONETWOTRIP:Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum ROCKET:Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum TOCHKA_METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum TOCHKA_METROPOLIS_COZY_PLATINUM:Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum ZP_METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

.field public static final enum ZP_METROPOLIS_COZY_PLATINUM:Lru/rocketbank/core/model/enums/PermalinkTariff;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "METROPOLIS"

    const-string v2, "metropolis"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    .line 5
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "ROCKET"

    const-string v2, "rocketbank_free"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->ROCKET:Lru/rocketbank/core/model/enums/PermalinkTariff;

    .line 6
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "ZP_METROPOLIS"

    const-string v2, "zp_metropolis"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->ZP_METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    .line 7
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "ZP_METROPOLIS_COZY_PLATINUM"

    const-string v2, "zp_metropolis_cozy_platinum"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->ZP_METROPOLIS_COZY_PLATINUM:Lru/rocketbank/core/model/enums/PermalinkTariff;

    .line 8
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "TOCHKA_METROPOLIS_COZY_PLATINUM"

    const-string v2, "tochka_metropolis_cozy_platinum"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->TOCHKA_METROPOLIS_COZY_PLATINUM:Lru/rocketbank/core/model/enums/PermalinkTariff;

    .line 9
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "TOCHKA_METROPOLIS"

    const-string v2, "tochka_metropolis"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->TOCHKA_METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    .line 10
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    const-string v1, "ONETWOTRIP"

    const-string v2, "onetwotrip"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lru/rocketbank/core/model/enums/PermalinkTariff;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->ONETWOTRIP:Lru/rocketbank/core/model/enums/PermalinkTariff;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lru/rocketbank/core/model/enums/PermalinkTariff;

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->ROCKET:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->ZP_METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v5

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->ZP_METROPOLIS_COZY_PLATINUM:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v6

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->TOCHKA_METROPOLIS_COZY_PLATINUM:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v7

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->TOCHKA_METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v8

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkTariff;->ONETWOTRIP:Lru/rocketbank/core/model/enums/PermalinkTariff;

    aput-object v1, v0, v9

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->$VALUES:[Lru/rocketbank/core/model/enums/PermalinkTariff;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lru/rocketbank/core/model/enums/PermalinkTariff;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/PermalinkTariff;
    .locals 5

    .line 19
    invoke-static {}, Lru/rocketbank/core/model/enums/PermalinkTariff;->values()[Lru/rocketbank/core/model/enums/PermalinkTariff;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 20
    iget-object v4, v3, Lru/rocketbank/core/model/enums/PermalinkTariff;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    sget-object p0, Lru/rocketbank/core/model/enums/PermalinkTariff;->ROCKET:Lru/rocketbank/core/model/enums/PermalinkTariff;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/PermalinkTariff;
    .locals 1

    .line 3
    const-class v0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/PermalinkTariff;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/PermalinkTariff;
    .locals 1

    .line 3
    sget-object v0, Lru/rocketbank/core/model/enums/PermalinkTariff;->$VALUES:[Lru/rocketbank/core/model/enums/PermalinkTariff;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/PermalinkTariff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/PermalinkTariff;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/enums/PermalinkTariff;->value:Ljava/lang/String;

    return-object v0
.end method
