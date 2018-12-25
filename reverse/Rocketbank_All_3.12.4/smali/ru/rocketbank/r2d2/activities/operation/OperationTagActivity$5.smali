.class Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;
.super Lrx/Subscriber;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/TagAnalytics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 333
    check-cast p1, Lru/rocketbank/core/network/model/TagAnalytics;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->onNext(Lru/rocketbank/core/network/model/TagAnalytics;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/network/model/TagAnalytics;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TagAnalytics;->getAnalytics()Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->getTag()Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->getCurrentMonth()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$302(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;D)D

    .line 347
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$402(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Lru/rocketbank/core/network/model/TagAnalytics;)Lru/rocketbank/core/network/model/TagAnalytics;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TagAnalytics;->getAnalytics()Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->getTag()Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->getMonths()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TagAnalytics;->getAnalytics()Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->getTag()Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->getMonths()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 360
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$500(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->setValues(Ljava/util/List;)V

    .line 362
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->showAmount()V

    .line 363
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$5;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$600(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V

    return-void
.end method
