.class public final Lru/rocketbank/r2d2/activities/card/CardLimits;
.super Ljava/lang/Object;
.source "CardLimitData.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/activities/card/CardLimits;

.field private static final card:Lru/rocketbank/r2d2/activities/card/CardLimitData;

.field private static final cash:Lru/rocketbank/r2d2/activities/card/CardLimitData;

.field private static final cashAbroad:Lru/rocketbank/r2d2/activities/card/CardLimitData;

.field private static final internet:Lru/rocketbank/r2d2/activities/card/CardLimitData;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimits;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/card/CardLimits;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->INSTANCE:Lru/rocketbank/r2d2/activities/card/CardLimits;

    .line 13
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    const v2, 0x7f11027b

    const v3, 0x7f110442

    const v4, 0x7f110443

    const v5, 0x7f080158

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/activities/card/CardLimitData;-><init>(IIIILandroid/databinding/ObservableBoolean;ILkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->cash:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    .line 19
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    const v10, 0x7f11027a

    const v11, 0x7f110440

    const v12, 0x7f110441

    const v13, 0x7f080159

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lru/rocketbank/r2d2/activities/card/CardLimitData;-><init>(IIIILandroid/databinding/ObservableBoolean;ILkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->cashAbroad:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    .line 25
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    const v2, 0x7f11027d

    const v3, 0x7f110444

    const v4, 0x7f110445

    const v5, 0x7f08015a

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/activities/card/CardLimitData;-><init>(IIIILandroid/databinding/ObservableBoolean;ILkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->internet:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    const v10, 0x7f110279

    const v11, 0x7f110446

    const v12, 0x7f110447

    const v13, 0x7f08015b

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lru/rocketbank/r2d2/activities/card/CardLimitData;-><init>(IIIILandroid/databinding/ObservableBoolean;ILkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->card:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCard()Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 1

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->card:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    return-object v0
.end method

.method public final getCash()Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 1

    .line 13
    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->cash:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    return-object v0
.end method

.method public final getCashAbroad()Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 1

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->cashAbroad:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    return-object v0
.end method

.method public final getInternet()Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 1

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->internet:Lru/rocketbank/r2d2/activities/card/CardLimitData;

    return-object v0
.end method
