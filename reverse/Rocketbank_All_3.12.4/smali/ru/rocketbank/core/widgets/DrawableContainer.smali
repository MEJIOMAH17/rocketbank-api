.class public Lru/rocketbank/core/widgets/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

.field private mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field protected mIshowingEnding:Z

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 36
    iput v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    return-void
.end method

.method private animateEnding(Z)V
    .locals 13

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 499
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_1

    .line 500
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_2

    .line 501
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v2, v9, v0

    if-gtz v2, :cond_0

    .line 502
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 505
    :cond_0
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    sub-long v11, v9, v0

    mul-long/2addr v11, v4

    long-to-int v2, v11

    iget-object v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v9, v9, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v2, v9

    .line 508
    iget-object v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    rsub-int v2, v2, 0xff

    iget v10, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    mul-int/2addr v2, v10

    div-int/lit16 v2, v2, 0xff

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v2, v3

    goto :goto_1

    .line 513
    :cond_1
    :goto_0
    iput-wide v7, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    :cond_2
    move v2, v6

    .line 515
    :goto_1
    iget-object v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 516
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_5

    .line 517
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v11, v9, v0

    if-gtz v11, :cond_3

    .line 518
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v3, 0x0

    .line 519
    iput-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 522
    :cond_3
    iget-wide v6, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    sub-long v8, v6, v0

    mul-long/2addr v8, v4

    long-to-int v2, v8

    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v4, v4, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v2, v4

    .line 525
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v2, v3

    goto :goto_3

    .line 530
    :cond_4
    :goto_2
    iput-wide v7, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 534
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    add-long v4, v0, v2

    invoke-virtual {p0, p1, v4, v5}, Lru/rocketbank/core/widgets/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method


# virtual methods
.method final animate(Z)V
    .locals 13

    .line 450
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/DrawableContainer;->animateEnding(Z)V

    return-void

    .line 455
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 457
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_2

    .line 458
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_3

    .line 459
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v2, v9, v0

    if-gtz v2, :cond_1

    .line 460
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    sub-long v11, v9, v0

    mul-long/2addr v11, v4

    long-to-int v2, v11

    iget-object v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v9, v9, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v2, v9

    .line 466
    iget-object v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    rsub-int v2, v2, 0xff

    iget v10, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    mul-int/2addr v2, v10

    div-int/lit16 v2, v2, 0xff

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v2, v3

    goto :goto_1

    .line 471
    :cond_2
    :goto_0
    iput-wide v7, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    :cond_3
    move v2, v6

    .line 473
    :goto_1
    iget-object v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 474
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    .line 475
    iget-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v11, v9, v0

    if-gtz v11, :cond_4

    .line 476
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v3, 0x0

    .line 477
    iput-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 480
    :cond_4
    iget-wide v6, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    sub-long v8, v6, v0

    mul-long/2addr v8, v4

    long-to-int v2, v8

    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v4, v4, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v2, v4

    .line 483
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v2, v3

    goto :goto_3

    .line 488
    :cond_5
    :goto_2
    iput-wide v7, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 492
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    add-long v4, v0, v2

    invoke-virtual {p0, p1, v4, v5}, Lru/rocketbank/core/widgets/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 63
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 545
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 548
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    return-object v0

    .line 550
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 552
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 540
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 229
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 3748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 4748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 237
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 216
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 1748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 2748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 224
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 255
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 7748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 259
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 8748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 263
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 242
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 5748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 6748
    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 250
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 298
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1

    .line 302
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    :goto_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 84
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 7

    .line 170
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 177
    iget-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 179
    :cond_1
    iget-wide v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 180
    iput-wide v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    move v0, v1

    .line 183
    :cond_2
    iget-wide v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 184
    iput-wide v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 559
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 560
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 561
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 9703
    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 562
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 9707
    iget-object v3, v3, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 564
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_1
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mMutated:Z

    :cond_2
    return-object p0

    .line 571
    :cond_3
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_6

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 572
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 10703
    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 573
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    .line 10707
    iget-object v3, v3, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    :goto_1
    if-ge v1, v0, :cond_5

    .line 575
    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 577
    :cond_5
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mMutated:Z

    :cond_6
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 208
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 197
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 273
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final selectDrawable(I)Z
    .locals 13

    .line 376
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_b

    .line 9306
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    if-ne p1, v0, :cond_0

    return v6

    .line 9310
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 9316
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v0, :cond_3

    .line 9317
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 9318
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 9320
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 9321
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 9322
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v9, v0

    add-long v11, v7, v9

    iput-wide v11, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 9324
    :cond_2
    iput-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 9325
    iput-wide v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 9327
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 9328
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 9331
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_6

    .line 9332
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 9333
    iput-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 9334
    iput p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    if-eqz v0, :cond_7

    .line 9336
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 9337
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez p1, :cond_5

    .line 9338
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v1, p1

    add-long v9, v7, v1

    iput-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_1

    .line 9340
    :cond_5
    iget p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9343
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->isVisible()Z

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 9344
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-boolean p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 9345
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 9346
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9347
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 9348
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 9351
    :cond_6
    iput-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 9352
    iput v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    .line 9355
    :cond_7
    :goto_2
    iget-wide v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_8

    iget-wide v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_a

    .line 9356
    :cond_8
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_9

    .line 9357
    new-instance p1, Lru/rocketbank/core/widgets/DrawableContainer$1;

    invoke-direct {p1, p0}, Lru/rocketbank/core/widgets/DrawableContainer$1;-><init>(Lru/rocketbank/core/widgets/DrawableContainer;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_3

    .line 9364
    :cond_9
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 9367
    :goto_3
    invoke-virtual {p0, v3}, Lru/rocketbank/core/widgets/DrawableContainer;->animate(Z)V

    .line 9370
    :cond_a
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->invalidateSelf()V

    return v3

    .line 380
    :cond_b
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    if-ne p1, v0, :cond_c

    return v6

    .line 384
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 390
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v0, :cond_f

    .line 391
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 392
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 394
    :cond_d
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 395
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v9, v0

    add-long v11, v7, v9

    iput-wide v11, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_4

    .line 398
    :cond_e
    iput-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 399
    iput-wide v4, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_4

    .line 401
    :cond_f
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 402
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_10
    :goto_4
    if-ltz p1, :cond_12

    .line 405
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_12

    .line 406
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 407
    iput-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    iput p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    if-eqz v0, :cond_13

    .line 410
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 411
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez p1, :cond_11

    .line 412
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v1, p1

    add-long v9, v7, v1

    iput-wide v9, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_5

    .line 414
    :cond_11
    iget p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 417
    :goto_5
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->isVisible()Z

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 418
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-boolean p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 419
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 420
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 421
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 422
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 425
    :cond_12
    iput-object v2, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 426
    iput v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurIndex:I

    .line 429
    :cond_13
    :goto_6
    iget-wide v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_14

    iget-wide v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mExitAnimationEnd:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_16

    .line 430
    :cond_14
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_15

    .line 431
    new-instance p1, Lru/rocketbank/core/widgets/DrawableContainer$2;

    invoke-direct {p1, p0}, Lru/rocketbank/core/widgets/DrawableContainer$2;-><init>(Lru/rocketbank/core/widgets/DrawableContainer;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_7

    .line 438
    :cond_15
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 441
    :goto_7
    invoke-virtual {p0, v3}, Lru/rocketbank/core/widgets/DrawableContainer;->animate(Z)V

    .line 444
    :cond_16
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->invalidateSelf()V

    return v3
.end method

.method public setAlpha(I)V
    .locals 5

    .line 90
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_1

    .line 91
    iput p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mAlpha:I

    .line 92
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 93
    iget-wide v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/DrawableContainer;->animate(Z)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 121
    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 122
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method protected final setConstantEndingState(Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    return-void
.end method

.method protected final setConstantState(Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 105
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 106
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableEndingContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 110
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_1

    .line 111
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 112
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    if-nez p1, :cond_1

    .line 113
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mDrawableContainerState:Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 286
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 287
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 290
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public swithEnding()V
    .locals 1

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mIshowingEnding:Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
