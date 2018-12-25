.class public final enum Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;
.super Ljava/lang/Enum;
.source "AtmType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

.field public static final enum ATM:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

.field public static final enum OFFICE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

.field public static final enum TERMINAL:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    const-string v2, "TERMINAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->TERMINAL:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    const-string v2, "ATM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->ATM:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    const-string v2, "OFFICE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->OFFICE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->$VALUES:[Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->$VALUES:[Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    invoke-virtual {v0}, [Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    return-object v0
.end method
