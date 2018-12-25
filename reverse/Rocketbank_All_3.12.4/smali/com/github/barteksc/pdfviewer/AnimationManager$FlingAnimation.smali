.class final Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;
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
    name = "FlingAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

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

    .line 177
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 178
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

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
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 165
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object p1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 166
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    :cond_0
    return-void
.end method
