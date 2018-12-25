.class public Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;
.super Ljava/lang/Object;
.source "RocketScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "RocketScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;-><init>(Landroid/content/Context;Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    .line 196
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mListener:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    .line 198
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    const/4 v0, 0x1

    shl-int/2addr p2, v0

    iput p2, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mSpanSlop:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07008d

    .line 201
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mMinSpan:I

    .line 202
    iput-object p3, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    if-le p1, p2, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    const/16 p2, 0x16

    if-le p1, p2, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;F)F
    .locals 0

    .line 46
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;F)F
    .locals 0

    .line 46
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$202(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;I)I
    .locals 0

    .line 46
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    .line 382
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .line 478
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .line 488
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .line 498
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 568
    iget-wide v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .line 454
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 468
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .line 508
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .line 518
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .line 528
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 539
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 543
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 546
    :goto_0
    iget v3, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 547
    iget v4, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_3

    return v2

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v3, v2

    return v3

    :cond_4
    sub-float/2addr v2, v3

    return v2

    .line 549
    :cond_5
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v0, v1

    return v0

    :cond_6
    return v2
.end method

.method public getTimeDelta()J
    .locals 6

    .line 559
    iget-wide v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevTime:J

    sub-long v4, v0, v2

    return-wide v4
.end method

.method public isInProgress()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrTime:J

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 232
    iget-boolean v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 240
    :goto_0
    iget v7, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-eq v2, v6, :cond_4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v9, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v6

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eqz v9, :cond_8

    .line 249
    :cond_5
    iget-boolean v11, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_6

    .line 250
    iget-object v11, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mListener:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V

    .line 251
    iput-boolean v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    .line 252
    iput v10, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInitialSpan:F

    .line 253
    iput v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    .line 254
    :cond_6
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_7

    .line 255
    iput-boolean v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    .line 256
    iput v10, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInitialSpan:F

    .line 257
    iput v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    return v6

    .line 265
    :cond_8
    iget-boolean v11, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_9

    iget-boolean v11, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v4, :cond_9

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 270
    iput v8, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleMode:I

    .line 271
    iput v10, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInitialSpan:F

    :cond_9
    const/4 v4, 0x6

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_b

    const/4 v9, 0x5

    if-eq v2, v9, :cond_b

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    move v7, v5

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v6

    :goto_6
    if-ne v2, v4, :cond_c

    move v4, v6

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    if-eqz v4, :cond_d

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_8

    :cond_d
    const/4 v9, -0x1

    :goto_8
    if-eqz v4, :cond_e

    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    :cond_e
    move v4, v3

    .line 286
    :goto_9
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 289
    iget v11, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 290
    iget v12, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_f

    .line 292
    iput-boolean v6, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_a

    .line 294
    :cond_f
    iput-boolean v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    :goto_a
    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    goto :goto_c

    :cond_10
    move v11, v5

    move v12, v10

    move v13, v12

    :goto_b
    if-ge v11, v3, :cond_12

    if-eq v9, v11, :cond_11

    .line 299
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 300
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_12
    int-to-float v11, v4

    div-float/2addr v12, v11

    div-float v11, v13, v11

    :goto_c
    move v13, v10

    move v14, v13

    move v10, v5

    :goto_d
    if-ge v10, v3, :cond_14

    if-eq v9, v10, :cond_13

    .line 313
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v13, v15

    .line 314
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_14
    int-to-float v1, v4

    div-float/2addr v13, v1

    div-float/2addr v14, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float/2addr v14, v1

    .line 325
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v14

    goto :goto_e

    :cond_15
    float-to-double v3, v13

    float-to-double v9, v14

    .line 328
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 334
    :goto_e
    iget-boolean v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    .line 335
    iput v12, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mFocusX:F

    .line 336
    iput v11, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mFocusY:F

    .line 337
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-nez v4, :cond_17

    iget-boolean v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    if-eqz v4, :cond_17

    iget v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mMinSpan:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_16

    if-eqz v7, :cond_17

    .line 338
    :cond_16
    iget-object v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mListener:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V

    .line 339
    iput-boolean v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    .line 340
    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInitialSpan:F

    :cond_17
    if-eqz v7, :cond_18

    .line 343
    iput v13, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanX:F

    iput v13, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanX:F

    .line 344
    iput v14, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanY:F

    iput v14, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanY:F

    .line 345
    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInitialSpan:F

    .line 348
    :cond_18
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mSpanSlop:I

    goto :goto_f

    :cond_19
    iget v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mMinSpan:I

    .line 349
    :goto_f
    iget-boolean v5, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    if-nez v5, :cond_1b

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1b

    if-nez v3, :cond_1a

    iget v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 350
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    .line 351
    :cond_1a
    iput v13, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanX:F

    iput v13, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanX:F

    .line 352
    iput v14, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanY:F

    iput v14, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanY:F

    .line 353
    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    .line 354
    iget-wide v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrTime:J

    iput-wide v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevTime:J

    .line 355
    iget-object v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mListener:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    :cond_1b
    if-ne v2, v8, :cond_1d

    .line 360
    iput v13, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanX:F

    .line 361
    iput v14, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanY:F

    .line 362
    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    .line 366
    iget-boolean v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_1c

    .line 367
    iget-object v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mListener:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;->onScale(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z

    move-result v1

    goto :goto_10

    :cond_1c
    move v1, v6

    :goto_10
    if-eqz v1, :cond_1d

    .line 371
    iget v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanX:F

    .line 372
    iget v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpanY:F

    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpanY:F

    .line 373
    iget v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevSpan:F

    .line 374
    iget-wide v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mPrevTime:J

    :cond_1d
    return v6
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 392
    iput-boolean p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 393
    iget-boolean p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 394
    new-instance p1, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;-><init>(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V

    .line 405
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
