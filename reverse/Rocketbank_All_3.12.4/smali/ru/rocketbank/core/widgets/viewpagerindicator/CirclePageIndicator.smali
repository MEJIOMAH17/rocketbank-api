.class public Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lru/rocketbank/core/widgets/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040275

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 63
    iput v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060071

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f060070

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f0a000d

    .line 83
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f060072

    .line 84
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x7f070098

    .line 85
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f070097

    .line 86
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v7, 0x7f050006

    .line 87
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    const v8, 0x7f050007

    .line 88
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 91
    sget-object v8, Lru/rocketbank/core/R$styleable;->CirclePageIndicator:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 93
    sget p3, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_centered:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    .line 94
    sget p3, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_android_orientation:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    .line 95
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget v3, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_pageColor:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget v1, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_strokeColor:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget v1, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_strokeWidth:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget v1, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_fillColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget p3, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_radius:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 103
    sget p3, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_snap:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    .line 105
    sget p3, Lru/rocketbank/core/R$styleable;->CirclePageIndicator_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p0, p3}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mTouchSlop:I

    return-void
.end method

.method private measureLong(I)I
    .locals 5

    .line 460
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 461
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    .line 463
    iget-object v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 469
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    shl-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    iget v4, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 473
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method private measureShort(I)I
    .locals 3

    .line 487
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 488
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 495
    iget v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 498
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    iget v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 1387
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_2

    .line 1388
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1390
    :cond_2
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1391
    iput v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 1392
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void

    .line 217
    :cond_3
    iget v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v1, :cond_4

    .line 218
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v1

    .line 219
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 220
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    .line 221
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v1

    .line 224
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 225
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    .line 226
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    .line 229
    :goto_0
    iget v5, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    int-to-float v4, v4

    .line 230
    iget v6, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    add-float/2addr v4, v6

    int-to-float v6, v2

    .line 231
    iget v7, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    add-float/2addr v6, v7

    .line 232
    iget-boolean v7, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_5

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v0

    mul-float/2addr v2, v5

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v6, v1

    .line 239
    :cond_5
    iget v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 240
    iget-object v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 241
    iget-object v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_a

    int-to-float v3, v2

    mul-float/2addr v3, v5

    add-float/2addr v3, v6

    .line 247
    iget v7, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v7, :cond_7

    move v7, v4

    goto :goto_2

    :cond_7
    move v7, v3

    move v3, v4

    .line 255
    :goto_2
    iget-object v8, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_8

    .line 256
    iget-object v8, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    :cond_8
    iget v8, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_9

    .line 261
    iget v8, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    iget-object v9, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    :cond_a
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    goto :goto_3

    :cond_b
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 267
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v1, :cond_c

    .line 268
    iget v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPageOffset:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 270
    :cond_c
    iget v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v1, :cond_d

    add-float/2addr v0, v6

    goto :goto_4

    :cond_d
    add-float/2addr v0, v6

    move v10, v4

    move v4, v0

    move v0, v10

    .line 277
    :goto_4
    iget v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mRadius:F

    iget-object v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 445
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result p1

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    return-void

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result p1

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 402
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 411
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 412
    iput p2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mPageOffset:F

    .line 413
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 422
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 423
    :cond_0
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 424
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 425
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->invalidate()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 506
    check-cast p1, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;

    .line 507
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 508
    iget v0, p1, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 509
    iget p1, p1, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 510
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 515
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 516
    new-instance v1, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 517
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    iput v0, v1, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 284
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 350
    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 351
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 352
    iget v4, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_2

    move v2, v1

    .line 354
    :cond_2
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 356
    :cond_3
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    .line 343
    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 344
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 345
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    .line 296
    :pswitch_3
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 297
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 298
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    .line 300
    iget-boolean v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_4

    .line 301
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 302
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 306
    :cond_4
    iget-boolean v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_a

    .line 307
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 308
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 309
    :cond_5
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 318
    :pswitch_4
    iget-boolean v3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_9

    .line 319
    iget-object v3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 320
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 324
    iget v6, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    const/4 v7, 0x3

    if-lez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v8, v5, v4

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    if-eq v0, v7, :cond_6

    .line 326
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_6
    return v1

    .line 329
    :cond_7
    iget v6, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    sub-int/2addr v3, v1

    if-ge v6, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v5, v4

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    if-eq v0, v7, :cond_8

    .line 331
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_8
    return v1

    .line 337
    :cond_9
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    .line 338
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 339
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 291
    :pswitch_5
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    :cond_a
    :goto_0
    return v1

    :cond_b
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 371
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 372
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_2
    iput-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 375
    iget-object p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 376
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->invalidate()V

    return-void
.end method
