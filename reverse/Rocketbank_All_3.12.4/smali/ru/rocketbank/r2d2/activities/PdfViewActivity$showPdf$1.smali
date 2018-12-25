.class final Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;
.super Ljava/lang/Object;
.source "PdfViewActivity.kt"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/PdfViewActivity;->showPdf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/PdfViewActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadComplete(I)V
    .locals 2

    .line 68
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$isReveal$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getCx$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/PdfViewActivity$showPdf$1;->this$0:Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getCy$p(Lru/rocketbank/r2d2/activities/PdfViewActivity;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$revealOpen(Lru/rocketbank/r2d2/activities/PdfViewActivity;II)V

    :cond_0
    return-void
.end method
