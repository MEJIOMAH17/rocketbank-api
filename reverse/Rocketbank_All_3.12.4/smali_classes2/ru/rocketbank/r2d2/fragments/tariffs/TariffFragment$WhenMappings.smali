.class public final synthetic Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->values()[Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v4, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v4

    aput v3, v0, v4

    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v4, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v4

    aput v2, v0, v4

    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v4, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->SALARY_SHOW_INSTRUCTION:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v4

    aput v1, v0, v4

    invoke-static {}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->values()[Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v4, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v4

    aput v3, v0, v4

    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v3, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v3

    aput v2, v0, v3

    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v2, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->SALARY_SHOW_INSTRUCTION:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v2

    aput v1, v0, v2

    return-void
.end method
