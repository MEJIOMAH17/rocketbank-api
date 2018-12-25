.class public Lru/rocketbank/core/model/RocketRubleHistoryOperation;
.super Ljava/lang/Object;
.source "RocketRubleHistoryOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

.field private static final OPERATION_ACTION:I = 0xa

.field private static final OPERATION_ACTUAL:I = 0xc

.field private static final OPERATION_APP_REVIEW:I = 0x6

.field private static final OPERATION_BAR:I = 0xb

.field private static final OPERATION_CHOOSEN_MONTH_CASH_BACK:I = 0x7

.field private static final OPERATION_DELIMITER:I = 0x9

.field private static final OPERATION_DISCOUNT:I = 0x5

.field private static final OPERATION_FRIEND:I = 0x2

.field private static final OPERATION_HEADER:I = -0x21522ff3

.field private static final OPERATION_HISTORY:I = 0x4

.field private static final OPERATION_MIGRATION:I = -0x3ffe2ff3

.field private static final OPERATION_MONTH_CASHBACK:I = 0x3

.field private static final OPERATION_NONE:I = 0x0

.field private static final OPERATION_NOT_FOUND:I = 0x8

.field private static final OPERATION_NO_COMPENSATION:I = -0x2ffffff3

.field private static final OPERATION_OPERATION:I = 0xe

.field private static final OPERATION_PUSH:I = 0x1

.field private static final OPERATION_ROCKETSHOP:I = 0xf

.field private static final OPERATION_STATISTICS:I = 0xd


# instance fields
.field private amount:Ljava/lang/Float;

.field private operationCustom:Lru/rocketbank/core/model/AbstractOperation;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    return-void
.end method

.method public constructor <init>(ILru/rocketbank/core/model/AbstractOperation;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->type:I

    iput-object p2, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->operationCustom:Lru/rocketbank/core/model/AbstractOperation;

    return-void
.end method

.method public synthetic constructor <init>(ILru/rocketbank/core/model/AbstractOperation;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    return-void
.end method

.method public static final synthetic access$getOPERATION_ACTION$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_ACTION:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_ACTUAL$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_ACTUAL:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_APP_REVIEW$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_APP_REVIEW:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_BAR$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_BAR:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_CHOOSEN_MONTH_CASH_BACK$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_CHOOSEN_MONTH_CASH_BACK:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_DELIMITER$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_DELIMITER:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_DISCOUNT$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_DISCOUNT:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_FRIEND$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_FRIEND:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_HEADER$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_HEADER:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_HISTORY$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_HISTORY:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_MIGRATION$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_MIGRATION:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_MONTH_CASHBACK$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_MONTH_CASHBACK:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_NONE$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_NONE:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_NOT_FOUND$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_NOT_FOUND:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_NO_COMPENSATION$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_NO_COMPENSATION:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_OPERATION$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_OPERATION:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_PUSH$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_PUSH:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_ROCKETSHOP$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_ROCKETSHOP:I

    return v0
.end method

.method public static final synthetic access$getOPERATION_STATISTICS$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->OPERATION_STATISTICS:I

    return v0
.end method


# virtual methods
.method public final getAmount()Ljava/lang/Float;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->amount:Ljava/lang/Float;

    return-object v0
.end method

.method public final getOperationCustom()Lru/rocketbank/core/model/AbstractOperation;
    .locals 1

    .line 3
    iget-object v0, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->operationCustom:Lru/rocketbank/core/model/AbstractOperation;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 3
    iget v0, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->type:I

    return v0
.end method

.method public final setAmount(Ljava/lang/Float;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->amount:Ljava/lang/Float;

    return-void
.end method

.method public final setOperationCustom(Lru/rocketbank/core/model/AbstractOperation;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->operationCustom:Lru/rocketbank/core/model/AbstractOperation;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 3
    iput p1, p0, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->type:I

    return-void
.end method
