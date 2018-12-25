.class final Lcom/github/barteksc/pdfviewer/PagesLoader;
.super Ljava/lang/Object;
.source "PagesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    }
.end annotation


# instance fields
.field private cacheOrder:I

.field private colWidth:F

.field private colsRows:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageRelativePartHeight:F

.field private pageRelativePartWidth:F

.field private partRenderHeight:F

.field private partRenderWidth:F

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private rowHeight:F

.field private scaledHeight:F

.field private scaledWidth:F

.field private thumbnailHeight:I

.field private final thumbnailRect:Landroid/graphics/RectF;

.field private thumbnailWidth:I

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    .line 41
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-void
.end method

.method private getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    .locals 6

    .line 72
    new-instance v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;-><init>(Lcom/github/barteksc/pdfviewer/PagesLoader;B)V

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    move p1, v1

    :cond_0
    neg-float p1, p1

    .line 75
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    if-eqz v1, :cond_1

    .line 76
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    div-float v1, p1, v1

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    add-int/lit16 v1, v1, -0x4000

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    .line 77
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr p1, v1

    float-to-double v4, p1

    add-double/2addr v4, v2

    double-to-int p1, v4

    add-int/lit16 p1, p1, -0x4000

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    .line 78
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr p1, v1

    float-to-double v4, p1

    add-double/2addr v4, v2

    double-to-int p1, v4

    add-int/lit16 p1, p1, -0x4000

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    goto :goto_0

    .line 80
    :cond_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    div-float v1, p1, v1

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    add-int/lit16 v1, v1, -0x4000

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    .line 81
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr p1, v1

    float-to-double v4, p1

    add-double/2addr v4, v2

    double-to-int p1, v4

    add-int/lit16 p1, p1, -0x4000

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    .line 82
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr p1, v1

    float-to-double v4, p1

    add-double/2addr v4, v2

    double-to-int p1, v4

    add-int/lit16 p1, p1, -0x4000

    iput p1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    :goto_0
    return-object v0
.end method

.method private loadCell(IIIIFF)Z
    .locals 15

    move-object v0, p0

    move/from16 v2, p4

    int-to-float v2, v2

    mul-float v2, v2, p5

    move/from16 v4, p3

    int-to-float v4, v4

    mul-float v4, v4, p6

    .line 207
    iget v5, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 208
    iget v6, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    add-float v7, v2, p5

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    sub-float v1, v8, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p5

    :goto_0
    add-float v7, v4, p6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    sub-float v3, v8, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p6

    :goto_1
    mul-float v10, v5, v1

    mul-float v11, v6, v3

    .line 217
    new-instance v12, Landroid/graphics/RectF;

    add-float/2addr v1, v2

    add-float/2addr v3, v4

    invoke-direct {v12, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    cmpl-float v2, v10, v1

    if-lez v2, :cond_3

    cmpl-float v1, v11, v1

    if-lez v1, :cond_3

    .line 220
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v1, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v1, v3, v4, v12, v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->upPartIfContained$1e4e1661(IILandroid/graphics/RectF;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v13, 0x0

    iget v14, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    move v8, v3

    move v9, v4

    invoke-virtual/range {v7 .. v14}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask$401b142b$3bdfdd21(IIFFLandroid/graphics/RectF;ZI)V

    .line 226
    :cond_2
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    return v2

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private loadRelative(IIZ)I
    .locals 10

    .line 103
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    .line 105
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result p1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    int-to-float p3, p3

    sub-float/2addr p1, p3

    sub-float/2addr p1, v0

    goto :goto_2

    .line 107
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    .line 108
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result p1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p3

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    int-to-float p3, p3

    sub-float/2addr p1, p3

    sub-float/2addr p1, v0

    .line 111
    :goto_2
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object p1

    .line 112
    iget p3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ltz p3, :cond_3

    .line 8064
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v0

    if-lt p3, v0, :cond_4

    :cond_3
    const/4 p3, -0x1

    :cond_4
    if-gez p3, :cond_5

    return v1

    .line 116
    :cond_5
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, v0, p3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    .line 118
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const-wide v2, 0x40d0003fffffffffL    # 16384.999999999996

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    if-eqz v0, :cond_a

    .line 119
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v6

    float-to-double v6, v0

    add-double/2addr v6, v4

    double-to-int v0, v6

    add-int/lit16 v0, v0, -0x4000

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    move v0, v1

    .line 121
    :cond_6
    iget v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v2, v4

    add-int/lit16 v2, v2, -0x4000

    add-int/lit8 v2, v2, 0x1

    .line 122
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_7

    move v9, v3

    goto :goto_3

    :cond_7
    move v9, v2

    :goto_3
    if-gt v0, v9, :cond_f

    .line 124
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v2, p0

    move v4, p3

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    if-lt v1, p2, :cond_9

    return v1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 132
    :cond_a
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v0, v6

    float-to-double v6, v0

    add-double/2addr v6, v4

    double-to-int v0, v6

    add-int/lit16 v0, v0, -0x4000

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_b

    move v0, v1

    .line 134
    :cond_b
    iget v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v2, v4

    add-int/lit16 v2, v2, -0x4000

    add-int/lit8 v2, v2, 0x1

    .line 135
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_c

    move v9, v3

    goto :goto_4

    :cond_c
    move v9, v2

    :goto_4
    if-gt v0, v9, :cond_f

    .line 137
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v6, p1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v2, p0

    move v4, p3

    move v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    if-lt v1, p2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    return v1
.end method

.method private loadThumbnail(II)V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, v1}, Lcom/github/barteksc/pdfviewer/CacheManager;->containsThumbnail$59dc7696(IILandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask$401b142b$3bdfdd21(IIFFLandroid/graphics/RectF;ZI)V

    :cond_0
    return-void
.end method

.method private loadVisible()I
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v1

    .line 156
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v4, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v3, v4, :cond_0

    .line 157
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 160
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    :goto_0
    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v4, v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 163
    :cond_1
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    :goto_1
    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v1, :cond_5

    .line 166
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v4, v5, :cond_5

    .line 167
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v3, v5, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v0

    .line 171
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(F)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v1

    .line 173
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v4, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v3, v4, :cond_3

    .line 174
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 177
    iget v4, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    :goto_3
    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v4, v5, :cond_4

    .line 178
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3

    .line 180
    :cond_4
    iget v1, v1, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    :goto_4
    move v3, v2

    move v4, v3

    :goto_5
    if-ge v3, v1, :cond_5

    .line 183
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v4, v5, :cond_5

    .line 184
    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v3, v5, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 187
    :cond_5
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ltz v1, :cond_6

    .line 16064
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v3

    if-lt v1, v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    if-ltz v1, :cond_8

    .line 189
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    .line 191
    :cond_8
    iget v1, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_9

    .line 19064
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    if-ltz v1, :cond_b

    .line 193
    iget v0, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    :cond_b
    return v4
.end method


# virtual methods
.method public final loadPages()V
    .locals 7

    .line 233
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    .line 234
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    .line 235
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    .line 236
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v0

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    .line 23045
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 23046
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v2

    div-float v2, v1, v2

    .line 23047
    sget v3, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    div-float/2addr v3, v2

    .line 23048
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    div-float/2addr v2, v0

    div-float v0, v1, v3

    float-to-double v3, v0

    const-wide v5, 0x40d0003fffffffffL    # 16384.999999999996

    add-double/2addr v3, v5

    double-to-int v0, v3

    add-int/lit16 v0, v0, -0x4000

    div-float v2, v1, v2

    float-to-double v2, v2

    add-double/2addr v2, v5

    double-to-int v2, v2

    add-int/lit16 v2, v2, -0x4000

    .line 23051
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    iput-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    .line 238
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    .line 239
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    .line 240
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    .line 241
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    .line 242
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    .line 243
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    .line 244
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    .line 245
    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    const/4 v0, 0x1

    .line 246
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    .line 247
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadVisible()I

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    move-result-object v2

    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 249
    :goto_0
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_COUNT:I

    if-ge v3, v2, :cond_2

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_2

    .line 250
    invoke-direct {p0, v3, v1, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v0, v3

    .line 253
    :goto_1
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_COUNT:I

    neg-int v2, v2

    if-le v0, v2, :cond_4

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_4

    .line 254
    invoke-direct {p0, v0, v1, v3}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method
