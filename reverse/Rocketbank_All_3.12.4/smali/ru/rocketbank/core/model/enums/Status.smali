.class public final enum Lru/rocketbank/core/model/enums/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/Status;

.field public static final enum ACTIVE:Lru/rocketbank/core/model/enums/Status;

.field public static final enum BLOCKED:Lru/rocketbank/core/model/enums/Status;

.field public static final enum FRAUD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

.field public static final enum HARD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

.field public static final enum NEW:Lru/rocketbank/core/model/enums/Status;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lru/rocketbank/core/model/enums/Status;

    const-string v1, "ACTIVE"

    const-string v2, "active"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lru/rocketbank/core/model/enums/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Status;->ACTIVE:Lru/rocketbank/core/model/enums/Status;

    .line 5
    new-instance v0, Lru/rocketbank/core/model/enums/Status;

    const-string v1, "BLOCKED"

    const-string v2, "blocked"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lru/rocketbank/core/model/enums/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    .line 6
    new-instance v0, Lru/rocketbank/core/model/enums/Status;

    const-string v1, "NEW"

    const-string v2, "new"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lru/rocketbank/core/model/enums/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Status;->NEW:Lru/rocketbank/core/model/enums/Status;

    .line 7
    new-instance v0, Lru/rocketbank/core/model/enums/Status;

    const-string v1, "HARD_BLOCKED"

    const-string v2, "hard_blocked"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lru/rocketbank/core/model/enums/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Status;->HARD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    .line 8
    new-instance v0, Lru/rocketbank/core/model/enums/Status;

    const-string v1, "FRAUD_BLOCKED"

    const-string v2, "fraud_blocked"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lru/rocketbank/core/model/enums/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Status;->FRAUD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lru/rocketbank/core/model/enums/Status;

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->ACTIVE:Lru/rocketbank/core/model/enums/Status;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->NEW:Lru/rocketbank/core/model/enums/Status;

    aput-object v1, v0, v5

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->HARD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    aput-object v1, v0, v6

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->FRAUD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    aput-object v1, v0, v7

    sput-object v0, Lru/rocketbank/core/model/enums/Status;->$VALUES:[Lru/rocketbank/core/model/enums/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lru/rocketbank/core/model/enums/Status;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Status;
    .locals 4

    .line 17
    invoke-static {}, Lru/rocketbank/core/model/enums/Status;->values()[Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 20
    aget-object v2, v0, v1

    .line 22
    iget-object v3, v2, Lru/rocketbank/core/model/enums/Status;->value:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Status;
    .locals 1

    .line 3
    const-class v0, Lru/rocketbank/core/model/enums/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/Status;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/Status;
    .locals 1

    .line 3
    sget-object v0, Lru/rocketbank/core/model/enums/Status;->$VALUES:[Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/Status;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/enums/Status;->value:Ljava/lang/String;

    return-object v0
.end method
