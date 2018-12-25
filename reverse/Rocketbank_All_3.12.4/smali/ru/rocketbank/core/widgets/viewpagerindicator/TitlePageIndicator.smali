.class public Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "TitlePageIndicator.java"

# interfaces
.implements Lru/rocketbank/core/widgets/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;,
        Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;,
        Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mCurrentPage:I

.field private mPageOffset:F

.field private final mPaintText:Landroid/graphics/Paint;

.field private mScrollState:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 737
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 741
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 744
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    .line 747
    :cond_0
    iget-object p2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 748
    iget-object p2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 749
    iget-object p2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/4 v0, 0x0

    add-float/2addr p2, v0

    add-float/2addr p2, v0

    add-float/2addr p2, v0

    .line 750
    sget-object v1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eqz v1, :cond_1

    add-float/2addr p2, v0

    :cond_1
    :goto_0
    float-to-int p2, p2

    .line 756
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 699
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 708
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 709
    iput p2, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    .line 710
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 719
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 720
    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 721
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 761
    check-cast p1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 762
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 763
    iget p1, p1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 764
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 769
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 770
    new-instance v1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 771
    iget v0, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v0, v1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 493
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
