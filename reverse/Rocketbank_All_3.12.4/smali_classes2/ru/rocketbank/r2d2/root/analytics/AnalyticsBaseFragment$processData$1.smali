.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;
.super Ljava/lang/Object;
.source "AnalyticsBaseFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Landroid/os/Parcelable;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->$data:Landroid/os/Parcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->setMonthsManager(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V

    .line 166
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->setHeaderSize(I)V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getMonthsManager()Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->$data:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->hasData(Landroid/os/Parcelable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->$data:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->showData(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 173
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->setItemChart(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;)V

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->access$isJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;)Z

    move-result v2

    invoke-direct {v1, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 179
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 180
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v1, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 183
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getHeaderSize()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getHeaderSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 185
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->$data:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->updateHeader(Landroid/os/Parcelable;)V

    return-void
.end method
