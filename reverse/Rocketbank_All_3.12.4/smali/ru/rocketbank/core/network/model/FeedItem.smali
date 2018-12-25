.class public final Lru/rocketbank/core/network/model/FeedItem;
.super Ljava/lang/Object;
.source "FeedItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/FeedItem$Companion;
    }
.end annotation


# static fields
.field public static final CLOSE_ACTION:I = 0xc

.field public static final Companion:Lru/rocketbank/core/network/model/FeedItem$Companion;

.field public static final OPEERATION_DELIVERY:I = 0xf

.field public static final OPERATION_ACTION:I = 0xa

.field public static final OPERATION_AP:I = 0x12

.field public static final OPERATION_CHOOSEN_MONTH_CASH_BACK:I = 0x7

.field public static final OPERATION_DELIMITER:I = 0x9

.field public static final OPERATION_DISCOUNT:I = 0x5

.field public static final OPERATION_FRIEND:I = 0x2

.field public static final OPERATION_HEADER:I = -0x4ff4b000

.field public static final OPERATION_MONTH_CASHBACK:I = 0x3

.field public static final OPERATION_NEW_PASSPORT:I = 0x13

.field public static final OPERATION_NONE:I = 0x0

.field public static final OPERATION_ONETWOTRIP:I = 0x11

.field public static final OPERATION_OPERATION:I = 0x4

.field public static final OPERATION_PUSH:I = 0x1

.field public static final OPERATION_ROCKETRUBLES:I = 0x10

.field public static final OPERATION_SALARY_TARIFFS:I = 0xe

.field public static final OPERATION_SEARCH_HEADER:I = -0x21124111

.field public static final OPERATION_TAX_GIBDD:I = 0xd

.field public static final TRANSFER_TO_SAFE_ACCOUNT:I = 0x14


# instance fields
.field private operation:Lru/rocketbank/core/model/AbstractOperation;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/FeedItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/FeedItem$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/FeedItem;->Companion:Lru/rocketbank/core/network/model/FeedItem$Companion;

    return-void
.end method

.method public constructor <init>(ILru/rocketbank/core/model/AbstractOperation;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/network/model/FeedItem;->type:I

    iput-object p2, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v1, :cond_5

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    iget v1, p1, Lru/rocketbank/core/network/model/FeedItem;->type:I

    iget v2, p0, Lru/rocketbank/core/network/model/FeedItem;->type:I

    if-eq v1, v2, :cond_1

    return v0

    .line 25
    :cond_1
    iget-object v1, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    iget-object v2, p1, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 27
    :cond_2
    iget-object v1, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-nez v1, :cond_3

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    iget-object p1, p1, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v0
.end method

.method public final getHappenedAt()J
    .locals 2

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/AbstractOperation;->getHappenedAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOperation()Lru/rocketbank/core/model/AbstractOperation;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/network/model/FeedItem;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/AbstractOperation;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setOperation(Lru/rocketbank/core/model/AbstractOperation;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/network/model/FeedItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    return-void
.end method
