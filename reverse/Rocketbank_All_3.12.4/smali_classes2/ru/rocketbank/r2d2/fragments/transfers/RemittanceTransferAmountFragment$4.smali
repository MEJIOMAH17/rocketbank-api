.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;
.super Lrx/Subscriber;
.source "RemittanceTransferAmountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/transfers/bank/BiksResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$200(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$300(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->onNext(Lru/rocketbank/core/model/transfers/bank/BiksResponseData;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/transfers/bank/BiksResponseData;)V
    .locals 5

    .line 229
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;->getBik()Lru/rocketbank/core/model/transfers/bank/BankData;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBesp()Z

    move-result v0

    .line 231
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$200(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$300(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 235
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBesp_text2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBesp_text2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$400(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBesp_text2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$500(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBesp_text1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBesp_text1()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$602(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$500(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
