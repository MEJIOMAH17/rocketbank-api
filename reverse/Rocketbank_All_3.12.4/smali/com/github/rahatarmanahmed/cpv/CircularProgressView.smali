.class public Lcom/github/rahatarmanahmed/cpv/CircularProgressView;
.super Landroid/view/View;
.source "CircularProgressView.java"


# instance fields
.field private actualProgress:F

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private size:I

.field private startAngle:F

.field private startAngleRotate:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic access$002(Lcom/github/rahatarmanahmed/cpv/CircularProgressView;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->actualProgress:F

    return p1
.end method

.method static synthetic access$202(Lcom/github/rahatarmanahmed/cpv/CircularProgressView;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngle:F

    return p1
.end method

.method private stopAnimation()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 415
    iput-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 419
    iput-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 490
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 497
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 498
    invoke-direct {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->stopAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->actualProgress:F

    const/4 v1, 0x0

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    .line 171
    iget v3, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngle:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 132
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 133
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 134
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 135
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p1

    .line 136
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 137
    :goto_0
    iput v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->size:I

    .line 138
    iget v0, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->size:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 145
    :goto_0
    iput p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->size:I

    .line 1151
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getPaddingLeft()I

    move-result p1

    .line 1152
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    int-to-float p4, p1

    int-to-float v0, p2

    .line 1153
    iget v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->size:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iget v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->size:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 8

    .line 503
    invoke-virtual {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getVisibility()I

    move-result v0

    .line 504
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_2

    .line 1331
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1332
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1333
    :cond_0
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1334
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x0

    .line 1342
    iput p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngle:F

    const/4 v0, 0x2

    .line 1343
    new-array v1, v0, [F

    iget v2, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngle:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngle:F

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    .line 1344
    iget-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1345
    iget-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v2, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1346
    iget-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$3;

    invoke-direct {v2, p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$3;-><init>(Lcom/github/rahatarmanahmed/cpv/CircularProgressView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1353
    iget-object v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1356
    iput p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->actualProgress:F

    .line 1357
    new-array v0, v0, [F

    iget v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->actualProgress:F

    aput v1, v0, v3

    aput p1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 1358
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1359
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1360
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$4;

    invoke-direct {v0, p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$4;-><init>(Lcom/github/rahatarmanahmed/cpv/CircularProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1367
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 509
    :cond_3
    invoke-direct {p0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->stopAnimation()V

    :cond_4
    return-void
.end method
