.class public Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;
.super Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatViewHolder"
.end annotation


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private statisticsContainer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Landroid/view/View;)V
    .locals 1

    .line 583
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    .line 584
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090358

    .line 586
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    .line 587
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;)V
    .locals 0

    .line 579
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->onClicked()V

    return-void
.end method

.method private initMoreButton(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const v0, 0x7f090011

    .line 634
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 635
    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder$1;-><init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 642
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$900(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f1104d3

    .line 643
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1100cb

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object p1
.end method

.method private onClicked()V
    .locals 2

    .line 651
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$900(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$902(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z

    .line 653
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$200(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->notifyItemChanged(I)V

    .line 654
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->operationView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public addForAllTime(Ljava/lang/Float;)V
    .locals 6

    .line 595
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v3, 0x7f0c0145

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004d

    .line 596
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 597
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object v3, v3, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v4, p1

    const-string p1, "rub"

    invoke-virtual {v3, v4, v5, p1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902f8

    .line 600
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addMode()V
    .locals 4

    .line 627
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0c0143

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 628
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->initMoreButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addMonth(Ljava/lang/Float;Ljava/util/Calendar;)V
    .locals 7

    .line 607
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v3, 0x7f0c0144

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090181

    .line 609
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 610
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {p2, v3}, Lru/rocketbank/r2d2/utils/CalendarUtils;->forMonthString(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 611
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v6}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$700(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    :cond_0
    invoke-virtual {v1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09004d

    .line 617
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    .line 618
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v3, p1

    const-string p1, "rub"

    invoke-virtual {v1, v3, v4, p1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902f8

    .line 621
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public resetAll()V
    .locals 1

    .line 591
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$StatViewHolder;->statisticsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method
