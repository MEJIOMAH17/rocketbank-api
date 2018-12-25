.class public final synthetic Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lru/rocketbank/core/model/charge/ChargeType;->values()[Lru/rocketbank/core/model/charge/ChargeType;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v4, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v4}, Lru/rocketbank/core/model/charge/ChargeType;->ordinal()I

    move-result v4

    aput v1, v0, v4

    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY_TAX:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
