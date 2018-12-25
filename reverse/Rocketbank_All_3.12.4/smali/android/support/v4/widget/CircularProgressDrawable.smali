.class public final Landroid/support/v4/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircularProgressDrawable$Ring;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-nez p1, :cond_0

    .line 1098
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 136
    :cond_0
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 138
    new-instance p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {p1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 139
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    sget-object v0, Landroid/support/v4/widget/CircularProgressDrawable;->COLORS:[I

    .line 1756
    iput-object v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    const/4 v0, 0x0

    .line 1792
    iput v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 1793
    iget-object v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v1, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    iput v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 2189
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/high16 v0, 0x40200000    # 2.5f

    .line 2837
    iput v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 2838
    iget-object p1, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2190
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 3561
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v0, 0x2

    .line 3562
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3563
    new-instance v1, Landroid/support/v4/widget/CircularProgressDrawable$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$1;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, -0x1

    .line 3572
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 3573
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 3574
    sget-object v1, Landroid/support/v4/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3575
    new-instance v1, Landroid/support/v4/widget/CircularProgressDrawable$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable$2;-><init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3610
    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000$50dd9db1(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    .line 65
    invoke-static {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V
    .locals 6

    .line 23529
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    const v1, 0x3c23d70a    # 0.01f

    if-eqz v0, :cond_0

    .line 24512
    invoke-static {p1, p2}, Landroid/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V

    .line 24922
    iget p0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    const p3, 0x3f4ccccd    # 0.8f

    div-float/2addr p0, p3

    float-to-double v2, p0

    .line 24513
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float p0, v2

    .line 25854
    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 25858
    iget v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    sub-float/2addr v0, v1

    .line 26854
    iget v1, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr p3, v0

    .line 27846
    iput p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 27858
    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 27866
    iput p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 27922
    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 28922
    iget v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr p3, p0

    .line 29874
    iput p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    .line 29922
    :cond_1
    iget p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v3, p1, v2

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v3, :cond_2

    div-float v0, p1, v2

    .line 30854
    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 23540
    sget-object v3, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 23541
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    add-float/2addr v4, v2

    move v0, v2

    move v2, v4

    goto :goto_0

    :cond_2
    sub-float v3, p1, v2

    div-float/2addr v3, v2

    .line 31854
    iget v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    add-float/2addr v2, v4

    .line 23545
    sget-object v5, Landroid/support/v4/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 23546
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v0, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    sub-float v0, v2, v4

    :goto_0
    const v1, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v1, p1

    add-float/2addr p3, v1

    const/high16 v1, 0x43580000    # 216.0f

    .line 23551
    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr p1, v3

    mul-float/2addr v1, p1

    .line 32846
    iput v0, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 32866
    iput v2, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 32874
    iput p3, p2, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 33421
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    :cond_3
    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F
    .locals 0

    .line 65
    iget p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F
    .locals 0

    .line 65
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotationCount:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return p0
.end method

.method static synthetic access$302$6c8a9448(Landroid/support/v4/widget/CircularProgressDrawable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    return v0
.end method

.method private static updateRingColor(FLandroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 8

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p0, v0

    .line 19862
    iget-object v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v1, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    .line 20800
    iget-object v1, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    .line 20804
    iget v2, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 20800
    aget v1, v1, v2

    ushr-int/lit8 v2, v0, 0x18

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v5, v1, 0x18

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v5, p0

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x18

    sub-int/2addr v6, v3

    int-to-float v5, v6

    mul-float/2addr v5, p0

    float-to-int v5, v5

    add-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sub-int/2addr v7, v4

    int-to-float v3, v7

    mul-float/2addr v3, p0

    float-to-int v3, v3

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    or-int p0, v2, v0

    .line 21773
    iput p0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    return-void

    .line 21862
    :cond_0
    iget-object p0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget p0, p0, v0

    .line 22773
    iput p0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 396
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 398
    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 399
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 10687
    iget-object v8, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 10688
    iget v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    .line 10689
    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    const/4 v10, 0x0

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_0

    .line 10691
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v3, v3

    iget v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    iget v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v4, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v2, v3

    .line 10694
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    .line 10695
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 10696
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 10697
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    .line 10694
    invoke-virtual {v8, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10699
    iget v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iget v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    .line 10700
    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iget v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    sub-float v11, v3, v0

    .line 10703
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10704
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10707
    iget v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v9

    .line 10708
    invoke-virtual {v8, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 10709
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v9

    iget-object v6, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v2, v2

    .line 10711
    invoke-virtual {v8, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v6, 0x0

    .line 10713
    iget-object v7, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move-object v3, v8

    move v4, v0

    move v5, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 10719
    iget-boolean v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v2, :cond_2

    .line 10720
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 10721
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 10722
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 10724
    :cond_1
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 10726
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v9

    .line 10727
    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v3, v3

    iget v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    .line 10732
    iget-object v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v4, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10733
    iget-object v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10734
    iget-object v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v9

    iget v6, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v6, v6

    iget v7, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10736
    iget-object v4, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v2, v5

    sub-float/2addr v2, v3

    .line 10737
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v5, v9

    add-float/2addr v3, v5

    .line 10736
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 10738
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 10740
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10741
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10742
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float/2addr v0, v11

    .line 10743
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 10744
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 10743
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 10745
    iget-object v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v1, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 10746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 400
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 411
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 10830
    iget v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 10823
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    .line 406
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setArrowEnabled(Z)V
    .locals 2

    .line 277
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 6896
    iget-boolean v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eq v1, p1, :cond_0

    .line 6897
    iput-boolean p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setArrowScale(F)V
    .locals 2

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 6909
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 6910
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    .line 297
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 11816
    iget-object v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 417
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final varargs setColorSchemeColors([I)V
    .locals 3

    .line 389
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 8756
    iput-object p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    const/4 p1, 0x0

    .line 8792
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 8793
    iget-object v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 390
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 9792
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 9793
    iget-object p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget p1, p1, v1

    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setProgressRotation(F)V
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 7874
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 348
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setStartEndTrim$2548a35(F)V
    .locals 2

    .line 327
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    .line 7846
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 328
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 7866
    iput p1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setStyle$13462e()V
    .locals 4

    .line 4148
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 4149
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4150
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, v1

    .line 4837
    iput v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 4838
    iget-object v3, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x40f00000    # 7.5f

    mul-float/2addr v2, v1

    .line 4885
    iput v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    const/4 v2, 0x0

    .line 5792
    iput v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 5793
    iget-object v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v3, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v2, v2, v3

    iput v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v1

    float-to-int v1, v2

    .line 6663
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    float-to-int v1, v3

    .line 6664
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 443
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 444
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 11930
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 11931
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 11932
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 446
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 12870
    iget v0, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 446
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 13850
    iget v1, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mFinishing:Z

    .line 448
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 449
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    .line 14792
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 14793
    iget-object v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 452
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    .line 14939
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 14940
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 14941
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 15846
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 15866
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 15874
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 453
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 454
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final stop()V
    .locals 4

    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 16421
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRotation:F

    .line 465
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 16896
    iget-boolean v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 16897
    iput-boolean v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    .line 466
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 17792
    iput v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 17793
    iget-object v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v3, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v2, v2, v3

    iput v2, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 467
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable;->mRing:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 17939
    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 17940
    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 17941
    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 18846
    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 18866
    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 18874
    iput v0, v1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 468
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
