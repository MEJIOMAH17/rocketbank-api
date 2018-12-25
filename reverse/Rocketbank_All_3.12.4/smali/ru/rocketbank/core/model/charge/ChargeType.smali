.class public final enum Lru/rocketbank/core/model/charge/ChargeType;
.super Ljava/lang/Enum;
.source "ChargeType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/charge/ChargeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/charge/ChargeType;

.field public static final enum PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

.field public static final enum PENALTY_TAX:Lru/rocketbank/core/model/charge/ChargeType;

.field public static final enum TAX:Lru/rocketbank/core/model/charge/ChargeType;


# instance fields
.field private final activityTitle:I

.field private final buttonText:I

.field private final providerID:I

.field private final providerName:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v0, v0, [Lru/rocketbank/core/model/charge/ChargeType;

    new-instance v8, Lru/rocketbank/core/model/charge/ChargeType;

    const-string v2, "TAX"

    const/4 v3, 0x0

    const v4, 0x7f1100b6

    const v5, 0x7f1100c1

    const v6, 0x7f11045e

    const v7, 0x1863d    # 1.39991E-40f

    move-object v1, v8

    .line 6
    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/model/charge/ChargeType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v8, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lru/rocketbank/core/model/charge/ChargeType;

    const-string v10, "PENALTY"

    const/4 v11, 0x1

    const v12, 0x7f1100b4

    const v13, 0x7f1100bf

    const v14, 0x7f110376

    const v15, 0x1863c

    move-object v9, v1

    .line 7
    invoke-direct/range {v9 .. v15}, Lru/rocketbank/core/model/charge/ChargeType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/core/model/charge/ChargeType;

    const-string v4, "PENALTY_TAX"

    const/4 v5, 0x2

    const v6, 0x7f1100b5

    const v7, 0x7f1100c0

    const v8, 0x7f11037a

    const v9, 0x1863e    # 1.39993E-40f

    move-object v3, v1

    .line 8
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/core/model/charge/ChargeType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY_TAX:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/model/charge/ChargeType;->$VALUES:[Lru/rocketbank/core/model/charge/ChargeType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lru/rocketbank/core/model/charge/ChargeType;->activityTitle:I

    iput p4, p0, Lru/rocketbank/core/model/charge/ChargeType;->buttonText:I

    iput p5, p0, Lru/rocketbank/core/model/charge/ChargeType;->providerName:I

    iput p6, p0, Lru/rocketbank/core/model/charge/ChargeType;->providerID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/charge/ChargeType;
    .locals 1

    const-class v0, Lru/rocketbank/core/model/charge/ChargeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/charge/ChargeType;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/charge/ChargeType;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/charge/ChargeType;->$VALUES:[Lru/rocketbank/core/model/charge/ChargeType;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/charge/ChargeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/charge/ChargeType;

    return-object v0
.end method


# virtual methods
.method public final getActivityTitle()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/model/charge/ChargeType;->activityTitle:I

    return v0
.end method

.method public final getButtonText()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/model/charge/ChargeType;->buttonText:I

    return v0
.end method

.method public final getProviderID()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/model/charge/ChargeType;->providerID:I

    return v0
.end method

.method public final getProviderName()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/model/charge/ChargeType;->providerName:I

    return v0
.end method
