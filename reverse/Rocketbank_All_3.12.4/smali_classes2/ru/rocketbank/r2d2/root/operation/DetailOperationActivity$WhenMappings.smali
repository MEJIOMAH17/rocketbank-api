.class public final synthetic Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lru/rocketbank/core/network/model/operation/OperationContextType;->values()[Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v3, Lru/rocketbank/core/network/model/operation/OperationContextType;->InternalCashInRequest:Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;->ordinal()I

    move-result v3

    aput v1, v0, v3

    sget-object v0, Lru/rocketbank/r2d2/root/operation/DetailOperationActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->InternalCashOutRequest:Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/operation/OperationContextType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
