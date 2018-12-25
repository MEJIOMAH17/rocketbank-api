.class public final Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;
.super Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;
.source "GestureLockableObservableScrollView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView$YScrollDetector;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView$YScrollDetector;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView$YScrollDetector;-><init>(Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;)V

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->setFadingEdgeLength(I)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mScrollable:Z

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final isScrollable()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mScrollable:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 32
    :cond_1
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mScrollable:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 34
    :cond_2
    iget-boolean p1, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mScrollable:Z

    return p1
.end method

.method public final setScrollingEnabled(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->mScrollable:Z

    return-void
.end method
