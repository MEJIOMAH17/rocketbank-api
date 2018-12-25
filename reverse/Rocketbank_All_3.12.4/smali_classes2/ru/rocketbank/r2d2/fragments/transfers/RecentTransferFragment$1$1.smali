.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;
.super Ljava/lang/Object;
.source "RecentTransferFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->onShowDialogRequested(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;Landroid/view/View;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 108
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$000(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object v2, v2, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    iget-object v2, v2, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$200(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V

    return v0

    .line 91
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->val$v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p1

    .line 92
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$000(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    .line 93
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->getRemittance()Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;

    move-result-object v2

    .line 97
    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;

    invoke-direct {v3, p0, v1, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;I)V

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->onRename(Lrx/functions/Action1;)V

    .line 104
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentTransferRenameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
