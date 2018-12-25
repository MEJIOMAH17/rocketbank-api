.class public final Lru/rocketbank/r2d2/root/card/binding/SPayParameters;
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

.field private final showSpButton:Z

.field private final textRes:I


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    iput p3, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;IILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/card/binding/SPayParameters;ZLkotlin/jvm/functions/Function0;IILjava/lang/Object;)Lru/rocketbank/r2d2/root/card/binding/SPayParameters;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->copy(ZLkotlin/jvm/functions/Function0;I)Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    return v0
.end method

.method public final component2()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    return v0
.end method

.method public final copy(ZLkotlin/jvm/functions/Function0;I)Lru/rocketbank/r2d2/root/card/binding/SPayParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I)",
            "Lru/rocketbank/r2d2/root/card/binding/SPayParameters;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    iget-boolean v3, p1, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    iget p1, p1, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    if-ne v1, p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
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

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getShowSpButton()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    return v0
.end method

.method public final getTextRes()I
    .locals 1

    .line 39
    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SPayParameters(showSpButton="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->showSpButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clickFun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->clickFun:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;->textRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
