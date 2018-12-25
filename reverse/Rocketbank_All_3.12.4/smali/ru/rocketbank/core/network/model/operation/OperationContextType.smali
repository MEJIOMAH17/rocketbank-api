.class public final enum Lru/rocketbank/core/network/model/operation/OperationContextType;
.super Ljava/lang/Enum;
.source "OperationContextType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/network/model/operation/OperationContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum AtmCashOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum Card2CardCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum Card2CardCashOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum Card2cardCashInOther:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum CardCommission:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum DepositOpen:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum InternalCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum InternalCashInRequest:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum InternalCashOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum InternalCashOutRequest:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum MilesCashBack:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum None:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum PosSpending:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum Remittance:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum RocketRubleIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum RocketRubleOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum TransferCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

.field public static final enum Unknown:Lru/rocketbank/core/network/model/operation/OperationContextType;


# instance fields
.field private final text:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x12

    new-array v0, v0, [Lru/rocketbank/core/network/model/operation/OperationContextType;

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "InternalCashIn"

    const-string v3, "internal_cash_in"

    const/4 v4, 0x0

    const/16 v5, 0x10

    .line 4
    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->InternalCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "TransferCashIn"

    const-string v3, "transfer_cash_in"

    const/4 v4, 0x1

    const/16 v6, 0x20

    .line 5
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->TransferCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "Card2CardCashIn"

    const-string v3, "card2card_cash_in"

    const/4 v4, 0x2

    const/16 v6, 0x30

    .line 6
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->Card2CardCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "Card2CardCashOut"

    const-string v3, "card2card_cash_out"

    const/4 v4, 0x3

    const/16 v6, 0x40

    .line 7
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->Card2CardCashOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "InternalCashOutRequest"

    const-string v3, "internal_cash_out_request"

    const/4 v4, 0x4

    const/16 v6, 0x50

    .line 8
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->InternalCashOutRequest:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "PosSpending"

    const-string v3, "pos_spending"

    const/4 v4, 0x5

    const/16 v6, 0x60

    .line 9
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->PosSpending:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "InternalCashOut"

    const-string v3, "internal_cash_out"

    const/4 v4, 0x6

    const/16 v6, 0x70

    .line 10
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->InternalCashOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "AtmCashOut"

    const-string v3, "atm_cash_out"

    const/4 v4, 0x7

    const/16 v6, 0x80

    .line 11
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->AtmCashOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "DepositOpen"

    const-string v3, "open_deposit"

    const/16 v4, 0x8

    const/16 v6, 0x90

    .line 12
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->DepositOpen:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "MilesCashBack"

    const-string v3, "miles_cash_back"

    const/16 v4, 0x9

    const/16 v6, 0x100

    .line 13
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->MilesCashBack:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "Card2cardCashInOther"

    const-string v3, "card2card_cash_in_other"

    const/16 v4, 0xa

    const/16 v6, 0x110

    .line 14
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->Card2cardCashInOther:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "CardCommission"

    const-string v3, "card_commission"

    const/16 v4, 0xb

    const/16 v6, 0x120

    .line 15
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->CardCommission:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "Remittance"

    const-string v3, "remittance"

    const/16 v4, 0xc

    const/16 v6, 0x130

    .line 16
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->Remittance:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "InternalCashInRequest"

    const-string v3, "internal_cash_in_request"

    const/16 v4, 0xd

    const/16 v6, 0x140

    .line 17
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->InternalCashInRequest:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "RocketRubleIn"

    const-string v3, "rocket_ruble_in"

    const/16 v4, 0xe

    const/16 v6, 0x150

    .line 18
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->RocketRubleIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "RocketRubleOut"

    const-string v3, "rocket_ruble_out"

    const/16 v4, 0xf

    const/16 v6, 0x160

    .line 19
    invoke-direct {v1, v2, v4, v6, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->RocketRubleOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "Unknown"

    const-string v3, "unknown"

    const/16 v4, 0xeee

    .line 20
    invoke-direct {v1, v2, v5, v4, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->Unknown:Lru/rocketbank/core/network/model/operation/OperationContextType;

    aput-object v1, v0, v5

    new-instance v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    const-string v2, "None"

    const-string v3, "none"

    const/16 v4, 0x11

    const/16 v5, 0xfff

    .line 21
    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/core/network/model/operation/OperationContextType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->None:Lru/rocketbank/core/network/model/operation/OperationContextType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/network/model/operation/OperationContextType;->$VALUES:[Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lru/rocketbank/core/network/model/operation/OperationContextType;->type:I

    iput-object p4, p0, Lru/rocketbank/core/network/model/operation/OperationContextType;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/OperationContextType;
    .locals 1

    const-class v0, Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/network/model/operation/OperationContextType;
    .locals 1

    sget-object v0, Lru/rocketbank/core/network/model/operation/OperationContextType;->$VALUES:[Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-virtual {v0}, [Lru/rocketbank/core/network/model/operation/OperationContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-object v0
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lru/rocketbank/core/network/model/operation/OperationContextType;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 3
    iget v0, p0, Lru/rocketbank/core/network/model/operation/OperationContextType;->type:I

    return v0
.end method
