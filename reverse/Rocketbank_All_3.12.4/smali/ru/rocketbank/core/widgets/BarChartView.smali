.class public Lru/rocketbank/core/widgets/BarChartView;
.super Landroid/view/View;
.source "BarChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;,
        Lru/rocketbank/core/widgets/BarChartView$Adapter;
    }
.end annotation


# instance fields
.field private activePointerId:I

.field private adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

.field adaptetObservable:Landroid/database/DataSetObserver;

.field private barContentBottom:F

.field private barContentHeight:F

.field private barContentLeft:F

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private contentTop:F

.field private contentWidth:F

.field private drawableAtScreenCount:I

.field private editorAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

.field firstLabelTextStartOffset:F

.field private hintColor:I

.field private hintPadding:F

.field private hintPaint:Landroid/graphics/Paint;

.field private hintSize:I

.field private hintTypeface:Landroid/graphics/Typeface;

.field private hintWidth:F

.field private isBeingDragged:Z

.field private labelBottom:F

.field private labelSpaceBetween:I

.field private labelSpaceTop:I

.field private labelTextColor:I

.field private labelTextSize:I

.field private labelTypeface:Landroid/graphics/Typeface;

.field private labelWidth:I

.field private labelWidthCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastMotionX:I

.field private lastMotionY:I

.field private lineColor:I

.field private lineCoords:[F

.field private lineHeight:F

.field private linePaint:Landroid/graphics/Paint;

.field private linesCount:I

.field private mLabelTextPaint:Landroid/graphics/Paint;

.field private maximumVelocity:I

.field private minimumVelocity:I

.field private overflingDistance:I

.field private overscrollDistance:I

.field private rectFArray:[Landroid/graphics/RectF;

.field private roundX:F

.field private roundY:F

.field private scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private visibleContentWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    .line 86
    iput v0, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 373
    new-instance v0, Lru/rocketbank/core/widgets/BarChartView$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/BarChartView$1;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adaptetObservable:Landroid/database/DataSetObserver;

    .line 846
    new-instance v0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->editorAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/widgets/BarChartView;->init$51fe1fdb(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    .line 86
    iput v0, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 373
    new-instance v0, Lru/rocketbank/core/widgets/BarChartView$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/BarChartView$1;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adaptetObservable:Landroid/database/DataSetObserver;

    .line 846
    new-instance v0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->editorAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    .line 162
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/BarChartView;->init$51fe1fdb(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 86
    iput p3, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    const/4 p3, 0x0

    .line 88
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    const/4 p3, -0x1

    .line 92
    iput p3, p0, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 373
    new-instance p3, Lru/rocketbank/core/widgets/BarChartView$1;

    invoke-direct {p3, p0}, Lru/rocketbank/core/widgets/BarChartView$1;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object p3, p0, Lru/rocketbank/core/widgets/BarChartView;->adaptetObservable:Landroid/database/DataSetObserver;

    .line 846
    new-instance p3, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;

    invoke-direct {p3, p0}, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object p3, p0, Lru/rocketbank/core/widgets/BarChartView;->editorAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    .line 167
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/BarChartView;->init$51fe1fdb(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x6

    .line 86
    iput p3, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    const/4 p3, 0x0

    .line 88
    iput-boolean p3, p0, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    const/4 p3, -0x1

    .line 92
    iput p3, p0, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 373
    new-instance p3, Lru/rocketbank/core/widgets/BarChartView$1;

    invoke-direct {p3, p0}, Lru/rocketbank/core/widgets/BarChartView$1;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object p3, p0, Lru/rocketbank/core/widgets/BarChartView;->adaptetObservable:Landroid/database/DataSetObserver;

    .line 846
    new-instance p3, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;

    invoke-direct {p3, p0}, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;-><init>(Lru/rocketbank/core/widgets/BarChartView;)V

    iput-object p3, p0, Lru/rocketbank/core/widgets/BarChartView;->editorAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    .line 173
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/BarChartView;->init$51fe1fdb(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private allocateRectF()V
    .locals 3

    .line 329
    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->rectFArray:[Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/BarChartView;->rectFArray:[Landroid/graphics/RectF;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, Lru/rocketbank/core/widgets/BarChartView;->rectFArray:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getScrollRange()I
    .locals 4

    .line 544
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4109
    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->contentWidth:F

    .line 545
    iget v2, p0, Lru/rocketbank/core/widgets/BarChartView;->visibleContentWidth:F

    sub-float/2addr v0, v2

    .line 548
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    const-string v0, "DiagramView"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scroll range = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",  ContentWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5109
    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->contentWidth:F

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", visibleContentWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->visibleContentWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", getScroll "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, v1

    return v0
.end method

.method private init$51fe1fdb(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 184
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    .line 186
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/BarChartView;->touchSlop:I

    .line 188
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/BarChartView;->minimumVelocity:I

    .line 189
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/BarChartView;->maximumVelocity:I

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lru/rocketbank/core/widgets/BarChartView;->overscrollDistance:I

    .line 191
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/BarChartView;->overflingDistance:I

    .line 193
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelWidthCache:Landroid/support/v4/util/LongSparseArray;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/R$styleable;->BarChartView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    :try_start_0
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_space_between_label:I

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelSpaceBetween:I

    .line 198
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_label_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTextSize:I

    .line 199
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_space_label_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelSpaceTop:I

    .line 201
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_hint_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->hintSize:I

    .line 202
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_hint_color:I

    const v2, -0xcccccd

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->hintColor:I

    .line 204
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_line_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->lineColor:I

    .line 205
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_label_text_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTextColor:I

    .line 206
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_label_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    .line 207
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_bar_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->barWidth:I

    .line 208
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_hint_padding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPadding:F

    .line 210
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_bar_round_x:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->roundX:F

    .line 211
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_bar_round_y:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->roundY:F

    .line 213
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_hint_count:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    .line 215
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 216
    sget p2, Lru/rocketbank/core/R$styleable;->BarChartView_label_font:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 217
    sget v1, Lru/rocketbank/core/R$styleable;->BarChartView_hint_font:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 219
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v1

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTypeface:Landroid/graphics/Typeface;

    .line 220
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p2

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/BarChartView;->hintTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barPaint:Landroid/graphics/Paint;

    .line 228
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    .line 231
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    .line 236
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->hintColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->hintSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->hintTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->hintTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 246
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 247
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->editorAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 250
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->lineHeight:F

    return-void

    :catchall_0
    move-exception p2

    .line 224
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public computeScroll()V
    .locals 12

    .line 558
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v0

    .line 560
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result v11

    .line 561
    iget-object v1, p0, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 562
    iget-object v2, p0, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    if-ne v0, v1, :cond_0

    if-eq v11, v2, :cond_1

    .line 565
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollRange()I

    move-result v6

    .line 566
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getOverScrollMode()I

    sub-int v3, v1, v0

    sub-int v4, v2, v11

    const/4 v7, 0x0

    .line 569
    iget v8, p0, Lru/rocketbank/core/widgets/BarChartView;->overflingDistance:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v10}, Lru/rocketbank/core/widgets/BarChartView;->overScrollBy(IIIIIIIIZ)Z

    .line 570
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v11}, Lru/rocketbank/core/widgets/BarChartView;->onScrollChanged(IIII)V

    .line 583
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 585
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 395
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v4, v1

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 397
    iget v1, v0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->labelSpaceBetween:I

    add-int/2addr v1, v2

    int-to-float v8, v1

    .line 401
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v9, v1

    int-to-float v1, v9

    mul-float v10, v1, v8

    .line 404
    iget v1, v0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    .line 406
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v2}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v9

    if-gez v2, :cond_1

    :cond_0
    move v2, v11

    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    .line 418
    :cond_2
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-eqz v2, :cond_4

    move v2, v11

    .line 419
    :goto_0
    iget v3, v0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    if-ge v2, v3, :cond_3

    shl-int/lit8 v3, v2, 0x2

    .line 422
    iget-object v4, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    iget v5, v0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getHit(I)Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    iget v6, v0, Lru/rocketbank/core/widgets/BarChartView;->hintSize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v3, v6

    iget-object v6, v0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    .line 423
    invoke-virtual {v7, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v12, v1

    goto :goto_1

    :cond_4
    move v12, v11

    .line 435
    :goto_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->hintWidth:F

    add-float/2addr v1, v2

    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->hintPadding:F

    add-float v13, v1, v2

    .line 441
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v13, v1

    .line 442
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingTop()I

    move-result v1

    int-to-float v3, v1

    .line 443
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    .line 444
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v1, v7

    .line 441
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 451
    iget-object v1, v0, Lru/rocketbank/core/widgets/BarChartView;->linePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5

    move v14, v11

    .line 452
    :goto_2
    iget v1, v0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    if-ge v14, v1, :cond_5

    shl-int/lit8 v1, v14, 0x2

    .line 455
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    aget v2, v2, v1

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 456
    iget-object v3, v0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 458
    iget-object v3, v0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v5, v1, 0x1

    aget v3, v3, v5

    iget-object v5, v0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v1, v1, 0x3

    aget v1, v5, v1

    iget v5, v0, Lru/rocketbank/core/widgets/BarChartView;->lineHeight:F

    add-float/2addr v5, v1

    iget-object v6, v0, Lru/rocketbank/core/widgets/BarChartView;->linePaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    add-float/2addr v10, v13

    .line 469
    iget v1, v0, Lru/rocketbank/core/widgets/BarChartView;->firstLabelTextStartOffset:F

    add-float/2addr v10, v1

    .line 470
    iget-object v1, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-nez v1, :cond_6

    return-void

    :cond_6
    :goto_3
    if-ge v11, v12, :cond_9

    if-gez v9, :cond_7

    .line 479
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startContentIndex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    add-int v1, v9, v11

    .line 484
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getColor(I)I

    move-result v2

    .line 485
    iget-object v3, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v3, v1}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getProportialSize(I)F

    move-result v3

    .line 487
    iget v4, v0, Lru/rocketbank/core/widgets/BarChartView;->barContentHeight:F

    mul-float/2addr v4, v3

    .line 488
    iget v3, v0, Lru/rocketbank/core/widgets/BarChartView;->barContentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 490
    iget-object v4, v0, Lru/rocketbank/core/widgets/BarChartView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    iget v4, v0, Lru/rocketbank/core/widgets/BarChartView;->barWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v10

    .line 3522
    iget-object v4, v0, Lru/rocketbank/core/widgets/BarChartView;->rectFArray:[Landroid/graphics/RectF;

    array-length v4, v4

    if-gt v4, v11, :cond_8

    .line 3523
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No such index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lru/rocketbank/core/widgets/BarChartView;->rectFArray:[Landroid/graphics/RectF;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3526
    :cond_8
    iget-object v4, v0, Lru/rocketbank/core/widgets/BarChartView;->rectFArray:[Landroid/graphics/RectF;

    aget-object v4, v4, v11

    .line 495
    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 496
    iput v3, v4, Landroid/graphics/RectF;->top:F

    .line 497
    iget v3, v0, Lru/rocketbank/core/widgets/BarChartView;->barWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 498
    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->barContentBottom:F

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 500
    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->roundX:F

    iget v3, v0, Lru/rocketbank/core/widgets/BarChartView;->roundY:F

    iget-object v5, v0, Lru/rocketbank/core/widgets/BarChartView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 502
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getLabelName(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    iget-object v2, v0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 505
    iget v3, v0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v3, v10

    .line 507
    iget v2, v0, Lru/rocketbank/core/widgets/BarChartView;->labelBottom:F

    iget v4, v0, Lru/rocketbank/core/widgets/BarChartView;->labelTextSize:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v10, v8

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "DiagramView"

    const-string v1, "onGenericMotionEvent"

    .line 764
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 768
    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    .line 769
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 772
    invoke-direct {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollRange()I

    move-result v1

    .line 773
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result v2

    sub-int v0, v2, v0

    if-gez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eq v1, v2, :cond_3

    .line 783
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    .line 791
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    const-string p3, "DiagramView"

    const-string p4, "onOverScrolled"

    .line 796
    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object p3, p0, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_0

    .line 800
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result p3

    .line 801
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result p4

    .line 804
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView;->setScrollX(I)V

    .line 805
    invoke-virtual {p0, p2}, Lru/rocketbank/core/widgets/BarChartView;->setScrollY(I)V

    .line 808
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/BarChartView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 813
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 816
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->awakenScrollBars()Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 390
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView;->refreshContent(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 5530
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 5531
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 594
    :cond_0
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v11, 0x1

    if-eq v1, v2, :cond_b

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x10

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 720
    :pswitch_0
    iget-boolean v0, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-eqz v0, :cond_d

    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-eqz v0, :cond_d

    .line 721
    iget-object v12, v10, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollRange()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 723
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->postInvalidateOnAnimation()V

    .line 727
    :cond_1
    iput v4, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 728
    iput-boolean v3, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    .line 7536
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 7537
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7538
    iput-object v2, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 627
    :pswitch_1
    iget v1, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v0, "DiagramView"

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pointerId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 633
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 634
    iget v1, v10, Lru/rocketbank/core/widgets/BarChartView;->lastMotionX:I

    sub-int/2addr v1, v0

    .line 635
    iget-boolean v2, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Lru/rocketbank/core/widgets/BarChartView;->touchSlop:I

    if-le v2, v3, :cond_5

    .line 636
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 638
    invoke-interface {v2, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 641
    :cond_3
    iput-boolean v11, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-lez v1, :cond_4

    .line 643
    iget v2, v10, Lru/rocketbank/core/widgets/BarChartView;->touchSlop:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 645
    :cond_4
    iget v2, v10, Lru/rocketbank/core/widgets/BarChartView;->touchSlop:I

    add-int/2addr v1, v2

    .line 649
    :cond_5
    :goto_0
    iget-boolean v2, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-eqz v2, :cond_d

    .line 651
    iput v0, v10, Lru/rocketbank/core/widgets/BarChartView;->lastMotionX:I

    .line 653
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    .line 654
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    .line 655
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollRange()I

    move-result v5

    .line 656
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getOverScrollMode()I

    const/4 v2, 0x0

    .line 661
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget v7, v10, Lru/rocketbank/core/widgets/BarChartView;->overscrollDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lru/rocketbank/core/widgets/BarChartView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 663
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 690
    :pswitch_2
    iget-boolean v0, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-eqz v0, :cond_d

    .line 691
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 692
    iget v6, v10, Lru/rocketbank/core/widgets/BarChartView;->maximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 693
    iget v1, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 695
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-eqz v1, :cond_7

    .line 696
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, v10, Lru/rocketbank/core/widgets/BarChartView;->minimumVelocity:I

    if-le v1, v6, :cond_6

    neg-int v15, v0

    .line 5827
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-eqz v0, :cond_7

    .line 5828
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 5829
    iget v1, v10, Lru/rocketbank/core/widgets/BarChartView;->contentWidth:F

    .line 5831
    iget-object v12, v10, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v13

    .line 5832
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    sub-float/2addr v1, v0

    .line 5834
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v18, v0

    .line 5831
    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5837
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    .line 5838
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->postInvalidateOnAnimation()V

    goto :goto_1

    .line 699
    :cond_6
    iget-object v12, v10, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollY()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollRange()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    .line 701
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->postInvalidateOnAnimation()V

    .line 707
    :cond_7
    :goto_1
    iput v4, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 708
    iput-boolean v3, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    .line 6536
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 6537
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6538
    iput-object v2, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 600
    :pswitch_3
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-nez v1, :cond_8

    return v3

    .line 605
    :cond_8
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v11

    iput-boolean v1, v10, Lru/rocketbank/core/widgets/BarChartView;->isBeingDragged:Z

    if-eqz v1, :cond_9

    .line 606
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/core/widgets/BarChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 609
    invoke-interface {v1, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 617
    :cond_9
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a

    .line 618
    iget-object v1, v10, Lru/rocketbank/core/widgets/BarChartView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 622
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lru/rocketbank/core/widgets/BarChartView;->lastMotionX:I

    .line 623
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    goto :goto_2

    .line 7747
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 7748
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 7749
    iget v4, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    if-ne v2, v4, :cond_d

    if-nez v1, :cond_c

    move v3, v11

    .line 7754
    :cond_c
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lru/rocketbank/core/widgets/BarChartView;->lastMotionY:I

    .line 7755
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lru/rocketbank/core/widgets/BarChartView;->activePointerId:I

    .line 7756
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 7757
    iget-object v0, v10, Lru/rocketbank/core/widgets/BarChartView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_d
    :goto_2
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final refreshContent(Z)V
    .locals 8

    .line 258
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1348
    iput v0, p0, Lru/rocketbank/core/widgets/BarChartView;->hintWidth:F

    move v2, v1

    :goto_0
    int-to-float v3, v2

    .line 1349
    iget v4, p0, Lru/rocketbank/core/widgets/BarChartView;->lineHeight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1350
    iget-object v3, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getHit(I)Ljava/lang/String;

    move-result-object v3

    .line 1351
    iget-object v4, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1352
    iget v4, p0, Lru/rocketbank/core/widgets/BarChartView;->hintWidth:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    .line 1353
    iput v3, p0, Lru/rocketbank/core/widgets/BarChartView;->hintWidth:F

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2341
    :cond_1
    iget-object v2, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getLabelName(I)Ljava/lang/String;

    move-result-object v2

    .line 2342
    iget-object v3, p0, Lru/rocketbank/core/widgets/BarChartView;->mLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 2343
    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    iget v4, p0, Lru/rocketbank/core/widgets/BarChartView;->barWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lru/rocketbank/core/widgets/BarChartView;->firstLabelTextStartOffset:F

    .line 2344
    iget v2, p0, Lru/rocketbank/core/widgets/BarChartView;->firstLabelTextStartOffset:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lru/rocketbank/core/widgets/BarChartView;->firstLabelTextStartOffset:F

    .line 267
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->hintWidth:F

    sub-float/2addr v2, v3

    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPadding:F

    sub-float/2addr v2, v3

    iput v2, p0, Lru/rocketbank/core/widgets/BarChartView;->visibleContentWidth:F

    .line 3336
    iget-object v2, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v2}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getCount()I

    move-result v2

    .line 3337
    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    iget v4, p0, Lru/rocketbank/core/widgets/BarChartView;->labelSpaceBetween:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->firstLabelTextStartOffset:F

    add-float/2addr v2, v3

    iput v2, p0, Lru/rocketbank/core/widgets/BarChartView;->contentWidth:F

    .line 273
    iget v2, p0, Lru/rocketbank/core/widgets/BarChartView;->contentWidth:F

    iget v3, p0, Lru/rocketbank/core/widgets/BarChartView;->visibleContentWidth:F

    sub-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 277
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    float-to-int p1, v0

    .line 278
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView;->setScrollX(I)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    float-to-int p1, v0

    .line 280
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView;->setScrollX(I)V

    .line 285
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getTop()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->contentTop:F

    .line 286
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barContentLeft:F

    .line 287
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->contentTop:F

    sub-float/2addr p1, v0

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelTextSize:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->labelBottom:F

    .line 288
    iget p1, p0, Lru/rocketbank/core/widgets/BarChartView;->labelBottom:F

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelSpaceTop:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barContentBottom:F

    .line 289
    iget p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barContentBottom:F

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barContentHeight:F

    .line 291
    iget p1, p0, Lru/rocketbank/core/widgets/BarChartView;->barContentHeight:F

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 292
    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    move v0, v1

    .line 297
    :goto_3
    iget v2, p0, Lru/rocketbank/core/widgets/BarChartView;->linesCount:I

    if-ge v0, v2, :cond_5

    shl-int/lit8 v2, v0, 0x2

    .line 300
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    .line 301
    iget-object v4, p0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    iget v5, p0, Lru/rocketbank/core/widgets/BarChartView;->barContentLeft:F

    iget v6, p0, Lru/rocketbank/core/widgets/BarChartView;->hintWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Lru/rocketbank/core/widgets/BarChartView;->hintPadding:F

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 302
    iget-object v4, p0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v5, v2, 0x1

    aput v3, v4, v5

    .line 303
    iget-object v4, p0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v4, v5

    .line 304
    iget-object v4, p0, Lru/rocketbank/core/widgets/BarChartView;->lineCoords:[F

    add-int/lit8 v2, v2, 0x3

    aput v3, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 308
    :cond_5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->linePaint:Landroid/graphics/Paint;

    .line 309
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->linePaint:Landroid/graphics/Paint;

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->lineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget p1, p0, Lru/rocketbank/core/widgets/BarChartView;->visibleContentWidth:F

    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView;->labelWidth:I

    iget v2, p0, Lru/rocketbank/core/widgets/BarChartView;->labelSpaceBetween:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    .line 313
    iget p1, p0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    if-gez p1, :cond_6

    .line 314
    iput v1, p0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    goto :goto_4

    .line 316
    :cond_6
    iget p1, p0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView;->drawableAtScreenCount:I

    .line 323
    :goto_4
    invoke-direct {p0}, Lru/rocketbank/core/widgets/BarChartView;->allocateRectF()V

    .line 325
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/BarChartView;->invalidate()V

    return-void
.end method

.method public final setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/BarChartView;->adaptetObservable:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 363
    :cond_0
    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView;->adapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getObservable()Landroid/database/DataSetObservable;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView;->adaptetObservable:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    .line 369
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView;->refreshContent(Z)V

    return-void
.end method
