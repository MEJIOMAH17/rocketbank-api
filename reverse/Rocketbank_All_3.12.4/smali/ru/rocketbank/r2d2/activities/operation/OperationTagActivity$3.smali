.class Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$3;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 283
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 286
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$3;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$002(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z

    :cond_0
    return-void
.end method
