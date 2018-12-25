.class Lio/card/payment/Torch;
.super Ljava/lang/Object;
.source "Torch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Torch"


# instance fields
.field private mHeight:F

.field private mOn:Z

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/card/payment/Torch;->mOn:Z

    .line 29
    iput p1, p0, Lio/card/payment/Torch;->mWidth:F

    .line 30
    iput p2, p0, Lio/card/payment/Torch;->mHeight:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    iget v0, p0, Lio/card/payment/Torch;->mWidth:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lio/card/payment/Torch;->mHeight:F

    neg-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    .line 40
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    .line 42
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 43
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 47
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v5, -0x1

    .line 48
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-boolean v6, p0, Lio/card/payment/Torch;->mOn:Z

    if-eqz v6, :cond_0

    const/16 v6, 0xc0

    .line 50
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/16 v6, 0x60

    .line 52
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    const/16 v6, 0x8

    .line 56
    new-array v6, v6, [F

    const/high16 v7, 0x40a00000    # 5.0f

    .line 57
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 58
    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 59
    iget v6, p0, Lio/card/payment/Torch;->mWidth:F

    iget v8, p0, Lio/card/payment/Torch;->mHeight:F

    invoke-virtual {v7, v6, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 62
    invoke-virtual {v7, p1, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {v7, p1, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 67
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-boolean v3, p0, Lio/card/payment/Torch;->mOn:Z

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    :goto_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 1097
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x41300000    # 11.0f

    .line 1098
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v6, 0x40c00000    # 6.0f

    .line 1099
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1100
    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x41500000    # 13.0f

    const/high16 v6, 0x41000000    # 8.0f

    .line 1101
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x40e00000    # 7.0f

    .line 1102
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1103
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1104
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 1105
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, -0x3f300000    # -6.5f

    const/high16 v5, -0x3ee00000    # -10.0f

    .line 1106
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const v4, 0x3d4ccccd    # 0.05f

    .line 1107
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1108
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 77
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const v4, 0x3f4ccccd    # 0.8f

    .line 78
    iget v5, p0, Lio/card/payment/Torch;->mHeight:F

    mul-float/2addr v4, v5

    .line 79
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 80
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 81
    iget v3, p0, Lio/card/payment/Torch;->mWidth:F

    div-float/2addr v3, v1

    iget v4, p0, Lio/card/payment/Torch;->mHeight:F

    div-float/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final setOn(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lio/card/payment/Torch;->mOn:Z

    return-void
.end method
