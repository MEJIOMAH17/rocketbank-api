.class public final Lru/rocketbank/core/widgets/RoundCornersDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundCornersDrawable.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mCornerRadius:F

.field private final mMargin:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mRect:Landroid/graphics/RectF;

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    iput p2, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mCornerRadius:F

    .line 27
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    .line 30
    iget-object p1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mMargin:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mCornerRadius:F

    iget v2, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mCornerRadius:F

    iget-object v3, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 42
    iget-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v0, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 55
    iget-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    iget-object v1, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/widgets/RoundCornersDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
