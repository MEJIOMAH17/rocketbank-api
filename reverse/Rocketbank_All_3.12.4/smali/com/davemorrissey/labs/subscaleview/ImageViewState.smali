.class public Lcom/davemorrissey/labs/subscaleview/ImageViewState;
.super Ljava/lang/Object;
.source "ImageViewState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private orientation:I

.field private scale:F


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->scale:F

    .line 22
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerX:F

    .line 23
    iget p1, p2, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerY:F

    .line 24
    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->orientation:I

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerX:F

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->orientation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->scale:F

    return v0
.end method
