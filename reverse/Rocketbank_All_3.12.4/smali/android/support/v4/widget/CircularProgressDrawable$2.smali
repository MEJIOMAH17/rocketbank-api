.class final Landroid/support/v4/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/CircularProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    .line 575
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 594
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V

    .line 595
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 1930
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 1931
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 1932
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 596
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 3804
    iget v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 4792
    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 4793
    iget-object v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v2, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    iput v1, v0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 597
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$302$6c8a9448(Landroid/support/v4/widget/CircularProgressDrawable;)Z

    .line 601
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v0, 0x534

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 603
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 604
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    .line 4896
    iget-boolean v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4897
    iput-boolean v0, p1, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    :cond_0
    return-void

    .line 606
    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F

    move-result v0

    add-float/2addr v0, v3

    invoke-static {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 579
    iget-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F

    return-void
.end method
