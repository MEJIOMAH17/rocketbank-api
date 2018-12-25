.class public final Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;
.super Ljava/lang/Object;
.source "AtmType.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

.field private static final MKB_ATM_WITH_COMMISSION:Ljava/lang/String; = "mkb_atm_with_commission"

.field private static final MKB_WITH_COMMISSION:Ljava/lang/String; = "mkb_with_commission"

.field private static final OPENBANK_ATM:Ljava/lang/String; = "open_atm"

.field private static final OPENBANK_OFFICE:Ljava/lang/String; = "open_office"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->INSTANCE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic getDrawableId$default(Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;Ljava/lang/String;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->getDrawableId(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getDrawableId(Ljava/lang/String;Z)I
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->OPENBANK_OFFICE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f0801f1

    return p1

    :cond_0
    const p1, 0x7f0801f0

    return p1

    .line 14
    :cond_1
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->OPENBANK_ATM:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0801f2

    const v2, 0x7f0801f3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    return v2

    :cond_2
    return v1

    .line 15
    :cond_3
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_WITH_COMMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    const p1, 0x7f0801c9

    return p1

    :cond_4
    const p1, 0x7f0801c8

    return p1

    .line 16
    :cond_5
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_ATM_WITH_COMMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    const p1, 0x7f0801cb

    return p1

    :cond_6
    const p1, 0x7f0801ca

    return p1

    :cond_7
    if-eqz p2, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public final getMKB_ATM_WITH_COMMISSION()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_ATM_WITH_COMMISSION:Ljava/lang/String;

    return-object v0
.end method

.method public final getMKB_WITH_COMMISSION()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_WITH_COMMISSION:Ljava/lang/String;

    return-object v0
.end method

.method public final getOPENBANK_ATM()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->OPENBANK_ATM:Ljava/lang/String;

    return-object v0
.end method

.method public final getOPENBANK_OFFICE()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->OPENBANK_OFFICE:Ljava/lang/String;

    return-object v0
.end method

.method public final instructionType(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->OPENBANK_ATM:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_ATM_WITH_COMMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_WITH_COMMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->TERMINAL:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-object p1

    .line 23
    :cond_1
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->OPENBANK_OFFICE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->OFFICE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-object p1

    .line 24
    :cond_2
    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->ATM:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-object p1

    .line 21
    :cond_3
    :goto_0
    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->ATM:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-object p1
.end method

.method public final limits(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_WITH_COMMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmType;->MKB_ATM_WITH_COMMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const p1, 0x7f1102e5

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
