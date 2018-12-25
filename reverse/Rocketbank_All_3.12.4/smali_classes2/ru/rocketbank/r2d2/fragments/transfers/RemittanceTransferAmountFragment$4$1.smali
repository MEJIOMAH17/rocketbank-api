.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4$1;
.super Ljava/lang/Object;
.source "RemittanceTransferAmountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->onNext(Lru/rocketbank/core/model/transfers/bank/BiksResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4$1;->this$1:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$600(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$700(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/String;)V

    return-void
.end method
