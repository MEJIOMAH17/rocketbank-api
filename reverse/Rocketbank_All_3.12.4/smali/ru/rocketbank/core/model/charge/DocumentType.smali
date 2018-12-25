.class public final enum Lru/rocketbank/core/model/charge/DocumentType;
.super Ljava/lang/Enum;
.source "ChargeModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/charge/DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/charge/DocumentType;

.field public static final enum ctc:Lru/rocketbank/core/model/charge/DocumentType;

.field public static final enum driver_licence:Lru/rocketbank/core/model/charge/DocumentType;

.field public static final enum inn:Lru/rocketbank/core/model/charge/DocumentType;

.field public static final enum uin:Lru/rocketbank/core/model/charge/DocumentType;


# instance fields
.field private final chargeType:Lru/rocketbank/core/model/charge/ChargeType;

.field private final textStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Lru/rocketbank/core/model/charge/DocumentType;

    new-instance v1, Lru/rocketbank/core/model/charge/DocumentType;

    const-string v2, "driver_licence"

    .line 115
    sget-object v3, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v4, 0x0

    const v5, 0x7f11016f

    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/core/model/charge/DocumentType;-><init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;)V

    sput-object v1, Lru/rocketbank/core/model/charge/DocumentType;->driver_licence:Lru/rocketbank/core/model/charge/DocumentType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/charge/DocumentType;

    const-string v2, "ctc"

    .line 116
    sget-object v3, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v4, 0x1

    const v5, 0x7f110118

    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/core/model/charge/DocumentType;-><init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;)V

    sput-object v1, Lru/rocketbank/core/model/charge/DocumentType;->ctc:Lru/rocketbank/core/model/charge/DocumentType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/charge/DocumentType;

    const-string v2, "uin"

    .line 117
    sget-object v3, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v4, 0x2

    const v5, 0x7f110348

    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/core/model/charge/DocumentType;-><init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;)V

    sput-object v1, Lru/rocketbank/core/model/charge/DocumentType;->uin:Lru/rocketbank/core/model/charge/DocumentType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/charge/DocumentType;

    const-string v2, "inn"

    .line 118
    sget-object v3, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    const/4 v4, 0x3

    const v5, 0x7f110349

    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/core/model/charge/DocumentType;-><init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;)V

    sput-object v1, Lru/rocketbank/core/model/charge/DocumentType;->inn:Lru/rocketbank/core/model/charge/DocumentType;

    aput-object v1, v0, v4

    sput-object v0, Lru/rocketbank/core/model/charge/DocumentType;->$VALUES:[Lru/rocketbank/core/model/charge/DocumentType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lru/rocketbank/core/model/charge/ChargeType;",
            ")V"
        }
    .end annotation

    const-string v0, "chargeType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lru/rocketbank/core/model/charge/DocumentType;->textStringRes:I

    iput-object p4, p0, Lru/rocketbank/core/model/charge/DocumentType;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/charge/DocumentType;-><init>(Ljava/lang/String;IILru/rocketbank/core/model/charge/ChargeType;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/charge/DocumentType;
    .locals 1

    const-class v0, Lru/rocketbank/core/model/charge/DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/charge/DocumentType;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/charge/DocumentType;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/charge/DocumentType;->$VALUES:[Lru/rocketbank/core/model/charge/DocumentType;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/charge/DocumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/charge/DocumentType;

    return-object v0
.end method


# virtual methods
.method public final getChargeType()Lru/rocketbank/core/model/charge/ChargeType;
    .locals 1

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/model/charge/DocumentType;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    return-object v0
.end method

.method public final getTextStringRes()I
    .locals 1

    .line 114
    iget v0, p0, Lru/rocketbank/core/model/charge/DocumentType;->textStringRes:I

    return v0
.end method
