.class public final enum Lru/rocketbank/core/model/enums/StatusDeposit;
.super Ljava/lang/Enum;
.source "StatusDeposit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/StatusDeposit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum CLOSED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum DECLINED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum DELIVERED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum FAILED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum FINISHED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum OPENED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum PENDING:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum STARTED:Lru/rocketbank/core/model/enums/StatusDeposit;

.field public static final enum STARTING:Lru/rocketbank/core/model/enums/StatusDeposit;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 4
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "CLOSED"

    const-string v2, "closed"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->CLOSED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 5
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "DECLINED"

    const-string v2, "declined"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->DECLINED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 6
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "DELIVERED"

    const-string v2, "delivered"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->DELIVERED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 7
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "DELIVERY_SCHEDULED"

    const-string v2, "delivery_scheduled"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 8
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "FAILED"

    const-string v2, "failed"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->FAILED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 9
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "FINISHED"

    const-string v2, "finished"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->FINISHED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 10
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "OPENED"

    const-string v2, "opened"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->OPENED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 11
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "PENDING"

    const-string v2, "pending"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->PENDING:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 12
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "STARTED"

    const-string v2, "started"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->STARTED:Lru/rocketbank/core/model/enums/StatusDeposit;

    .line 13
    new-instance v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    const-string v1, "STARTING"

    const-string v2, "starting"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lru/rocketbank/core/model/enums/StatusDeposit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->STARTING:Lru/rocketbank/core/model/enums/StatusDeposit;

    const/16 v0, 0xa

    .line 3
    new-array v0, v0, [Lru/rocketbank/core/model/enums/StatusDeposit;

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->CLOSED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->DECLINED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->DELIVERED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v5

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v6

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->FAILED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v7

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->FINISHED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v8

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->OPENED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v9

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->PENDING:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v10

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->STARTED:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v11

    sget-object v1, Lru/rocketbank/core/model/enums/StatusDeposit;->STARTING:Lru/rocketbank/core/model/enums/StatusDeposit;

    aput-object v1, v0, v12

    sput-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->$VALUES:[Lru/rocketbank/core/model/enums/StatusDeposit;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lru/rocketbank/core/model/enums/StatusDeposit;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/StatusDeposit;
    .locals 5

    .line 24
    invoke-static {}, Lru/rocketbank/core/model/enums/StatusDeposit;->values()[Lru/rocketbank/core/model/enums/StatusDeposit;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 26
    iget-object v4, v3, Lru/rocketbank/core/model/enums/StatusDeposit;->value:Ljava/lang/String;

    .line 28
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/StatusDeposit;
    .locals 1

    .line 3
    const-class v0, Lru/rocketbank/core/model/enums/StatusDeposit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/StatusDeposit;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/StatusDeposit;
    .locals 1

    .line 3
    sget-object v0, Lru/rocketbank/core/model/enums/StatusDeposit;->$VALUES:[Lru/rocketbank/core/model/enums/StatusDeposit;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/StatusDeposit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/StatusDeposit;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/enums/StatusDeposit;->value:Ljava/lang/String;

    return-object v0
.end method
