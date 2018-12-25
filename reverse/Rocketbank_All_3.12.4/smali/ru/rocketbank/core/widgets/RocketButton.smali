.class public final Lru/rocketbank/core/widgets/RocketButton;
.super Landroid/widget/Button;
.source "RocketButton.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1030
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1031
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p1

    sget v0, Lru/rocketbank/core/R$styleable;->RocketButton_rocket_font:I

    sget-object v1, Lru/rocketbank/core/R$styleable;->RocketButton:[I

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, p2, v2}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface$6871d432(I[ILandroid/util/AttributeSet;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2030
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2031
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p1

    sget p3, Lru/rocketbank/core/R$styleable;->RocketButton_rocket_font:I

    sget-object v0, Lru/rocketbank/core/R$styleable;->RocketButton:[I

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, p3, v0, p2, v1}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface$6871d432(I[ILandroid/util/AttributeSet;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3030
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3031
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p1

    sget p3, Lru/rocketbank/core/R$styleable;->RocketButton_rocket_font:I

    sget-object p4, Lru/rocketbank/core/R$styleable;->RocketButton:[I

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, p3, p4, p2, v0}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface$6871d432(I[ILandroid/util/AttributeSet;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
