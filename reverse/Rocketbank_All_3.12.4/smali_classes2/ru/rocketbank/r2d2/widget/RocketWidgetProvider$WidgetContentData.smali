.class public final Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;
.super Ljava/lang/Object;
.source "RocketWidgetProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widget/RocketWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetContentData"
.end annotation


# instance fields
.field private final balance:Ljava/lang/String;

.field private miles:Ljava/lang/String;

.field private operatorDrawable:Landroid/graphics/drawable/Drawable;

.field private operatorText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operatorText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operatorText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBalance()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public final getMiles()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getOperatorText()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setMiles(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    return-void
.end method

.method public final setOperatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setOperatorText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WidgetContentData(balance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->balance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", miles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->miles:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/RocketWidgetProvider$WidgetContentData;->operatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
