.class public final Lcom/github/barteksc/pdfviewer/model/PagePart;
.super Ljava/lang/Object;
.source "PagePart.java"


# instance fields
.field private cacheOrder:I

.field private page:I

.field private pageRelativeBounds:Landroid/graphics/RectF;

.field private renderedBitmap:Landroid/graphics/Bitmap;

.field private thumbnail:Z

.field private userPage:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    .line 40
    iput p2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    .line 41
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 43
    iput-boolean p5, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->thumbnail:Z

    .line 44
    iput p6, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 85
    instance-of v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    check-cast p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 1052
    iget v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    .line 90
    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    if-ne v0, v2, :cond_1

    .line 1056
    iget v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    .line 91
    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    if-ne v0, v2, :cond_1

    .line 2064
    iget-object v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 94
    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 3064
    iget-object v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 95
    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 4064
    iget-object v0, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 96
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 5064
    iget-object p1, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    .line 97
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getCacheOrder()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return v0
.end method

.method public final getPageRelativeBounds()Landroid/graphics/RectF;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getRenderedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getUserPage()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    return v0
.end method

.method public final isThumbnail()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->thumbnail:Z

    return v0
.end method

.method public final setCacheOrder(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return-void
.end method
