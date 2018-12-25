.class public final Lru/rocketbank/core/widgets/RocketCompatButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "RocketCompatButton.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/widgets/RocketCompatButton;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/widgets/RocketCompatButton;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method private final init(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 6

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketCompatButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v0

    sget v1, Lru/rocketbank/core/R$styleable;->RocketButton_rocket_font:I

    sget-object v2, Lru/rocketbank/core/R$styleable;->RocketButton:[I

    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1, v3}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface$6871d432(I[ILandroid/util/AttributeSet;Landroid/widget/TextView;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 1040
    sget-object v0, Lru/rocketbank/core/R$styleable;->CustomTextView:[I

    .line 1038
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1046
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 1047
    sget p2, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableLeftCompat:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1048
    sget v0, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableRightCompat:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1049
    sget v1, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableBottomCompat:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1050
    sget v2, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableTopCompat:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    move-object v0, p2

    goto :goto_3

    .line 1052
    :cond_1
    sget v0, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableLeftCompat:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1053
    sget v3, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableRightCompat:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1054
    sget v4, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableBottomCompat:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1055
    sget v5, Lru/rocketbank/core/R$styleable;->CustomTextView_drawableTopCompat:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v0, v1, :cond_2

    .line 1058
    invoke-static {p2, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eq v3, v1, :cond_3

    .line 1060
    invoke-static {p2, v3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eq v4, v1, :cond_4

    .line 1062
    invoke-static {p2, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-eq v5, v1, :cond_5

    .line 1064
    invoke-static {p2, v5}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1066
    :cond_5
    :goto_3
    invoke-virtual {p0, v0, v2, v3, v4}, Lru/rocketbank/core/widgets/RocketCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1067
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    return-void
.end method
