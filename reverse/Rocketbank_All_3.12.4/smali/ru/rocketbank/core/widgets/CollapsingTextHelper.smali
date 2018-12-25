.class final Lru/rocketbank/core/widgets/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:I

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:I

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 60
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 61
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 62
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    .line 63
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 106
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    .line 108
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 109
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 110
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 112
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 113
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 114
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 642
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 643
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 644
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 645
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 646
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 10

    .line 350
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTextSize:F

    .line 353
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 354
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 355
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 356
    :goto_0
    iget v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextGravity:I

    iget-boolean v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mIsRtl:Z

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 367
    iget-object v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 368
    iget-object v9, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 369
    iget-object v9, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 360
    :cond_1
    iget-object v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 363
    :cond_2
    iget-object v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawY:F

    :goto_1
    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    const/4 v9, 0x1

    if-eq v4, v9, :cond_4

    if-eq v4, v5, :cond_3

    .line 381
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 377
    :cond_3
    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 374
    :cond_4
    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 385
    :goto_2
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 386
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 387
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 388
    :cond_5
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextGravity:I

    iget-boolean v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mIsRtl:Z

    invoke-static {v1, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v3, v1, 0x70

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    .line 399
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    .line 400
    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    .line 401
    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 392
    :cond_6
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_3

    .line 395
    :cond_7
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawY:F

    :goto_3
    and-int/lit8 v1, v1, 0x7

    if-eq v1, v9, :cond_9

    if-eq v1, v5, :cond_8

    .line 413
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 409
    :cond_8
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_4

    .line 406
    :cond_9
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawX:F

    .line 17612
    :goto_4
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 17613
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 17614
    iput-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 420
    :cond_a
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 482
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 484
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR$22f09884:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 486
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->isRtl$4d1ed0c3(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method private calculateOffsets(F)V
    .locals 6

    .line 323
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->interpolateBounds(F)V

    .line 324
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawX:F

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    .line 11652
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 324
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentDrawX:F

    .line 326
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawY:F

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    .line 12652
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 326
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentDrawY:F

    .line 329
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 13652
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 329
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 332
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextColor:I

    if-eq v0, v1, :cond_3

    .line 335
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextColor:I

    iget v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-static {v1, v2, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3

    .line 337
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 340
    :goto_3
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowRadius:F

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 341
    iget v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowDx:F

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    .line 342
    iget v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowDy:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    const/4 v4, 0x0

    .line 343
    iget v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 344
    invoke-static {v4, v5, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->blendColors(IIF)I

    move-result p1

    .line 340
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 346
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 8

    .line 504
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    sub-float v0, p1, v0

    .line 21623
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 512
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 513
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 514
    iput v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    .line 516
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v1, v4, :cond_2

    .line 517
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v6, v2

    goto :goto_4

    :cond_2
    move v6, v3

    goto :goto_4

    .line 521
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 522
    iget v5, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    .line 524
    iget-object v6, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_4

    .line 525
    iget-object v6, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v6, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v3

    .line 529
    :goto_1
    iget v7, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    sub-float v7, p1, v7

    .line 22623
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v1, v7, v1

    if-gez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    .line 531
    iput v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    goto :goto_3

    .line 534
    :cond_6
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v1

    iput p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    :goto_3
    move p1, v0

    move v0, v5

    :goto_4
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_9

    .line 539
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTextSize:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mBoundsChanged:Z

    if-nez v1, :cond_8

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    move v6, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v2

    .line 540
    :goto_6
    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTextSize:F

    .line 541
    iput-boolean v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mBoundsChanged:Z

    .line 544
    :cond_9
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    if-eqz v6, :cond_b

    .line 545
    :cond_a
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 546
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 549
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, p1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 550
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 551
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 552
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mIsRtl:Z

    :cond_b
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 9

    .line 558
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 562
    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    .line 563
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextureAscent:F

    .line 564
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextureDescent:F

    .line 566
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 567
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextureDescent:F

    iget v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 573
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 575
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 578
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 580
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private interpolateBounds(F)V
    .locals 4

    .line 424
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_0

    .line 17652
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    sub-float/2addr v2, v1

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 424
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 426
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedDrawY:F

    iget v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    .line 18652
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    sub-float/2addr v2, v1

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 426
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 428
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_2

    .line 19652
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p1

    :goto_2
    sub-float/2addr v2, v1

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 428
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 430
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_3

    .line 20652
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_3
    sub-float/2addr v2, v1

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 430
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private onBoundsChanged()V
    .locals 1

    .line 172
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mDrawTitle:Z

    return-void
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 4

    .line 246
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 249
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 666
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    .line 490
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 493
    sget-boolean p1, Lru/rocketbank/core/widgets/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mUseTexture:Z

    .line 495
    iget-boolean p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    .line 497
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 500
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 437
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v1, :cond_5

    .line 438
    iget v6, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentDrawX:F

    .line 439
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentDrawY:F

    .line 441
    iget-boolean v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 447
    :goto_0
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v2, :cond_1

    .line 450
    iget v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextureAscent:F

    iget v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    mul-float/2addr v3, v4

    goto :goto_1

    .line 453
    :cond_1
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    const/4 v3, 0x0

    .line 454
    iget-object v4, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    .line 466
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    .line 467
    iget v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    iget v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mScale:F

    invoke-virtual {p1, v1, v3, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    .line 472
    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 474
    :cond_4
    iget-object v3, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 478
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method final getCollapsedTextColor()I
    .locals 1

    .line 631
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    return v0
.end method

.method final getCollapsedTextSize()F
    .locals 1

    .line 311
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method final getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 279
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method final getExpansionFraction()F
    .locals 1

    .line 307
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    return v0
.end method

.method final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 608
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final recalculate()V
    .locals 1

    .line 585
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 23319
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setCollapsedBounds(IIII)V
    .locals 1

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mBoundsChanged:Z

    .line 167
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method final setCollapsedTextAppearance(I)V
    .locals 3

    .line 199
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    iget v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    .line 204
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 209
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 210
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 211
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 212
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 216
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 8585
    :cond_2
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    .line 8588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 9319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_3
    return-void
.end method

.method final setCollapsedTextColor(I)V
    .locals 1

    .line 142
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    if-eq v0, p1, :cond_0

    .line 143
    iput p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextColor:I

    .line 4585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 4588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 5319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setCollapsedTextGravity$13462e()V
    .locals 2

    .line 188
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextGravity:I

    const v1, 0x800033

    if-eq v0, v1, :cond_0

    .line 189
    iput v1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 7585
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 7588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 8319
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setExpandedBounds(IIII)V
    .locals 1

    .line 156
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mBoundsChanged:Z

    .line 159
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method final setExpandedTextColor(I)V
    .locals 1

    .line 149
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextColor:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextColor:I

    .line 5585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 5588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 6319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setExpandedTextGravity(I)V
    .locals 1

    .line 177
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 178
    iput p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 6585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 6588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 7319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setExpandedTextSize(F)V
    .locals 1

    .line 128
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 129
    iput p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTextSize:F

    .line 3585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 3588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 4319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setExpansionFraction(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    .line 300
    :cond_1
    :goto_0
    iget v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 301
    iput p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    .line 11319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_2
    return-void
.end method

.method final setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 2585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 2588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 3319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 599
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    :cond_0
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 601
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 23612
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 23613
    iget-object v0, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 23614
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 603
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->recalculate()V

    :cond_2
    return-void
.end method

.method final setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 1585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 1588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 2319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method

.method final setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 9585
    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 9588
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 10319
    iget p1, p0, Lru/rocketbank/core/widgets/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->calculateOffsets(F)V

    :cond_0
    return-void
.end method
