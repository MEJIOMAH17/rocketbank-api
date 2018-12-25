.class public final enum Lru/rocketbank/core/model/enums/BlockReason;
.super Ljava/lang/Enum;
.source "BlockReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/enums/BlockReason$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/BlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/BlockReason;

.field public static final enum BAD_DOCS:Lru/rocketbank/core/model/enums/BlockReason;

.field public static final enum BANKRUPT:Lru/rocketbank/core/model/enums/BlockReason;

.field public static final enum CLOSING_CARD:Lru/rocketbank/core/model/enums/BlockReason;

.field public static final Companion:Lru/rocketbank/core/model/enums/BlockReason$Companion;

.field public static final enum ROGUE:Lru/rocketbank/core/model/enums/BlockReason;

.field public static final enum TERRORIST:Lru/rocketbank/core/model/enums/BlockReason;


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lru/rocketbank/core/model/enums/BlockReason;

    new-instance v1, Lru/rocketbank/core/model/enums/BlockReason;

    const-string v2, "BAD_DOCS"

    const-string v3, "bad_docs"

    const/4 v4, 0x0

    .line 7
    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/enums/BlockReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/model/enums/BlockReason;->BAD_DOCS:Lru/rocketbank/core/model/enums/BlockReason;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/enums/BlockReason;

    const-string v2, "BANKRUPT"

    const-string v3, "bankrupt"

    const/4 v4, 0x1

    .line 8
    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/enums/BlockReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/model/enums/BlockReason;->BANKRUPT:Lru/rocketbank/core/model/enums/BlockReason;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/enums/BlockReason;

    const-string v2, "TERRORIST"

    const-string v3, "terrorist"

    const/4 v4, 0x2

    .line 9
    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/enums/BlockReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/model/enums/BlockReason;->TERRORIST:Lru/rocketbank/core/model/enums/BlockReason;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/enums/BlockReason;

    const-string v2, "ROGUE"

    const-string v3, "rogue"

    const/4 v4, 0x3

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/enums/BlockReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/model/enums/BlockReason;->ROGUE:Lru/rocketbank/core/model/enums/BlockReason;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/enums/BlockReason;

    const-string v2, "CLOSING_CARD"

    const-string v3, "closing_card"

    const/4 v4, 0x4

    .line 11
    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/enums/BlockReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lru/rocketbank/core/model/enums/BlockReason;->CLOSING_CARD:Lru/rocketbank/core/model/enums/BlockReason;

    aput-object v1, v0, v4

    sput-object v0, Lru/rocketbank/core/model/enums/BlockReason;->$VALUES:[Lru/rocketbank/core/model/enums/BlockReason;

    new-instance v0, Lru/rocketbank/core/model/enums/BlockReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/enums/BlockReason$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/enums/BlockReason;->Companion:Lru/rocketbank/core/model/enums/BlockReason$Companion;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lru/rocketbank/core/model/enums/BlockReason;->reason:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/enums/BlockReason;->Companion:Lru/rocketbank/core/model/enums/BlockReason$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/core/model/enums/BlockReason$Companion;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;
    .locals 1

    const-class v0, Lru/rocketbank/core/model/enums/BlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/BlockReason;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/BlockReason;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/enums/BlockReason;->$VALUES:[Lru/rocketbank/core/model/enums/BlockReason;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/BlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/BlockReason;

    return-object v0
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/enums/BlockReason;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/enums/BlockReason;->reason:Ljava/lang/String;

    return-object v0
.end method
