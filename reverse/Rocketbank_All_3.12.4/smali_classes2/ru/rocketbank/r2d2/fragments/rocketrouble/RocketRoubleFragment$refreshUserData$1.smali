.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;
.super Lrx/Subscriber;
.source "RocketRoubleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->refreshUserData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/RocketRoubles;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 503
    check-cast p1, Lru/rocketbank/core/model/RocketRoubles;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->onNext(Lru/rocketbank/core/model/RocketRoubles;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/RocketRoubles;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketRoubles;->getRocketrubles()Lru/rocketbank/core/model/dto/RocketRublesData;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 521
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRublesData;->getBalance()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$setBalance$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;D)V

    .line 522
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$showBalance(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V

    .line 524
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRublesData;->getMonths()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRublesData;->getMonths()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 530
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 531
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$getBarChartAdapter$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;->setValues(Ljava/util/List;I)V

    .line 533
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$isNeedShowFloating$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 534
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$setNeedShowFloating$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;Z)V

    .line 535
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getFloatingActionButton()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 538
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRublesData;->getHistory()Ljava/util/List;

    move-result-object v2

    .line 539
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRublesData;->getOperations()Ljava/util/List;

    move-result-object v3

    .line 541
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/RocketRublesData;->getTotal()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 538
    invoke-static {v1, v2, v3, v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->access$fillAdapterWithData(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V

    return-void
.end method
