.class public final Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;
.super Ljava/lang/Object;
.source "DetailCardViewInputModel.kt"


# instance fields
.field private final clickFun:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final itemTextRes:I

.field private final showIt:Z


# direct methods
.method public constructor <init>(IZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickFun"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    iput-boolean p2, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    iput-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->copy(IZLkotlin/jvm/functions/Function0;)Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    return v0
.end method

.method public final component3()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final copy(IZLkotlin/jvm/functions/Function0;)Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;"
        }
    .end annotation

    const-string v0, "clickFun"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;-><init>(IZLkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    iget v3, p1, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    iget-boolean v3, p1, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getClickFun()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getItemTextRes()I
    .locals 1

    .line 31
    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    return v0
.end method

.method public final getShowIt()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidPayParameters(itemTextRes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->itemTextRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showIt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->showIt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clickFun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
