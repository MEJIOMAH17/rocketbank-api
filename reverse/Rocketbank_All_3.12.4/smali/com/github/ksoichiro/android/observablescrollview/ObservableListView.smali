.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.super Landroid/widget/ListView;
.source "ObservableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;
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
.method static synthetic access$000(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 90
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;

    .line 91
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisiblePosition:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevFirstVisiblePosition:I

    .line 92
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisibleChildHeight:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevFirstVisibleChildHeight:I

    .line 93
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrolledChildrenHeight:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevScrolledChildrenHeight:I

    .line 94
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevScrollY:I

    .line 95
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->scrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mScrollY:I

    .line 96
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mChildrenHeights:Landroid/util/SparseIntArray;

    .line 97
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;

    invoke-direct {v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 104
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevFirstVisiblePosition:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisiblePosition:I

    .line 105
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevFirstVisibleChildHeight:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisibleChildHeight:I

    .line 106
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevScrolledChildrenHeight:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrolledChildrenHeight:I

    .line 107
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mPrevScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrollY:I

    .line 108
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->scrollY:I

    .line 109
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mChildrenHeights:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
