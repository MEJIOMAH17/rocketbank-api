.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;
    }
.end annotation


# instance fields
.field private mPrevScrollY:I

.field private mScrollY:I


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 60
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;

    .line 61
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->prevScrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView;->mPrevScrollY:I

    .line 62
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->scrollY:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView;->mScrollY:I

    .line 63
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/webkit/WebView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;

    invoke-direct {v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 70
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView;->mPrevScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->prevScrollY:I

    .line 71
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView;->mScrollY:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->scrollY:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
