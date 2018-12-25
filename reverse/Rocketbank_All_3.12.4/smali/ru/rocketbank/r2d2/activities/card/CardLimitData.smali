.class public final Lru/rocketbank/r2d2/activities/card/CardLimitData;
.super Ljava/lang/Object;
.source "CardLimitData.kt"


# instance fields
.field private final enabled:Landroid/databinding/ObservableBoolean;

.field private final icon:I

.field private final textDisabled:I

.field private final textEnabled:I

.field private final title:I


# direct methods
.method public constructor <init>(IIIILandroid/databinding/ObservableBoolean;)V
    .locals 1

    const-string v0, "enabled"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    iput p2, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    iput p3, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    iput p4, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    iput-object p5, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public synthetic constructor <init>(IIIILandroid/databinding/ObservableBoolean;ILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 10
    new-instance p5, Landroid/databinding/ObservableBoolean;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/activities/card/CardLimitData;-><init>(IIIILandroid/databinding/ObservableBoolean;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/activities/card/CardLimitData;IIIILandroid/databinding/ObservableBoolean;ILjava/lang/Object;)Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->copy(IIIILandroid/databinding/ObservableBoolean;)Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    return v0
.end method

.method public final component5()Landroid/databinding/ObservableBoolean;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final copy(IIIILandroid/databinding/ObservableBoolean;)Lru/rocketbank/r2d2/activities/card/CardLimitData;
    .locals 7

    const-string v0, "enabled"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/activities/card/CardLimitData;-><init>(IIIILandroid/databinding/ObservableBoolean;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    iget v3, p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    iget v3, p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    iget v3, p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    iget v3, p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    return v0
.end method

.method public final getEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    return v0
.end method

.method public final getTextDisabled()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    return v0
.end method

.method public final getTextEnabled()I
    .locals 1

    .line 7
    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardLimitData(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->textDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitData;->enabled:Landroid/databinding/ObservableBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
