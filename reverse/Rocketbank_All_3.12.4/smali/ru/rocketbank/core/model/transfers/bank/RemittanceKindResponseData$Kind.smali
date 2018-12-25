.class public final enum Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;
.super Ljava/lang/Enum;
.source "RemittanceKindResponseData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum ip:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum not_resident_corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum not_resident_individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field public static final enum unknown:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;


# instance fields
.field private final title:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x7

    new-array v0, v0, [Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    new-instance v7, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v2, "unknown"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    .line 21
    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;ILkotlin/jvm/internal/Ref;)V

    sput-object v7, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->unknown:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v9, "individual"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v1

    .line 22
    invoke-direct/range {v8 .. v13}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;ILkotlin/jvm/internal/Ref;)V

    sput-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v2, "ip"

    const v3, 0x7f110249

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ip:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v2, "corporate"

    const v3, 0x7f11010b

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v2, "not_resident_individual"

    const v3, 0x7f11032b

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v1, v2, v5, v4}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    aput-object v1, v0, v5

    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v2, "not_resident_corporate"

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->not_resident_corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    aput-object v1, v0, v4

    new-instance v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string v2, "budget"

    const v3, 0x7f110083

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4, v3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    aput-object v1, v0, v4

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->$VALUES:[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->title:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;
    .locals 1

    const-class v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->$VALUES:[Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->title:Ljava/lang/Integer;

    return-object v0
.end method
