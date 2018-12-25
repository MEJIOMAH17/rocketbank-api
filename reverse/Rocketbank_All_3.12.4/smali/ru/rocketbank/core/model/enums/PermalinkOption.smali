.class public final enum Lru/rocketbank/core/model/enums/PermalinkOption;
.super Ljava/lang/Enum;
.source "PermalinkOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/PermalinkOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/PermalinkOption;

.field public static final enum MALINA:Lru/rocketbank/core/model/enums/PermalinkOption;

.field public static final enum SMS:Lru/rocketbank/core/model/enums/PermalinkOption;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkOption;

    const-string v1, "MALINA"

    const-string v2, "enlarge_malina"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lru/rocketbank/core/model/enums/PermalinkOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkOption;->MALINA:Lru/rocketbank/core/model/enums/PermalinkOption;

    .line 5
    new-instance v0, Lru/rocketbank/core/model/enums/PermalinkOption;

    const-string v1, "SMS"

    const-string v2, "sms_notification"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lru/rocketbank/core/model/enums/PermalinkOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkOption;->SMS:Lru/rocketbank/core/model/enums/PermalinkOption;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lru/rocketbank/core/model/enums/PermalinkOption;

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkOption;->MALINA:Lru/rocketbank/core/model/enums/PermalinkOption;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/enums/PermalinkOption;->SMS:Lru/rocketbank/core/model/enums/PermalinkOption;

    aput-object v1, v0, v4

    sput-object v0, Lru/rocketbank/core/model/enums/PermalinkOption;->$VALUES:[Lru/rocketbank/core/model/enums/PermalinkOption;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lru/rocketbank/core/model/enums/PermalinkOption;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/PermalinkOption;
    .locals 5

    .line 14
    invoke-static {}, Lru/rocketbank/core/model/enums/PermalinkOption;->values()[Lru/rocketbank/core/model/enums/PermalinkOption;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 15
    iget-object v4, v3, Lru/rocketbank/core/model/enums/PermalinkOption;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/PermalinkOption;
    .locals 1

    .line 3
    const-class v0, Lru/rocketbank/core/model/enums/PermalinkOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/PermalinkOption;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/PermalinkOption;
    .locals 1

    .line 3
    sget-object v0, Lru/rocketbank/core/model/enums/PermalinkOption;->$VALUES:[Lru/rocketbank/core/model/enums/PermalinkOption;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/PermalinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/PermalinkOption;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/enums/PermalinkOption;->value:Ljava/lang/String;

    return-object v0
.end method
