.class public final Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;
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
.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

.field private mDiameter:I

.field private mMargin:I

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 49
    sget-object v0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->ALL:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, p3, v0}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILjp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 64
    iput p2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    .line 65
    iget p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    .line 66
    iput p3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    .line 67
    iput-object p4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedTransformation(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    .line 253
    invoke-virtual {v1}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
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

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 77
    iget-object v0, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, p2, p3, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p1, p2

    int-to-float p2, p3

    .line 1091
    iget p3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float p3, p3

    sub-float/2addr p1, p3

    .line 1092
    iget p3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    .line 1094
    sget-object p3, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$1;->$SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType:[I

    iget-object v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mCornerType:Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;

    invoke-virtual {v3}, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v3

    aget p3, p3, v3

    packed-switch p3, :pswitch_data_0

    .line 1141
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float p1, p1

    iget p2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float p2, p2

    invoke-virtual {v1, p3, p1, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1243
    :pswitch_0
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1245
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1247
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    invoke-direct {p3, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1248
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1233
    :pswitch_1
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v7, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p3, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1235
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1237
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1238
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1224
    :pswitch_2
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1226
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1228
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1215
    :pswitch_3
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1217
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1219
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p1, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1207
    :pswitch_4
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1209
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1211
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1199
    :pswitch_5
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1201
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1203
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p1, v5

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1193
    :pswitch_6
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1195
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p1, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1187
    :pswitch_7
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1189
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1181
    :pswitch_8
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1183
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1175
    :pswitch_9
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1177
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1168
    :pswitch_a
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1170
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1171
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1161
    :pswitch_b
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1163
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    invoke-direct {p3, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1164
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1154
    :pswitch_c
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1156
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1157
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1147
    :pswitch_d
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v7, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p3, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1149
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v6, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p3, v3, v4, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1150
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1096
    :pswitch_e
    new-instance p3, Landroid/graphics/RectF;

    iget v3, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {p3, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float p1, p1

    iget p2, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mRadius:I

    int-to-float p2, p2

    invoke-virtual {v1, p3, p1, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    :goto_0
    iget-object p1, p0, Ljp/wasabeef/glide/transformations/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2027
    :cond_1
    new-instance p2, Landroid/support/coreui/R$style;

    invoke-direct {p2, v0, p1}, Landroid/support/coreui/R$style;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
