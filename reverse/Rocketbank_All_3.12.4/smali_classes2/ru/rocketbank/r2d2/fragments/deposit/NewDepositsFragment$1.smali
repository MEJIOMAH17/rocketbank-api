.class Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;
.super Lrx/Subscriber;
.source "NewDepositsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->refreshDeposits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/DepositsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "NewDeposits"

    const-string v1, "Failed to execute"

    .line 175
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$000(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Lru/rocketbank/core/network/model/DepositsResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->onNext(Lru/rocketbank/core/network/model/DepositsResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/network/model/DepositsResponse;)V
    .locals 4

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/DepositsResponse;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    new-instance v3, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    invoke-direct {v3}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;-><init>()V

    .line 184
    invoke-virtual {v3, v2}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->setCurrency(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1, v2}, Lru/rocketbank/core/network/model/DepositsResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v2}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->setDeposits(Ljava/util/List;)V

    .line 186
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$100(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result p1

    .line 217
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$202(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$300(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->notifyDataSetChanged()V

    .line 219
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$400(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 220
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V

    return-void
.end method
