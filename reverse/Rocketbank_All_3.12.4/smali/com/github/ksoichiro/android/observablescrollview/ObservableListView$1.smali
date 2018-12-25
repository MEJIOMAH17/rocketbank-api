.class final Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;
.super Ljava/lang/Object;
.source "ObservableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->access$000(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->access$000(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;

    invoke-static {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->access$100(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->access$000(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->access$000(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
