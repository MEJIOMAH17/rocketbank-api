.class final Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomAnimation"
.end annotation


# instance fields
.field private final centerX:F

.field private final centerY:F

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/AnimationManager;FF)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerX:F

    .line 131
    iput p3, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerY:F

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 147
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$100(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 137
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerX:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerY:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method
