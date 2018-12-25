.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;
.super Ljava/lang/Object;
.source "DepositFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/model/UserModel;)V
    .locals 7

    .line 233
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 235
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/DepositModel;

    .line 236
    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v4}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 237
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$502(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/core/model/DepositModel;

    .line 238
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$600(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    .line 243
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$100(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    .line 244
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$700(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$800(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedAdapter;->clearTop()V

    .line 247
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$900(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    .line 248
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$400(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
