.class public final synthetic Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 10

    invoke-static {}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->values()[Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/16 v8, 0x8

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v9}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v9

    aput v5, v0, v9

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_TUR:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v9}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v9

    aput v4, v0, v9

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NOT_FOUND:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v9}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v9

    aput v3, v0, v9

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_WALLET:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v9}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v9

    aput v2, v0, v9

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_NOT_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v9}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v9

    aput v1, v0, v9

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v9, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NOT_WORKS:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v9}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v9

    aput v6, v0, v9

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v6, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->PENDING_ADD:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v6

    aput v7, v0, v6

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v6, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_UNTOKENIZED:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v6

    aput v8, v0, v6

    invoke-static {}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->values()[Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v6, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_SUPPORTED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {v6}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->ordinal()I

    move-result v6

    aput v5, v0, v6

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v6, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->CARD_ADDED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {v6}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->ordinal()I

    move-result v6

    aput v4, v0, v6

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v6, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_READY:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {v6}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->ordinal()I

    move-result v6

    aput v3, v0, v6

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v6, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->UPDATE_NEED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {v6}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->ordinal()I

    move-result v6

    aput v2, v0, v6

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v2, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NO_CARD:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    invoke-virtual {v2}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->ordinal()I

    move-result v2

    aput v1, v0, v2

    invoke-static {}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->values()[Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->OTHER:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    invoke-virtual {v1}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->NOT_FOUND:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    invoke-virtual {v1}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->UNTOKENIZED:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    invoke-virtual {v1}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
