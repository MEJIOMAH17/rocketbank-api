.class final Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView$1;
.super Ljava/lang/Object;
.source "ObservableScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView$1;->this$0:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    iput-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView$1;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
