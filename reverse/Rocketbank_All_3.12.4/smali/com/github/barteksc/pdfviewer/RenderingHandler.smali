.class final Lcom/github/barteksc/pdfviewer/RenderingHandler;
.super Landroid/os/Handler;
.source "RenderingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    }
.end annotation


# instance fields
.field private final openedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private renderBounds:Landroid/graphics/RectF;

.field private renderMatrix:Landroid/graphics/Matrix;

.field private roundedRenderBounds:Landroid/graphics/Rect;

.field private running:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Ljava/util/Set;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    .line 57
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 58
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 59
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/RenderingHandler;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object p0
.end method

.method private proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .locals 12

    .line 87
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Ljava/util/Set;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Ljava/util/Set;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    .line 92
    :cond_0
    iget v0, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 93
    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 96
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v3, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    .line 1119
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1120
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    int-to-float v0, v0

    mul-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    int-to-float v1, v1

    mul-float/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1121
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1123
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1124
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1125
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 102
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v6, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-boolean v11, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->annotationRendering:Z

    move-object v5, v2

    .line 102
    invoke-virtual/range {v3 .. v11}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    .line 107
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    new-instance v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    iget v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->userPage:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget-object v7, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    iget-boolean v8, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->thumbnail:Z

    iget v9, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->cacheOrder:I

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    return-object v0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final addRenderingTask$401b142b$3bdfdd21(IIFFLandroid/graphics/RectF;ZI)V
    .locals 12

    move-object v10, p0

    .line 63
    new-instance v11, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, v10

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move v5, p1

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;FFLandroid/graphics/RectF;IIZIZ)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {v10, v0, v11}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 65
    invoke-virtual {v10, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    .line 71
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v1, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method final start()V
    .locals 1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    return-void
.end method

.method final stop()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    return-void
.end method
