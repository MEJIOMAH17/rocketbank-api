.class public final enum Lru/rocketbank/core/model/transfers/bank/RecipientType;
.super Ljava/lang/Enum;
.source "RecipientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/transfers/bank/RecipientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/transfers/bank/RecipientType;

.field public static final enum BUDGET:Lru/rocketbank/core/model/transfers/bank/RecipientType;

.field public static final enum BUSINESS:Lru/rocketbank/core/model/transfers/bank/RecipientType;

.field public static final enum CARD2CARD:Lru/rocketbank/core/model/transfers/bank/RecipientType;

.field public static final enum GKH:Lru/rocketbank/core/model/transfers/bank/RecipientType;

.field public static final enum PERSON:Lru/rocketbank/core/model/transfers/bank/RecipientType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    const-string v1, "PERSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/transfers/bank/RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->PERSON:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    .line 10
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    const-string v1, "BUSINESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lru/rocketbank/core/model/transfers/bank/RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUSINESS:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    .line 11
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    const-string v1, "CARD2CARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lru/rocketbank/core/model/transfers/bank/RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->CARD2CARD:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    .line 12
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    const-string v1, "BUDGET"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lru/rocketbank/core/model/transfers/bank/RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUDGET:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    .line 13
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    const-string v1, "GKH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lru/rocketbank/core/model/transfers/bank/RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->GKH:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Lru/rocketbank/core/model/transfers/bank/RecipientType;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->PERSON:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    aput-object v1, v0, v2

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUSINESS:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->CARD2CARD:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUDGET:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    aput-object v1, v0, v5

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->GKH:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    aput-object v1, v0, v6

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->$VALUES:[Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RecipientType;
    .locals 1

    .line 8
    const-class v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/transfers/bank/RecipientType;
    .locals 1

    .line 8
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->$VALUES:[Lru/rocketbank/core/model/transfers/bank/RecipientType;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/transfers/bank/RecipientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-object v0
.end method
