.class public final Ljp/wasabeef/glide/transformations/CropTransformation;
.super Ljava/lang/Object;
.source "CropTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/glide/transformations/CropTransformation$CropType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CropTransformation(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 73
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    :goto_0
    iput p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    .line 74
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1

    :cond_1
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    :goto_1
    iput p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    goto :goto_2

    :cond_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 78
    :goto_2
    iget p3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    const/4 v1, 0x0

    invoke-interface {v1, p3, v0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_3

    .line 80
    iget p3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    invoke-static {p3, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 83
    :cond_3
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 84
    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 85
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    .line 89
    iget v2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1105
    sget-object v4, Ljp/wasabeef/glide/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType:[I

    invoke-virtual {v1}, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 1111
    :pswitch_0
    iget v3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    int-to-float v3, v3

    sub-float v5, v3, p2

    goto :goto_3

    .line 1109
    :pswitch_1
    iget v4, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->mHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, p2

    div-float v5, v4, v3

    .line 91
    :goto_3
    :pswitch_2
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v0, v2

    add-float/2addr p2, v5

    invoke-direct {v3, v2, v5, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {p2, p1, v1, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-nez p3, :cond_4

    return-object v1

    .line 2027
    :cond_4
    new-instance p1, Landroid/support/coreui/R$style;

    invoke-direct {p1, p3, v1}, Landroid/support/coreui/R$style;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
