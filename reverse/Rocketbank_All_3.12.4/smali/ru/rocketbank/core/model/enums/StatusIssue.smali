.class public final enum Lru/rocketbank/core/model/enums/StatusIssue;
.super Ljava/lang/Enum;
.source "StatusIssue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/StatusIssue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/StatusIssue;

.field public static final enum DELIVERY:Lru/rocketbank/core/model/enums/StatusIssue;

.field public static final enum DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusIssue;

.field public static final enum ISSUING:Lru/rocketbank/core/model/enums/StatusIssue;

.field public static final enum PIN:Lru/rocketbank/core/model/enums/StatusIssue;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lru/rocketbank/core/model/enums/StatusIssue;

    const-string v1, "DELIVERY"

    const-string v2, "delivery"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lru/rocketbank/core/model/enums/StatusIssue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusIssue;->DELIVERY:Lru/rocketbank/core/model/enums/StatusIssue;

    .line 5
    new-instance v0, Lru/rocketbank/core/model/enums/StatusIssue;

    const-string v1, "DELIVERY_SCHEDULED"

    const-string v2, "delivery_scheduled"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lru/rocketbank/core/model/enums/StatusIssue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusIssue;->DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusIssue;

    .line 6
    new-instance v0, Lru/rocketbank/core/model/enums/StatusIssue;

    const-string v1, "ISSUING"

    const-string v2, "issuing"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lru/rocketbank/core/model/enums/StatusIssue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusIssue;->ISSUING:Lru/rocketbank/core/model/enums/StatusIssue;

    .line 7
    new-instance v0, Lru/rocketbank/core/model/enums/StatusIssue;

    const-string v1, "PIN"

    const-string v2, "pin"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lru/rocketbank/core/model/enums/StatusIssue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusIssue;->PIN:Lru/rocketbank/core/model/enums/StatusIssue;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lru/rocketbank/core/model/enums/StatusIssue;

    sget-object v1, Lru/rocketbank/core/model/enums/StatusIssue;->DELIVERY:Lru/rocketbank/core/model/enums/StatusIssue;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/enums/StatusIssue;->DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusIssue;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/enums/StatusIssue;->ISSUING:Lru/rocketbank/core/model/enums/StatusIssue;

    aput-object v1, v0, v5

    sget-object v1, Lru/rocketbank/core/model/enums/StatusIssue;->PIN:Lru/rocketbank/core/model/enums/StatusIssue;

    aput-object v1, v0, v6

    sput-object v0, Lru/rocketbank/core/model/enums/StatusIssue;->$VALUES:[Lru/rocketbank/core/model/enums/StatusIssue;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lru/rocketbank/core/model/enums/StatusIssue;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/StatusIssue;
    .locals 5

    .line 16
    invoke-static {}, Lru/rocketbank/core/model/enums/StatusIssue;->values()[Lru/rocketbank/core/model/enums/StatusIssue;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 17
    iget-object v4, v3, Lru/rocketbank/core/model/enums/StatusIssue;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lru/rocketbank/core/model/enums/StatusIssue;->ISSUING:Lru/rocketbank/core/model/enums/StatusIssue;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/StatusIssue;
    .locals 1

    .line 3
    const-class v0, Lru/rocketbank/core/model/enums/StatusIssue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/StatusIssue;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/StatusIssue;
    .locals 1

    .line 3
    sget-object v0, Lru/rocketbank/core/model/enums/StatusIssue;->$VALUES:[Lru/rocketbank/core/model/enums/StatusIssue;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/StatusIssue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/StatusIssue;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/model/enums/StatusIssue;->value:Ljava/lang/String;

    return-object v0
.end method
