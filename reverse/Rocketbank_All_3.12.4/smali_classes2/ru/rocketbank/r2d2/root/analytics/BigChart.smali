.class public Lru/rocketbank/r2d2/root/analytics/BigChart;
.super Landroid/view/View;
.source "BigChart.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;,
        Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;
    }
.end annotation


# instance fields
.field private _analyticCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;",
            ">;"
        }
    .end annotation
.end field

.field private _analyticGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;",
            ">;"
        }
    .end annotation
.end field

.field private _analyticTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final _chartItemAmountTextPaint:Landroid/text/TextPaint;

.field private final _chartItemBackroundPaint:Landroid/graphics/Paint;

.field private final _chartItemPercentageTextPaint:Landroid/text/TextPaint;

.field private final _chartItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;",
            ">;"
        }
    .end annotation
.end field

.field private final _context:Landroid/content/Context;

.field private final _gestureDetector:Landroid/view/GestureDetector;

.field private _isValuesSet:Z

.field private _listenerOnCategory:Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;

.field private _listenerOnGroup:Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;

.field private _listenerOnTag:Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;

.field private _moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final _textSizeAmount:F

.field private final _textSizePercentShift:F

.field private final _textSizePercentSymbol:F

.field private final _textSizePercentage:F

.field private _viewPager:Landroid/support/v4/view/ViewPager;

.field private final iconPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    .line 46
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemBackroundPaint:Landroid/graphics/Paint;

    .line 47
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    .line 48
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_isValuesSet:Z

    .line 76
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_context:Landroid/content/Context;

    .line 78
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    .line 79
    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p3

    .line 80
    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    .line 81
    new-instance v0, Lru/rocketbank/core/utils/MoneyFormatter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 83
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_gestureDetector:Landroid/view/GestureDetector;

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701a2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentage:F

    .line 86
    iget p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentage:F

    const p3, 0x3f153cde    # 0.58296f

    mul-float/2addr p3, p2

    iput p3, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentSymbol:F

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701a0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizeAmount:F

    .line 89
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 90
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentage:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 91
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 94
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 95
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    .line 97
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v1

    const/16 v2, 0x8

    .line 98
    invoke-virtual {v1, v2, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 95
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizeAmount:F

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 101
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 104
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getPercentShift(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentShift:F

    .line 106
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    .line 107
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 108
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    .line 110
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p3

    const/16 v1, 0x9

    .line 111
    invoke-virtual {p3, v1, p1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701a1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private getPercentRealHeight(Landroid/content/Context;)F
    .locals 4

    .line 122
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, -0x1

    .line 123
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentSymbol:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 125
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, "%"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 129
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 131
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getPercentShift(Landroid/content/Context;)F
    .locals 1

    .line 118
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getPercentageRealHeight()F

    move-result v0

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getPercentRealHeight(Landroid/content/Context;)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private getPercentageRealHeight()F
    .locals 5

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 139
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private invalidateChart(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_isValuesSet:Z

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 277
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0x12c

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 279
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->invalidate()V

    return-void
.end method

.method private setPercentage(Ljava/util/List;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;D)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;",
            "D)V"
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_isValuesSet:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;-><init>(Lru/rocketbank/r2d2/root/analytics/BigChart;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p2, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->percentage:D

    double-to-float p2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    double-to-float p3, p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 262
    new-instance p3, Lru/rocketbank/r2d2/root/analytics/BigChart$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/root/analytics/BigChart$1;-><init>(Lru/rocketbank/r2d2/root/analytics/BigChart;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 270
    :cond_0
    iput-wide p3, p2, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->percentage:D

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 153
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    iget-object v1, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v10, v8, :cond_1

    .line 163
    iget-object v1, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    .line 164
    iget-wide v13, v12, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->percentage:D

    add-int/lit8 v1, v8, -0x1

    if-ne v10, v1, :cond_0

    .line 167
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getWidth()I

    move-result v1

    sub-int/2addr v1, v11

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double v3, v13, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    :goto_1
    add-int v15, v11, v1

    .line 172
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getHeight()I

    move-result v1

    .line 174
    iget-object v2, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemBackroundPaint:Landroid/graphics/Paint;

    iget-object v3, v12, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->color:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v11

    const/4 v3, 0x0

    int-to-float v4, v15

    int-to-float v5, v1

    .line 176
    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemBackroundPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x14

    .line 182
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "%d%%"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    double-to-int v5, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentSymbol:F

    float-to-int v4, v4

    invoke-direct {v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 184
    new-instance v2, Lru/rocketbank/r2d2/root/analytics/PercentShiftSpan;

    iget v4, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_textSizePercentShift:F

    invoke-direct {v2, v4}, Lru/rocketbank/r2d2/root/analytics/PercentShiftSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    iget-wide v4, v12, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->amount:D

    const-string v6, "RUB"

    invoke-virtual {v3, v4, v5, v6, v9}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v1, v9, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v11

    const/4 v5, 0x0

    .line 191
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 193
    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    iget-object v1, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v9, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    const/high16 v3, 0x41f00000    # 30.0f

    .line 198
    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemPercentageTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v3

    .line 201
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v1

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 203
    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-int/lit8 v3, v3, 0x1e

    int-to-float v2, v3

    .line 210
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItemAmountTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v3, v4, v1

    add-float/2addr v1, v2

    .line 214
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v2, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 216
    iget-object v1, v12, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->icon:Ljava/lang/String;

    iget v2, v5, Landroid/graphics/RectF;->left:F

    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    move v11, v15

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 401
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_5

    .line 406
    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    iget-wide v3, v3, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->percentage:D

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_0

    .line 409
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    mul-double/2addr v6, v3

    double-to-int v3, v6

    :goto_1
    add-int/2addr v3, v2

    .line 414
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getHeight()I

    move-result v4

    .line 416
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticCategories:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticCategories:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    .line 421
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 422
    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_listenerOnCategory:Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v2 .. v7}, Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;->onCategorySelected(JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 423
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticGroups:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 424
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticGroups:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    .line 425
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 426
    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_listenerOnGroup:Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getColor()Ljava/lang/Integer;

    move-result-object v7

    move v4, v5

    move-object v5, v0

    invoke-interface/range {v2 .. v7}, Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;->onGroupSelected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 427
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticTags:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 428
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticTags:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    .line 429
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_listenerOnTag:Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;->onTagSelected(Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_5
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnalyticsCategories(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticCategories:Ljava/util/List;

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticGroups:Ljava/util/List;

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 297
    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    new-instance v6, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    invoke-direct {v6, p0, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;-><init>(Lru/rocketbank/r2d2/root/analytics/BigChart;Lru/rocketbank/r2d2/root/analytics/BigChart$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    move v0, v2

    .line 300
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 301
    iget-object v4, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    :goto_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 308
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    .line 309
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    .line 311
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getPercentage()D

    move-result-wide v5

    invoke-direct {p0, v0, v1, v5, v6}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setPercentage(Ljava/util/List;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;D)V

    .line 313
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getAmount()D

    move-result-wide v5

    iput-wide v5, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->amount:D

    .line 314
    sget-object v5, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object v4

    .line 315
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->icon:Ljava/lang/String;

    .line 316
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->color:Ljava/lang/Integer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 320
    :cond_3
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->invalidateChart(Ljava/util/List;)V

    .line 322
    iput-boolean v3, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_isValuesSet:Z

    return-void
.end method

.method public setAnalyticsGroups(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticGroups:Ljava/util/List;

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticCategories:Ljava/util/List;

    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 233
    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    new-instance v6, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    invoke-direct {v6, p0, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;-><init>(Lru/rocketbank/r2d2/root/analytics/BigChart;Lru/rocketbank/r2d2/root/analytics/BigChart$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    move v0, v2

    .line 236
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 237
    iget-object v4, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    :goto_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 244
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    .line 245
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    .line 247
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getAmount()D

    move-result-wide v5

    iput-wide v5, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->amount:D

    .line 248
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getIcon()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->icon:Ljava/lang/String;

    .line 249
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getColor()Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->color:Ljava/lang/Integer;

    .line 251
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getPercentage()D

    move-result-wide v4

    invoke-direct {p0, v0, v1, v4, v5}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setPercentage(Ljava/util/List;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    :cond_3
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->invalidateChart(Ljava/util/List;)V

    .line 256
    iput-boolean v3, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_isValuesSet:Z

    return-void
.end method

.method public setAnalyticsTags(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 329
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticTags:Ljava/util/List;

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticCategories:Ljava/util/List;

    .line 331
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_analyticGroups:Ljava/util/List;

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 337
    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    new-instance v6, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    invoke-direct {v6, p0, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;-><init>(Lru/rocketbank/r2d2/root/analytics/BigChart;Lru/rocketbank/r2d2/root/analytics/BigChart$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    move v0, v2

    .line 340
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 341
    iget-object v4, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    :goto_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 348
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_chartItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    .line 349
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;

    .line 351
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getPercentage()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    invoke-direct {p0, v0, v1, v5, v6}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setPercentage(Ljava/util/List;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;D)V

    .line 352
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getAmount()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->amount:D

    .line 353
    sget-object v5, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v5, v2}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(I)Lkotlin/Pair;

    move-result-object v5

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->icon:Ljava/lang/String;

    .line 355
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, v1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->color:Ljava/lang/Integer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 359
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    .line 361
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v4, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_context:Landroid/content/Context;

    .line 362
    invoke-virtual {v1, v2, v4}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 359
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 364
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->iconPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 366
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->invalidateChart(Ljava/util/List;)V

    .line 368
    iput-boolean v3, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_isValuesSet:Z

    return-void
.end method

.method public setOnCategorySelectedListener(Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_listenerOnCategory:Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;

    return-void
.end method

.method public setOnGroupSelectedListener(Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_listenerOnGroup:Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;

    return-void
.end method

.method public setOnTagSelectedListener(Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_listenerOnTag:Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart;->_viewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method
