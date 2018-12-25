.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$Configurator;,
        Lcom/github/barteksc/pdfviewer/PDFView$State;,
        Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PDFView"


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private annotationRendering:Z

.field private antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private bestQuality:Z

.field cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

.field private currentFilteredPage:I

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

.field private defaultPage:I

.field private documentPageCount:I

.field private dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

.field private enableAntialiasing:Z

.field private filteredUserPageIndexes:[I

.field private filteredUserPages:[I

.field private isScrollHandleInit:Z

.field private maxZoom:F

.field private midZoom:F

.field private minZoom:F

.field private onDrawListener$33caec06:Landroid/arch/lifecycle/GeneratedAdapter;

.field private onErrorListener$3b7c5f18:Landroid/arch/lifecycle/GeneratedAdapter;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener$3f6eef3f:Landroid/arch/lifecycle/GeneratedAdapter;

.field private onPageScrollListener$1750b33e:Landroid/arch/lifecycle/GeneratedAdapter;

.field private onRenderListener$6de79dd8:Landroid/arch/lifecycle/GeneratedAdapter;

.field private optimalPageHeight:F

.field private optimalPageWidth:F

.field private originalUserPages:[I

.field private pageHeight:I

.field private pageWidth:I

.field private pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

.field private paint:Landroid/graphics/Paint;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private recycled:Z

.field private renderDuringScale:Z

.field renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

.field private final renderingHandlerThread:Landroid/os/HandlerThread;

.field private scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

.field private scrollHandle$a08f615:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

.field private state:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field private swipeVertical:Z

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 87
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 88
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 89
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    .line 100
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 172
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 177
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    const/4 p2, 0x1

    .line 182
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 187
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    .line 247
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    .line 258
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 268
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    .line 274
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    .line 282
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    .line 287
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    .line 288
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 297
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 299
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance p2, Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {p2}, Lcom/github/barteksc/pdfviewer/CacheManager;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    .line 304
    new-instance p2, Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 305
    new-instance p2, Lcom/github/barteksc/pdfviewer/DragPinchManager;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p2, p0, v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    .line 307
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    .line 308
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    .line 309
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    new-instance p2, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 312
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100$6c991c1a$9534949(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    .line 38480
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener$33caec06:Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method

.method static synthetic access$1000$266a07eb$54bb7d2a(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)V
    .locals 2

    .line 40321
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-nez v0, :cond_0

    .line 40322
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40332
    :cond_0
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    const/4 p2, 0x0

    .line 40333
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener$3b7c5f18:Landroid/arch/lifecycle/GeneratedAdapter;

    const/4 p2, 0x0

    .line 40340
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 40342
    new-instance v0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {v0, p1, p0, v1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    .line 40343
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$200$7477afdf$9534949(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    .line 39456
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener$3f6eef3f:Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method

.method static synthetic access$300$30e9475e$9534949(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    .line 39464
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener$1750b33e:Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method

.method static synthetic access$400$55008e08$9534949(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    .line 39472
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener$6de79dd8:Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method

.method static synthetic access$500$366afce9(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    .line 40078
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    return-void
.end method

.method static synthetic access$600$2fb37b0b(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    .line 40098
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle$a08f615:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    return-void
.end method

.method static synthetic access$700(Lcom/github/barteksc/pdfviewer/PDFView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return p0
.end method

.method static synthetic access$800(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    return-object p0
.end method

.method private calculateCenterOffsetForPage(I)F
    .locals 3

    .line 810
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 811
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr p1, v0

    neg-float p1, p1

    .line 812
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    return p1

    :cond_0
    int-to-float p1, p1

    .line 815
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr p1, v0

    neg-float p1, p1

    .line 816
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    return p1
.end method

.method private calculateOptimalWidthAndHeight()V
    .locals 5

    .line 826
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 831
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v3, v0, v2

    float-to-double v3, v3

    .line 834
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    .line 837
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 840
    :goto_0
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 841
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 11

    .line 635
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 636
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 645
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 646
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr p2, v2

    .line 9058
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p2, v2

    move v2, p2

    move p2, v3

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr p2, v2

    .line 10058
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p2, v2

    move v2, v3

    .line 649
    :goto_0
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 651
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 652
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 654
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v5, v6

    .line 11058
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v5, v6

    .line 655
    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v6, v7

    .line 12058
    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v6, v7

    .line 656
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v7, v8

    .line 13058
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v7, v8

    .line 657
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v8

    .line 14058
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v8

    .line 662
    new-instance v8, Landroid/graphics/RectF;

    float-to-int v9, v5

    int-to-float v9, v9

    float-to-int v10, v6

    int-to-float v10, v10

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v0, v0

    invoke-direct {v8, v9, v10, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 667
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p2

    .line 668
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v5, v2

    .line 669
    iget v6, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v6

    cmpg-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v5

    .line 670
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gez v0, :cond_3

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    cmpg-float v0, v5, v3

    if-gtz v0, :cond_2

    goto :goto_1

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 677
    sget-boolean v0, Lcom/github/barteksc/pdfviewer/util/Constants;->DEBUG_MODE:Z

    neg-float p2, p2

    neg-float v0, v2

    .line 683
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_3
    :goto_1
    neg-float p2, p2

    neg-float v0, v2

    .line 671
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private getPositionOffset()F
    .locals 4

    .line 410
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 411
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    .line 2444
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v1, v1

    .line 411
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 3058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 411
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_0

    .line 413
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    .line 3444
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v1, v1

    .line 413
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 4058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 413
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    return v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private moveTo$483d6f3f(FF)V
    .locals 5

    .line 858
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 860
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 19058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    .line 860
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 20058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    goto :goto_0

    .line 865
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 21058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    add-float/2addr v0, p1

    .line 865
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 22058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    .line 22444
    :cond_2
    :goto_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v0, v0

    .line 871
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 23058
    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 871
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 872
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 23444
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v0, v0

    .line 872
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 24058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v2, v3

    mul-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    goto :goto_1

    :cond_3
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    move p2, v2

    goto :goto_1

    .line 24444
    :cond_4
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v0, v0

    .line 876
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v1

    .line 25058
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    .line 876
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 25444
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float p2, p2

    .line 877
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr p2, v0

    .line 26058
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p2, v0

    neg-float p2, p2

    .line 877
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 881
    :cond_5
    :goto_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    .line 882
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_4

    .line 883
    :cond_6
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    .line 884
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_4

    .line 886
    :cond_7
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_4

    .line 890
    :cond_8
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 27058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    .line 890
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    .line 891
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 28058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    goto :goto_2

    :cond_9
    cmpl-float v0, p2, v2

    if-lez v0, :cond_a

    move p2, v2

    goto :goto_2

    .line 895
    :cond_a
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 29058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    add-float/2addr v0, p2

    .line 895
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_b

    .line 896
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 30058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 30444
    :cond_b
    :goto_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v0, v0

    .line 901
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 31058
    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 901
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    .line 902
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 31444
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v0, v0

    .line 902
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 32058
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v2, v3

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_3

    :cond_c
    cmpl-float v0, p1, v2

    if-lez v0, :cond_d

    move p1, v2

    goto :goto_3

    .line 32444
    :cond_d
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float v0, v0

    .line 906
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v0, v1

    .line 33058
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 906
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 33444
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    int-to-float p1, p1

    .line 907
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr p1, v0

    .line 34058
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p1, v0

    neg-float p1, p1

    .line 907
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 911
    :cond_e
    :goto_3
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_f

    .line 912
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_4

    .line 913
    :cond_f
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 914
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_4

    .line 916
    :cond_10
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 920
    :goto_4
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 921
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 922
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    .line 34751
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void
.end method

.method private showPage(I)V
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1794
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    if-lt p1, v0, :cond_2

    .line 1795
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    add-int/lit8 p1, p1, -0x1

    .line 382
    :cond_2
    :goto_0
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    .line 383
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    .line 391
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    return-void
.end method


# virtual methods
.method public final enableAnnotationRendering$1385ff()V
    .locals 1

    const/4 v0, 0x0

    .line 1162
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return-void
.end method

.method public final enableAntialiasing(Z)V
    .locals 0

    .line 1178
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return-void
.end method

.method public final enableDoubletap(Z)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enableDoubletap(Z)V

    return-void
.end method

.method public final enableSwipe(Z)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public final fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1210
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Landroid/support/v4/util/Pools;

    invoke-direct {v1, p1}, Landroid/support/v4/util/Pools;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;B)V

    return-object v0
.end method

.method public final getCurrentXOffset()F
    .locals 1

    .line 1046
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    return v0
.end method

.method public final getCurrentYOffset()F
    .locals 1

    .line 1050
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    return v0
.end method

.method final getDocumentPageCount()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method public final getMaxZoom()F
    .locals 1

    .line 1138
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return v0
.end method

.method public final getMidZoom()F
    .locals 1

    .line 1130
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return v0
.end method

.method public final getOptimalPageHeight()F
    .locals 1

    .line 1074
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    return v0
.end method

.method public final getOptimalPageWidth()F
    .locals 1

    .line 1070
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    return v0
.end method

.method public final getPageCount()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method final getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    return-object v0
.end method

.method public final getZoom()F
    .locals 1

    .line 1062
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return v0
.end method

.method public final isSwipeVertical()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method public final isZooming()Z
    .locals 2

    .line 1066
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final loadComplete(Lcom/shockwave/pdfium/PdfDocument;II)V
    .locals 1

    .line 709
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 710
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0, p1}, Lcom/shockwave/pdfium/PdfiumCore;->getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    .line 712
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 714
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    .line 715
    iput p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    .line 716
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    .line 718
    new-instance p2, Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    .line 720
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    .line 721
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 723
    :cond_0
    new-instance p2, Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p3, p0, v0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 725
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->start()V

    .line 732
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    if-eqz p1, :cond_1

    .line 733
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    invoke-interface {p1, p2}, Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;->loadComplete(I)V

    .line 15352
    :cond_1
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 15353
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 16058
    iget p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p1, p3

    mul-float/2addr p2, p1

    .line 15357
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 16846
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    goto :goto_0

    .line 15360
    :cond_2
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 17058
    iget p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p1, p3

    mul-float/2addr p2, p1

    .line 15364
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 17846
    invoke-direct {p0, p2, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    :goto_0
    const/4 p1, 0x0

    .line 15367
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    return-void
.end method

.method final loadError(Ljava/lang/Throwable;)V
    .locals 2

    .line 740
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 741
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 742
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    const-string v0, "PDFView"

    const-string v1, "load pdf error"

    .line 746
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method final loadPageByOffset()V
    .locals 3

    .line 941
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 942
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 943
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    goto :goto_0

    .line 945
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 946
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 949
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 35058
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 949
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-ltz v0, :cond_1

    .line 35444
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 36042
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    if-eq v0, v1, :cond_1

    .line 952
    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    return-void

    .line 954
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    return-void
.end method

.method public final loadPages()V
    .locals 2

    .line 693
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 699
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeANewSet()V

    .line 701
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPages()V

    .line 14751
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final moveRelativeTo(FF)V
    .locals 1

    .line 974
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr p1, p2

    .line 36846
    invoke-direct {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    return-void
.end method

.method public final moveTo(FF)V
    .locals 0

    .line 846
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    return-void
.end method

.method public final onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-ne v0, v1, :cond_0

    .line 763
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 769
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_0

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 18751
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 527
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 546
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 580
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 586
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 591
    :goto_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_3

    return-void

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_4

    return-void

    .line 600
    :cond_4
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 601
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 605
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 606
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_1

    .line 610
    :cond_5
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getPageParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 611
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_2

    :cond_6
    neg-float v0, v0

    neg-float v1, v1

    .line 627
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 532
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 536
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    .line 537
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 538
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz p1, :cond_1

    .line 539
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateCenterOffsetForPage(I)F

    move-result p2

    .line 5846
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    return-void

    .line 541
    :cond_1
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateCenterOffsetForPage(I)F

    move-result p1

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 6846
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    return-void
.end method

.method public final recycle()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 488
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->stop()V

    .line 490
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancel(Z)Z

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->recycle()V

    .line 503
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    invoke-virtual {v0, v2}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_2
    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 508
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    .line 509
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    .line 510
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    .line 511
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 512
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle$a08f615:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 515
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 516
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 517
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method public final resetZoomWithAnimation()V
    .locals 5

    .line 1086
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    .line 38094
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method

.method public final setSwipeVertical$1385ff()V
    .locals 1

    const/4 v0, 0x1

    .line 1158
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return-void
.end method

.method public final toCurrentScale(F)F
    .locals 1

    .line 1058
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .locals 1

    .line 1006
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public final zoomCenteredTo(FLandroid/graphics/PointF;)V
    .locals 4

    .line 993
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    .line 36981
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 995
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    mul-float/2addr p1, v0

    .line 996
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    mul-float/2addr v1, v0

    .line 997
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 998
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v0

    sub-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 37846
    invoke-direct {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo$483d6f3f(FF)V

    return-void
.end method

.method public final zoomWithAnimation(FFF)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method
