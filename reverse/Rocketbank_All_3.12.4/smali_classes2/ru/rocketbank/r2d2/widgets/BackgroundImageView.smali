.class public final Lru/rocketbank/r2d2/widgets/BackgroundImageView;
.super Landroid/widget/ImageView;
.source "BackgroundImageView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/widgets/BackgroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/widgets/BackgroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p2, p1}, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p2, p1}, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 1

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    sget-object v0, Lru/rocketbank/r2d2/R$styleable;->BackgroundImageView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->paint:Landroid/graphics/Paint;

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    invoke-static {v0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/BackgroundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method
