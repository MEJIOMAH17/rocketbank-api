.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;
.super Landroid/widget/GridView;
.source "ObservableGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;,
        Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;,
        Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$FullWidthFixedViewLayout;
    }
.end annotation


# instance fields
.field private mChildrenHeights:Landroid/util/SparseIntArray;

.field private mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPrevFirstVisibleChildHeight:I

.field private mPrevFirstVisiblePosition:I

.field private mPrevScrollY:I

.field private mPrevScrolledChildrenHeight:I

.field private mScrollY:I


# direct methods
.method static synthetic access$000(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V
    .locals 0

    return-void
.end method

.method private getNumColumnsCompat()I
    .locals 2

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getNumColumns()I

    move-result v0

    return v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 373
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    :cond_1
    if-lez v1, :cond_2

    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 353
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 354
    instance-of p2, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;

    if-eqz p2, :cond_0

    .line 355
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;

    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getNumColumnsCompat()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 104
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;

    .line 105
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevFirstVisiblePosition:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevFirstVisiblePosition:I

    .line 106
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevFirstVisibleChildHeight:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevFirstVisibleChildHeight:I

    .line 107
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevScrolledChildrenHeight:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevScrolledChildrenHeight:I

    .line 108
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevScrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevScrollY:I

    .line 109
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->scrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mScrollY:I

    .line 110
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mChildrenHeights:Landroid/util/SparseIntArray;

    .line 111
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 116
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;

    invoke-direct {v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 118
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevFirstVisiblePosition:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevFirstVisiblePosition:I

    .line 119
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevFirstVisibleChildHeight:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevFirstVisibleChildHeight:I

    .line 120
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevScrolledChildrenHeight:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevScrolledChildrenHeight:I

    .line 121
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mPrevScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->prevScrollY:I

    .line 122
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->scrollY:I

    .line 123
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mChildrenHeights:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 215
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 298
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;

    invoke-direct {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;-><init>(Landroid/widget/ListAdapter;)V

    .line 299
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getNumColumnsCompat()I

    move-result p1

    const/4 v1, 0x1

    if-ge v1, p1, :cond_0

    .line 301
    invoke-virtual {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 303
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 305
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
