.class public Lru/rocketbank/r2d2/friends/SwipeTouchListener;
.super Ljava/lang/Object;
.source "SwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;

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
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mViewWidth:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSlop:I

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    iput v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mMinFlingVelocity:I

    .line 63
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mMaxFlingVelocity:I

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mAnimationTime:J

    .line 66
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mToken:Ljava/lang/Object;

    .line 68
    iput-object p3, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mCallbacks:Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/SwipeTouchListener;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->performDismiss()V

    return-void
.end method

.method private performDismiss()V
    .locals 3

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mCallbacks:Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 74
    iget p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mTranslationX:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 76
    iget p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mViewWidth:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mViewWidth:I

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 144
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 148
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v5, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mAnimationTime:J

    .line 150
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 153
    iput-object v2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 154
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mTranslationX:F

    .line 155
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownX:F

    .line 156
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownY:F

    .line 157
    iput-boolean v4, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    goto/16 :goto_9

    .line 162
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 166
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownX:F

    sub-float/2addr p1, v1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 169
    iget p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwipingSlop:I

    int-to-float p1, p1

    .line 171
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownY:F

    sub-float/2addr v1, v2

    .line 172
    iget v2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSlop:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 173
    iput-boolean v3, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 174
    iget v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSlop:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSlop:I

    neg-int v0, v0

    :goto_0
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwipingSlop:I

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 178
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v1

    .line 179
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 182
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 186
    :cond_3
    iget-boolean p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    if-eqz p2, :cond_f

    .line 187
    iput p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mTranslationX:F

    .line 188
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    iget v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwipingSlop:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    return v3

    .line 94
    :pswitch_2
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v5, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownX:F

    sub-float/2addr p1, v5

    .line 99
    iget-object v5, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 100
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {p2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 101
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 102
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 103
    iget-object v6, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 106
    iget v7, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mViewWidth:I

    div-int/2addr v7, v1

    int-to-float v1, v7

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    if-eqz v1, :cond_5

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v4

    :goto_1
    move v8, v3

    move v3, p1

    move p1, v8

    goto :goto_5

    .line 109
    :cond_5
    iget v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mMinFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_a

    iget v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mMaxFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_a

    cmpg-float v1, v6, v5

    if-gez v1, :cond_a

    cmpg-float v1, v6, v5

    if-gez v1, :cond_a

    iget-boolean v1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    if-eqz v1, :cond_a

    cmpg-float p2, p2, v0

    if-gez p2, :cond_6

    move p2, v3

    goto :goto_2

    :cond_6
    move p2, v4

    :goto_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    move p1, v3

    goto :goto_3

    :cond_7
    move p1, v4

    :goto_3
    if-ne p2, p1, :cond_8

    move p1, v3

    goto :goto_4

    :cond_8
    move p1, v4

    .line 114
    :goto_4
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    goto :goto_5

    :cond_a
    move p1, v4

    move v3, p1

    :goto_5
    if-eqz p1, :cond_c

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v3, :cond_b

    iget p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mViewWidth:I

    :goto_6
    int-to-float p2, p2

    goto :goto_7

    :cond_b
    iget p2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mViewWidth:I

    neg-int p2, p2

    goto :goto_6

    .line 119
    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v5, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mAnimationTime:J

    .line 120
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/friends/SwipeTouchListener$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/friends/SwipeTouchListener$1;-><init>(Lru/rocketbank/r2d2/friends/SwipeTouchListener;)V

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_8

    .line 127
    :cond_c
    iget-boolean p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    if-eqz p1, :cond_d

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v5, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mAnimationTime:J

    .line 131
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 134
    :cond_d
    :goto_8
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 135
    iput-object v2, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 136
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mTranslationX:F

    .line 137
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownX:F

    .line 138
    iput v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownY:F

    .line 139
    iput-boolean v4, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mSwiping:Z

    goto :goto_9

    .line 83
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownX:F

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mDownY:F

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mCallbacks:Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 86
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/SwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_e
    return v3

    :cond_f
    :goto_9
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
