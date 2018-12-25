.class public final enum Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;
.super Ljava/lang/Enum;
.source "Tariff.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/tariffs/Tariff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TariffState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

.field public static final enum ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

.field public static final enum NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

.field public static final enum SALARY_SHOW_INSTRUCTION:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

.field public static final enum WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    new-instance v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    const-string v2, "ACTIVE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    const-string v2, "NOT_ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    const-string v2, "WILL_BE_ACTIVATED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    const-string v2, "SALARY_SHOW_INSTRUCTION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->SALARY_SHOW_INSTRUCTION:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->$VALUES:[Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;
    .locals 1

    const-class v0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;
    .locals 1

    sget-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->$VALUES:[Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v0}, [Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    return-object v0
.end method
