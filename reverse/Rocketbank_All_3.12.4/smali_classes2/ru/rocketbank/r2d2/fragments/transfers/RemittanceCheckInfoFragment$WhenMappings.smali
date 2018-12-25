.class public final synthetic Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->values()[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v4, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v4}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v4

    aput v1, v0, v4

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
