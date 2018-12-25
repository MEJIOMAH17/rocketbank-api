.class public Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;
.super Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;
.source "OperationTagActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Landroid/view/View;)V
    .locals 1

    .line 675
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    .line 676
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;-><init>(Landroid/view/View;)V

    .line 678
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090361

    .line 680
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 681
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 683
    invoke-static {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$1000(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 684
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 693
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->headerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
