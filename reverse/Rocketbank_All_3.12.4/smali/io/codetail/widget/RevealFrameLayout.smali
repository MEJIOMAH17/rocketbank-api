.class public Lio/codetail/widget/RevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RevealFrameLayout.java"

# interfaces
.implements Lio/codetail/animation/RevealAnimator;


# instance fields
.field private mRadius:F

.field private mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

.field private mRevealPath:Landroid/graphics/Path;

.field private mRunning:Z

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lio/codetail/widget/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lio/codetail/widget/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/codetail/widget/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    .line 33
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final attachRevealInfo(Lio/codetail/animation/RevealAnimator$RevealInfo;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 97
    iget-boolean v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    .line 4090
    iget-object v0, v0, Lio/codetail/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 100
    iget-object v1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 101
    iget-object v1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    iget-object v2, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    iget v2, v2, Lio/codetail/animation/RevealAnimator$RevealInfo;->centerX:I

    int-to-float v2, v2

    iget-object v3, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    iget v3, v3, Lio/codetail/animation/RevealAnimator$RevealInfo;->centerY:I

    int-to-float v3, v3

    iget v4, p0, Lio/codetail/widget/RevealFrameLayout;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 103
    iget-object v1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2

    .line 112
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final getRevealRadius()F
    .locals 1

    .line 71
    iget v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRadius:F

    return v0
.end method

.method public final onRevealAnimationCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1043
    iput-boolean v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRunning:Z

    .line 1044
    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/codetail/widget/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onRevealAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRunning:Z

    .line 44
    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/codetail/widget/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onRevealAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRunning:Z

    return-void
.end method

.method public final setRevealRadius(F)V
    .locals 1

    .line 59
    iput p1, p0, Lio/codetail/widget/RevealFrameLayout;->mRadius:F

    .line 60
    iget-object p1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    .line 1090
    iget-object p1, p1, Lio/codetail/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 60
    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 61
    iget-object p1, p0, Lio/codetail/widget/RevealFrameLayout;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lio/codetail/widget/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final startReverseAnimation()Lio/codetail/animation/SupportAnimator;
    .locals 5

    .line 87
    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    .line 2090
    iget-object v0, v0, Lio/codetail/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 87
    iget-boolean v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRunning:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    .line 3090
    iget-object v0, v0, Lio/codetail/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    iget-object v1, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    iget v1, v1, Lio/codetail/animation/RevealAnimator$RevealInfo;->centerX:I

    iget-object v2, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    iget v2, v2, Lio/codetail/animation/RevealAnimator$RevealInfo;->centerY:I

    iget-object v3, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    iget v3, v3, Lio/codetail/animation/RevealAnimator$RevealInfo;->endRadius:F

    iget-object v4, p0, Lio/codetail/widget/RevealFrameLayout;->mRevealInfo:Lio/codetail/animation/RevealAnimator$RevealInfo;

    iget v4, v4, Lio/codetail/animation/RevealAnimator$RevealInfo;->startRadius:F

    invoke-static {v0, v1, v2, v3, v4}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
