.class public final synthetic Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 9

    invoke-static {}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->values()[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v7, v0, v8

    invoke-static {}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->values()[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v7, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v6, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ip:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v5, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v4, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v3, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v2, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->unknown:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v1, v0, v8

    invoke-static {}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->values()[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v7, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v6, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v5, v0, v8

    invoke-static {}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->values()[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v8, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v8}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v8

    aput v7, v0, v8

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v7, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v7}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v7

    aput v6, v0, v7

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v6, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v6}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v6

    aput v5, v0, v6

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v5, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v5}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v5

    aput v4, v0, v5

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v4, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ip:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v4}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v4

    aput v3, v0, v4

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v3, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v3

    aput v2, v0, v3

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v2, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->unknown:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v2}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v2

    aput v1, v0, v2

    return-void
.end method
