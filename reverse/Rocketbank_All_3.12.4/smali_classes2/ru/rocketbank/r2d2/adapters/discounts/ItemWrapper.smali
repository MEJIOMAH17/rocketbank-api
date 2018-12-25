.class public final Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;
.super Ljava/lang/Object;
.source "ItemWrapper.kt"


# instance fields
.field private final category:Lru/rocketbank/core/model/discounts/Category;

.field private final games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Gamer;",
            ">;"
        }
    .end annotation
.end field

.field private final monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

.field private final type:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lru/rocketbank/core/model/dto/operations/MonthCashBack;",
            "Lru/rocketbank/core/model/discounts/Category;",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/discounts/Gamer;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    iput-object p3, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    iput-object p4, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 15
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;ILjava/lang/Object;)Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->copy(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;)Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    return v0
.end method

.method public final component2()Lru/rocketbank/core/model/dto/operations/MonthCashBack;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    return-object v0
.end method

.method public final component3()Lru/rocketbank/core/model/discounts/Category;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Gamer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;)Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lru/rocketbank/core/model/dto/operations/MonthCashBack;",
            "Lru/rocketbank/core/model/discounts/Category;",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/discounts/Gamer;",
            ">;)",
            "Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;-><init>(ILru/rocketbank/core/model/dto/operations/MonthCashBack;Lru/rocketbank/core/model/discounts/Category;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;

    iget v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    iget v3, p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    iget-object v3, p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    iget-object v3, p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    iget-object p1, p1, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getCategory()Lru/rocketbank/core/model/discounts/Category;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    return-object v0
.end method

.method public final getGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/discounts/Gamer;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    return-object v0
.end method

.method public final getMonthCashback()Lru/rocketbank/core/model/dto/operations/MonthCashBack;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemWrapper(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", monthCashback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->monthCashback:Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->category:Lru/rocketbank/core/model/discounts/Category;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", games="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;->games:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
