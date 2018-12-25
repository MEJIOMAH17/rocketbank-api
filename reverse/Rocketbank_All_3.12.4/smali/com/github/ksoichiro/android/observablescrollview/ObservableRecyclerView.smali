.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ObservableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;
    }
.end annotation


# static fields
.field private static recyclerViewLibraryVersion:I = 0x16


# instance fields
.field private mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

.field private mChildrenHeights:Landroid/util/SparseIntArray;

.field private mDragging:Z

.field private mFirstScroll:Z

.field private mIntercepted:Z

.field private mPrevFirstVisibleChildHeight:I

.field private mPrevFirstVisiblePosition:I

.field private mPrevMoveEvent:Landroid/view/MotionEvent;

.field private mPrevScrollY:I

.field private mPrevScrolledChildrenHeight:I

.field private mScrollState:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

.field private mScrollY:I

.field private mTouchInterceptionViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    .line 1328
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 1334
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x15

    .line 1336
    sput p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->recyclerViewLibraryVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    .line 2328
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 2334
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x15

    .line 2336
    sput p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->recyclerViewLibraryVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    .line 3328
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 3334
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x15

    .line 3336
    sput p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->recyclerViewLibraryVersion:I

    return-void
.end method


# virtual methods
.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2

    .line 321
    sget v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->recyclerViewLibraryVersion:I

    const/16 v1, 0x16

    if-gt v1, v0, :cond_0

    .line 322
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mDragging:Z

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mFirstScroll:Z

    .line 192
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-interface {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;->onDownMotionEvent()V

    .line 196
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 73
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    .line 74
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisiblePosition:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    .line 75
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    .line 76
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrolledChildrenHeight:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    .line 77
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrollY:I

    .line 78
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->scrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    .line 79
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    .line 80
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    invoke-direct {v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 87
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisiblePosition:I

    .line 88
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    .line 89
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrolledChildrenHeight:I

    .line 90
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrollY:I

    .line 91
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->scrollY:I

    .line 92
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 5

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 99
    iget-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    if-eqz p1, :cond_10

    .line 100
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 102
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildCount()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {p0, p3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    move v1, p1

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_2

    .line 105
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 108
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p1

    .line 111
    :goto_1
    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 116
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    if-ge v0, p2, :cond_6

    .line 119
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    sub-int v0, p2, v0

    if-eq v0, p4, :cond_4

    add-int/lit8 p4, p2, -0x1

    move v0, p1

    .line 120
    :goto_2
    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    if-le p4, v1, :cond_5

    .line 121
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_4
    move v0, p1

    .line 131
    :cond_5
    iget p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    add-int/2addr v1, v0

    add-int/2addr p4, v1

    iput p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    goto :goto_6

    .line 133
    :cond_6
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    if-ge p2, v0, :cond_a

    .line 136
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    sub-int/2addr v0, p2

    if-eq v0, p4, :cond_8

    .line 137
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    sub-int/2addr v0, p4

    move p4, p1

    :goto_4
    if-le v0, p2, :cond_9

    .line 138
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-lez v1, :cond_7

    .line 139
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mChildrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr p4, v1

    goto :goto_5

    .line 144
    :cond_7
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    move p4, p1

    .line 148
    :cond_9
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    .line 149
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    goto :goto_6

    :cond_a
    if-nez p2, :cond_b

    .line 151
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    .line 152
    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    .line 154
    :cond_b
    :goto_6
    iget p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    if-gez p4, :cond_c

    .line 155
    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisibleChildHeight:I

    .line 157
    :cond_c
    iget p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrolledChildrenHeight:I

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p4, p3

    iput p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    .line 158
    iput p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevFirstVisiblePosition:I

    .line 160
    iget-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    iget p3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    iget-boolean p4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mFirstScroll:Z

    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mDragging:Z

    invoke-interface {p2, p3, p4, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;->onScrollChanged(IZZ)V

    .line 161
    iget-boolean p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mFirstScroll:Z

    if-eqz p2, :cond_d

    .line 162
    iput-boolean p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mFirstScroll:Z

    .line 165
    :cond_d
    iget p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrollY:I

    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    if-ge p1, p2, :cond_e

    .line 167
    sget-object p1, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->UP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollState:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    goto :goto_7

    .line 168
    :cond_e
    iget p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrollY:I

    if-ge p1, p2, :cond_f

    .line 170
    sget-object p1, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->DOWN:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollState:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    goto :goto_7

    .line 172
    :cond_f
    sget-object p1, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->STOP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollState:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    .line 174
    :goto_7
    iget p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevScrollY:I

    :cond_10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    if-eqz v0, :cond_5

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 214
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    .line 4316
    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollY:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_5

    .line 218
    iget-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mIntercepted:Z

    if-eqz v2, :cond_1

    return v1

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    :goto_0
    move v3, v0

    move v4, v3

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 239
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 242
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mIntercepted:Z

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 252
    new-instance p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;

    invoke-direct {p1, p0, v2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 263
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 205
    :pswitch_1
    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mIntercepted:Z

    .line 206
    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mDragging:Z

    .line 207
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mScrollState:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    invoke-interface {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;->onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V

    .line 268
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mCallbacks:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    return-void
.end method

.method public final setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    return-void
.end method
