.class public Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSlop:I

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    iput v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mAnimationTime:J

    .line 121
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 122
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 123
    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mCallbacks:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;
    .locals 0

    .line 66
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mCallbacks:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    return-object p0
.end method

.method private performDismiss()V
    .locals 5

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    .line 263
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 265
    new-instance v3, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;

    invoke-direct {v3, p0, v0, v1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;-><init>(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    new-instance v1, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;-><init>(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 129
    iget p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 131
    iget p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    .line 135
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 201
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 205
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mAnimationTime:J

    .line 208
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 211
    iput-object v2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 212
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mTranslationX:F

    .line 213
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownX:F

    .line 214
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownY:F

    .line 215
    iput-boolean v5, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_9

    .line 220
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v1

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownY:F

    sub-float/2addr v1, v2

    .line 227
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSlop:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 228
    iput-boolean v4, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 229
    iget v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSlop:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSlop:I

    neg-int v1, v1

    :goto_0
    iput v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 230
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 233
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x3

    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    .line 234
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 237
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 241
    :cond_2
    iget-boolean p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p2, :cond_e

    .line 242
    iput p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mTranslationX:F

    .line 243
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    iget v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 245
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 246
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v6, p1

    iget p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float p1, p1

    div-float/2addr v6, p1

    sub-float p1, v3, v6

    .line 245
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return v4

    .line 149
    :pswitch_2
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v6, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v6

    .line 154
    iget-object v6, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {p2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 156
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 157
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 158
    iget-object v7, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 161
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    div-int/2addr v9, v1

    int-to-float v1, v9

    cmpl-float v1, v8, v1

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v1, :cond_4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    move v10, v4

    move v4, p1

    move p1, v10

    goto :goto_5

    .line 164
    :cond_4
    iget v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_9

    iget v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_9

    cmpg-float v1, v7, v6

    if-gez v1, :cond_9

    cmpg-float v1, v7, v6

    if-gez v1, :cond_9

    iget-boolean v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v1, :cond_9

    cmpg-float p2, p2, v0

    if-gez p2, :cond_5

    move p2, v4

    goto :goto_2

    :cond_5
    move p2, v5

    :goto_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    move p1, v4

    goto :goto_3

    :cond_6
    move p1, v5

    :goto_3
    if-ne p2, p1, :cond_7

    move p1, v4

    goto :goto_4

    :cond_7
    move p1, v5

    .line 169
    :goto_4
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    goto :goto_5

    :cond_9
    move p1, v5

    move v4, p1

    :goto_5
    if-eqz p1, :cond_b

    .line 173
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v4, :cond_a

    iget p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    :goto_6
    int-to-float p2, p2

    goto :goto_7

    :cond_a
    iget p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mViewWidth:I

    neg-int p2, p2

    goto :goto_6

    .line 174
    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mAnimationTime:J

    .line 176
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$1;-><init>(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)V

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_8

    .line 183
    :cond_b
    iget-boolean p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p1, :cond_c

    .line 185
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mAnimationTime:J

    .line 188
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 189
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 191
    :cond_c
    :goto_8
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 192
    iput-object v2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 193
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mTranslationX:F

    .line 194
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownX:F

    .line 195
    iput v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownY:F

    .line 196
    iput-boolean v5, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mSwiping:Z

    goto :goto_9

    .line 138
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownX:F

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mDownY:F

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mCallbacks:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_d
    return v4

    :cond_e
    :goto_9
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
