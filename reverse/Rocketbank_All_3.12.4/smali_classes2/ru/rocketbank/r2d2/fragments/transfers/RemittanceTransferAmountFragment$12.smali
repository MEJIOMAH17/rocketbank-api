.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;
.super Ljava/lang/Object;
.source "RemittanceTransferAmountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->moveToTheConfirmScreen(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

.field final synthetic val$remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;->val$remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 473
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;->val$remittanceOutgoing:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1900(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    return-void
.end method
