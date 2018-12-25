.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;
.super Lrx/Subscriber;
.source "RecentTransferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->hide(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

.field final synthetic val$transfersModelUrFiz:Lru/rocketbank/core/network/model/TransfersModelUrFiz;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->val$transfersModelUrFiz:Lru/rocketbank/core/network/model/TransfersModelUrFiz;

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

    const-string p1, ""

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send delete template "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->val$transfersModelUrFiz:Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->getHappened_at()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$300(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V

    .line 145
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f11031c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$000(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->val$transfersModelUrFiz:Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$100(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->notifyDataSetChanged()V

    .line 153
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$400(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V

    return-void
.end method
