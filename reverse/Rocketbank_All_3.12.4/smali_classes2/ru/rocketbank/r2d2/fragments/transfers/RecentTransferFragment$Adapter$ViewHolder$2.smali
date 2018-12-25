.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "RecentTransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->bind(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

.field final synthetic val$remittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

.field final synthetic val$transfer:Lru/rocketbank/core/network/model/TransfersModelUrFiz;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;->this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;->val$remittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;->val$transfer:Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;->val$remittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;->val$transfer:Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->getRecipientType()Lru/rocketbank/core/model/transfers/bank/RecipientType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->toRemittanceOutgoing(Lru/rocketbank/core/model/transfers/bank/RecipientType;)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder$2;->this$2:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$Adapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->startActivity(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Landroid/content/Context;)V

    return-void
.end method
