.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;
.super Ljava/lang/Object;
.source "RecentTransferFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;

.field final synthetic val$i:I

.field final synthetic val$remittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->val$remittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    iput p3, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->val$remittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;->setTitle(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->access$100(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;

    move-result-object p1

    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1$1;->val$i:I

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter;->notifyItemChanged(I)V

    return-void
.end method
