.class Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "ObservableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$FullWidthFixedViewLayout;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$FullWidthFixedViewLayout;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-virtual {v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$FullWidthFixedViewLayout;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-virtual {v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 468
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 470
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
