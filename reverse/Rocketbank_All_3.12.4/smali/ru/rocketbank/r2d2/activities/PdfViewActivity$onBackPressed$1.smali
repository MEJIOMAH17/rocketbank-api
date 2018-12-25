.class public final Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;
.super Ljava/lang/Object;
.source "PdfViewActivity.kt"

# interfaces
.implements Lio/codetail/animation/SupportAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/PdfViewActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/PdfViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->finish()V

    return-void
.end method

.method public final onAnimationEnd()V
    .locals 2

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getBinding$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    const-string v1, "binding.pdfView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->finish()V

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$onBackPressed$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onAnimationRepeat()V
    .locals 0

    return-void
.end method

.method public final onAnimationStart()V
    .locals 0

    return-void
.end method
