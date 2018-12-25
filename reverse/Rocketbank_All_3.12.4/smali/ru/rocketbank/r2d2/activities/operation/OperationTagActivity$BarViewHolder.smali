.class public Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;
.super Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarViewHolder"
.end annotation


# instance fields
.field barChartView:Lru/rocketbank/core/widgets/BarChartView;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Landroid/view/View;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    .line 662
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013b

    .line 664
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/BarChartView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 668
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;->barChartView:Lru/rocketbank/core/widgets/BarChartView;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$500(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/BarChartView;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    .line 669
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$BarViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$500(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->notifyDataSetChanged()V

    return-void
.end method
