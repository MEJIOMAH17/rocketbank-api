.class public final Lio/codetail/animation/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# static fields
.field private static final LOLLIPOP_PLUS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/codetail/animation/ViewAnimationUtils;->LOLLIPOP_PLUS:Z

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1074
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lio/codetail/animation/RevealAnimator;

    if-nez v0, :cond_0

    .line 1075
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View must be inside RevealFrameLayout or RevealLinearLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1078
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lio/codetail/animation/RevealAnimator;

    .line 1079
    new-instance v7, Lio/codetail/animation/RevealAnimator$RevealInfo;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lio/codetail/animation/RevealAnimator$RevealInfo;-><init>(IIFFLjava/lang/ref/WeakReference;)V

    invoke-interface {v0, v7}, Lio/codetail/animation/RevealAnimator;->attachRevealInfo(Lio/codetail/animation/RevealAnimator$RevealInfo;)V

    .line 1082
    sget-boolean v1, Lio/codetail/animation/ViewAnimationUtils;->LOLLIPOP_PLUS:Z

    if-eqz v1, :cond_1

    .line 1083
    new-instance v1, Lio/codetail/animation/SupportAnimatorImpl;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lio/codetail/animation/SupportAnimatorImpl;-><init>(Landroid/animation/Animator;Lio/codetail/animation/RevealAnimator;)V

    return-object v1

    .line 1087
    :cond_1
    sget-object p0, Lio/codetail/animation/RevealAnimator;->CLIP_RADIUS:Lio/codetail/animation/RevealAnimator$RevealRadius;

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p3, p1, p2

    const/4 p2, 0x1

    aput p4, p1, p2

    invoke-static {v0, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 1088
    new-instance p1, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;

    invoke-direct {p1, v0}, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;-><init>(Lio/codetail/animation/RevealAnimator;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1089
    new-instance p1, Lio/codetail/animation/SupportAnimatorImpl;

    invoke-direct {p1, p0, v0}, Lio/codetail/animation/SupportAnimatorImpl;-><init>(Landroid/animation/Animator;Lio/codetail/animation/RevealAnimator;)V

    return-object p1
.end method
