.class public final Lru/rocketbank/r2d2/widgets/SwitchCard;
.super Landroid/view/View;
.source "SwitchCard.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public backgroundPaint:Landroid/graphics/Paint;

.field private final checkObserver:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dx:F

.field private h:I

.field private isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isChecked:Z

.field public left:Landroid/graphics/Rect;

.field private leftText:Ljava/lang/String;

.field private mainRect:Landroid/graphics/RectF;

.field private radius:F

.field public right:Landroid/graphics/Rect;

.field private rightText:Ljava/lang/String;

.field private textColor:I

.field public textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private thumPadding:I

.field private thumbColor:I

.field public thumbPaint:Landroid/graphics/Paint;

.field private thumbRect:Landroid/graphics/RectF;

.field private trackColor:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->checkObserver:Lrx/subjects/PublishSubject;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 39
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    .line 40
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/SwitchCard;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->checkObserver:Lrx/subjects/PublishSubject;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 39
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    .line 40
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    .line 63
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/SwitchCard;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->checkObserver:Lrx/subjects/PublishSubject;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 39
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    .line 40
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/SwitchCard;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final drawRectText(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 152
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 154
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    const-string v2, "textPaint"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 155
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    const-string v2, "textPaint"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    const-string v3, "textPaint"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v5, v2, 0x2

    add-int v6, v5, v0

    .line 157
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p3

    int-to-float v0, v1

    sub-float v8, p3, v0

    iget-object v9, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_3

    const-string p3, "textPaint"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundPaint()Landroid/graphics/Paint;
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const-string v1, "backgroundPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCheckObserver()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->checkObserver:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final getDx$App_prodRelease()F
    .locals 1

    .line 52
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->dx:F

    return v0
.end method

.method public final getH$App_prodRelease()I
    .locals 1

    .line 38
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->h:I

    return v0
.end method

.method public final getLeft()Landroid/graphics/Rect;
    .locals 2

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->left:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v1, "left"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getLeftText$App_prodRelease()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    return-object v0
.end method

.method public final getMainRect()Landroid/graphics/RectF;
    .locals 1

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getRadius$App_prodRelease()F
    .locals 1

    .line 39
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    return v0
.end method

.method public final getRight()Landroid/graphics/Rect;
    .locals 2

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->right:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v1, "right"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRightText$App_prodRelease()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor$App_prodRelease()I
    .locals 1

    .line 48
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textColor:I

    return v0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 2

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const-string v1, "textPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTextSize$App_prodRelease()F
    .locals 1

    .line 40
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    return v0
.end method

.method public final getThumbColor$App_prodRelease()I
    .locals 1

    .line 50
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbColor:I

    return v0
.end method

.method public final getThumbPaint()Landroid/graphics/Paint;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const-string v1, "thumbPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getThumbRect()Landroid/graphics/RectF;
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getTrackColor$App_prodRelease()I
    .locals 1

    .line 49
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->trackColor:I

    return v0
.end method

.method public final getW$App_prodRelease()I
    .locals 1

    .line 37
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->w:I

    return v0
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/R$styleable;->SwitchCard:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x2

    .line 74
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    const/4 v1, 0x3

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    const/16 v1, 0x14

    .line 77
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    const/4 v1, 0x4

    const v2, -0xbbbbbc

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textColor:I

    const/4 v1, 0x5

    const v2, -0x333334

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbColor:I

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->trackColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 85
    :cond_0
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->backgroundPaint:Landroid/graphics/Paint;

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbPaint:Landroid/graphics/Paint;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->backgroundPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    const-string v1, "backgroundPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->trackColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_2

    const-string v1, "textPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_3

    const-string v1, "textPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_4

    const-string v1, "textPaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_5

    const-string v0, "textPaint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_6

    const-string v0, "thumbPaint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final isAnimating$App_prodRelease()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked:Z

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    const-string v4, "backgroundPaint"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    const-string v4, "thumbPaint"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->left:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    const-string v2, "left"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0, p1, v1}, Lru/rocketbank/r2d2/widgets/SwitchCard;->drawRectText(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->right:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    const-string v2, "right"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v0, p1, v1}, Lru/rocketbank/r2d2/widgets/SwitchCard;->drawRectText(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 3

    .line 108
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->w:I

    .line 109
    iput p2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->h:I

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x64

    iput p3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    .line 112
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    div-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    invoke-direct {p3, p4, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->left:Landroid/graphics/Rect;

    .line 113
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->right:Landroid/graphics/Rect;

    .line 114
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->dx:F

    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    int-to-float v1, v1

    add-float/2addr p4, v1

    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->dx:F

    add-float/2addr v0, v2

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-direct {p3, p4, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    .line 115
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 121
    iget-boolean p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p1, :cond_0

    const-string p1, "dx"

    .line 122
    new-array v4, v4, [F

    aput v2, v4, v3

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->w:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    aput v2, v4, v0

    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v1, "ObjectAnimator.ofFloat(this, \"dx\", 0f, w / 2f)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "dx"

    .line 124
    new-array v4, v4, [F

    iget v5, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->w:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    aput v5, v4, v3

    aput v2, v4, v0

    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v1, "ObjectAnimator.ofFloat(this, \"dx\", w / 2f, 0f)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v1, 0xfa

    .line 125
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "animation.setDuration(250)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    new-instance v1, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;-><init>(Lru/rocketbank/r2d2/widgets/SwitchCard;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return v0

    :cond_1
    return v0
.end method

.method public final setAnimating$App_prodRelease(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    .line 34
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked:Z

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->checkObserver:Lrx/subjects/PublishSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDx(F)V
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 102
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->dx:F

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    int-to-float v2, v2

    iget v3, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->w:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    int-to-float p1, p1

    sub-float/2addr v3, p1

    iget p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->h:I

    iget v4, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumPadding:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    .line 104
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->postInvalidate()V

    return-void
.end method

.method public final setDx$App_prodRelease(F)V
    .locals 0

    .line 52
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->dx:F

    return-void
.end method

.method public final setH$App_prodRelease(I)V
    .locals 0

    .line 38
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->h:I

    return-void
.end method

.method public final setLeft(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->left:Landroid/graphics/Rect;

    return-void
.end method

.method public final setLeftText$App_prodRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->leftText:Ljava/lang/String;

    return-void
.end method

.method public final setMainRect(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->mainRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setRadius$App_prodRelease(F)V
    .locals 0

    .line 39
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->radius:F

    return-void
.end method

.method public final setRight(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->right:Landroid/graphics/Rect;

    return-void
.end method

.method public final setRightText$App_prodRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->rightText:Ljava/lang/String;

    return-void
.end method

.method public final setTextColor$App_prodRelease(I)V
    .locals 0

    .line 48
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textColor:I

    return-void
.end method

.method public final setTextPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setTextSize$App_prodRelease(F)V
    .locals 0

    .line 40
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->textSize:F

    return-void
.end method

.method public final setThumbColor$App_prodRelease(I)V
    .locals 0

    .line 50
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbColor:I

    return-void
.end method

.method public final setThumbPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setThumbRect(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->thumbRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setTrackColor$App_prodRelease(I)V
    .locals 0

    .line 49
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->trackColor:I

    return-void
.end method

.method public final setW$App_prodRelease(I)V
    .locals 0

    .line 37
    iput p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard;->w:I

    return-void
.end method
