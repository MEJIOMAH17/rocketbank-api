.class Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 345
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 346
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRotation:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 347
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 348
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 364
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 367
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 368
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 369
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 408
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 411
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 417
    :goto_0
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v0, v1

    .line 418
    iget-wide v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 419
    iget-wide v5, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 424
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 425
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 429
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 431
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColors:[I

    iget v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 432
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 433
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 432
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 434
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object p3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private invalidateSelf()V
    .locals 2

    .line 591
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 391
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 392
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 393
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 394
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v6, v0, v2

    .line 395
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v2

    sub-float v7, v0, v6

    .line 397
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColors:[I

    iget v3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v5, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 399
    invoke-direct {p0, p1, v6, v7, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 400
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mAlpha:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 475
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    .line 544
    iget-wide v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 511
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .line 534
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 520
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 496
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .line 502
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .line 568
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .line 499
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 487
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 2

    .line 459
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColorIndex:I

    return-void
.end method

.method public resetOriginals()V
    .locals 1

    const/4 v0, 0x0

    .line 583
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 584
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 585
    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 586
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 587
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 588
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 469
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mAlpha:I

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 0

    float-to-int p1, p1

    .line 384
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowWidth:I

    float-to-int p1, p2

    .line 385
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 559
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 560
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 561
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 375
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    return-void
.end method

.method public setCenterRadius(D)V
    .locals 0

    .line 541
    iput-wide p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 463
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setColorIndex(I)V
    .locals 0

    .line 452
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColorIndex:I

    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 443
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mColors:[I

    const/4 p1, 0x0

    .line 445
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setEndTrim(F)V
    .locals 0

    .line 506
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 507
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setInsets(II)V
    .locals 4

    .line 523
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 525
    iget-wide v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    const/high16 v0, 0x40000000    # 2.0f

    if-lez p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    float-to-double p1, p1

    .line 528
    iget-wide v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr p1, v0

    double-to-float p1, p1

    goto :goto_1

    .line 526
    :cond_1
    :goto_0
    iget p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 530
    :goto_1
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 515
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRotation:F

    .line 516
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1

    .line 550
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 551
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 552
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0

    .line 491
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 492
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 481
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 482
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .line 575
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 576
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 577
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method
