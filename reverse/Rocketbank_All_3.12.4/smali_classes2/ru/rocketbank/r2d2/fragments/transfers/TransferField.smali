.class public final enum Lru/rocketbank/r2d2/fragments/transfers/TransferField;
.super Ljava/lang/Enum;
.source "TransferField.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/r2d2/fragments/transfers/TransferField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum amount:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum bank_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum besp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum bik:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum corr_bank:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum corr_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum custom_code:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum drawer_status:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum from:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum gkh_account_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum gkh_els:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum gkh_mc_service_id:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum gkh_payment_document_id:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum gkh_payment_document_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum gkh_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum inn_from:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum kbk:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum oktmo:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum purpose:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum recipient_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum tax:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum tax_basis:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum tax_inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum tax_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum uin:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

.field public static final enum unknown:Lru/rocketbank/r2d2/fragments/transfers/TransferField;


# instance fields
.field private final pattern:Ljava/lang/String;

.field private final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x1c

    new-array v0, v0, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    new-instance v8, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v2, "unknown"

    const/4 v3, 0x0

    const v4, 0x7f11017e

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    .line 8
    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v8, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->unknown:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v10, "bik"

    const/4 v11, 0x1

    const v12, 0x7f11048e

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v9, v1

    .line 9
    invoke-direct/range {v9 .. v15}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->bik:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "bank_name"

    const/4 v5, 0x2

    const v6, 0x7f11007a

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->bank_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "corr_bank"

    const/4 v5, 0x3

    const v6, 0x7f110492

    move-object v3, v1

    .line 11
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->corr_bank:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v2, "corr_number"

    const-string v3, "dddd dddd dddd dddd dddd"

    const/4 v4, 0x4

    const v5, 0x7f110495

    .line 12
    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->corr_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v7, "inn"

    const/4 v8, 0x5

    const v9, 0x7f11049f

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v6, v1

    .line 13
    invoke-direct/range {v6 .. v12}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v2, "kpp"

    const-string v3, "ddddddddd"

    const/4 v4, 0x6

    const v5, 0x7f1104ba

    .line 14
    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v7, "recipient_name"

    const/4 v8, 0x7

    const v9, 0x7f110499

    move-object v6, v1

    .line 15
    invoke-direct/range {v6 .. v12}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->recipient_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v2, "kbk"

    const-string v3, "ddd d dd ddddd dd dddd ddd"

    const/16 v4, 0x8

    const v5, 0x7f1104a5

    .line 16
    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kbk:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v2, "oktmo"

    const-string v3, "dd ddd ddd ddd"

    const/16 v4, 0x9

    const v5, 0x7f1104ab

    .line 17
    invoke-direct {v1, v2, v4, v5, v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->oktmo:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v7, "uin"

    const/16 v8, 0xa

    const v9, 0x7f1104b6

    move-object v6, v1

    .line 18
    invoke-direct/range {v6 .. v12}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->uin:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "from"

    const/16 v5, 0xb

    const v6, 0x7f11049d

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    .line 19
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->from:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "inn_from"

    const/16 v5, 0xc

    const v6, 0x7f1104a2

    move-object v3, v1

    .line 20
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn_from:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "tax_inn"

    const/16 v5, 0xd

    const v6, 0x7f1104a0

    move-object v3, v1

    .line 21
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "tax"

    const/16 v5, 0xe

    const v6, 0x7f110466

    move-object v3, v1

    .line 22
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "tax_basis"

    const/16 v5, 0xf

    const v6, 0x7f1104b1

    move-object v3, v1

    .line 23
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_basis:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "tax_period"

    const/16 v5, 0x10

    const v6, 0x7f1104b2

    move-object v3, v1

    .line 24
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "drawer_status"

    const/16 v5, 0x11

    const v6, 0x7f1104bc

    move-object v3, v1

    .line 25
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->drawer_status:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "besp"

    const/16 v5, 0x12

    const v6, 0x7f11007e

    move-object v3, v1

    .line 26
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->besp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "amount"

    const/16 v5, 0x13

    const v6, 0x7f110055

    move-object v3, v1

    .line 27
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->amount:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "purpose"

    const/16 v5, 0x14

    const v6, 0x7f1104ae

    move-object v3, v1

    .line 28
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->purpose:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "gkh_els"

    const/16 v5, 0x15

    const v6, 0x7f110207

    move-object v3, v1

    .line 30
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_els:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "gkh_mc_service_id"

    const/16 v5, 0x16

    const v6, 0x7f11020b

    move-object v3, v1

    .line 31
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_mc_service_id:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "gkh_payment_document_number"

    const/16 v5, 0x17

    const v6, 0x7f11020d

    move-object v3, v1

    .line 32
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_payment_document_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "gkh_payment_document_id"

    const/16 v5, 0x18

    const v6, 0x7f11020c

    move-object v3, v1

    .line 33
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_payment_document_id:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "gkh_account_number"

    const/16 v5, 0x19

    const v6, 0x7f110205

    move-object v3, v1

    .line 34
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_account_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "gkh_period"

    const/16 v5, 0x1a

    const v6, 0x7f11020e

    move-object v3, v1

    .line 35
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const-string v4, "custom_code"

    const/16 v5, 0x1b

    const v6, 0x7f11011d

    move-object v3, v1

    .line 36
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->custom_code:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->$VALUES:[Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->title:I

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->pattern:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/TransferField;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/r2d2/fragments/transfers/TransferField;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->$VALUES:[Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v0}, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    return-object v0
.end method


# virtual methods
.method public final getPattern()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->title:I

    return v0
.end method
