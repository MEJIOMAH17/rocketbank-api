.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;
.super Lrx/Subscriber;
.source "RemittanceTransferAmountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->requestComission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/response/CommissionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

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

    .line 360
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$800(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    .line 361
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    const v0, 0x7f110454

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1000(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;I)V

    .line 362
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1100(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1200(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1302(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Z)Z

    .line 365
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1400(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Z)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 352
    check-cast p1, Lru/rocketbank/core/model/response/CommissionResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->onNext(Lru/rocketbank/core/model/response/CommissionResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/response/CommissionResponse;)V
    .locals 9

    .line 370
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$800(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    .line 371
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1500(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionResponse;->getCommission()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1302(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Z)Z

    .line 376
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1300(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v4}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1500(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/TariffModel;->getPermalink()Lru/rocketbank/core/model/enums/PermalinkTariff;

    move-result-object v4

    sget-object v5, Lru/rocketbank/core/model/enums/PermalinkTariff;->METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    if-ne v4, v5, :cond_2

    const v4, 0x7f110455

    goto :goto_1

    :cond_2
    const v4, 0x7f110453

    :goto_1
    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v6, v6, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionResponse;->getCommission()F

    move-result p1

    float-to-double v7, p1

    const-string p1, "rub"

    invoke-virtual {v6, v7, v8, p1, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1600(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 379
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    const v0, 0x7f110456

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1000(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;I)V

    .line 382
    :goto_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1700(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Z

    move-result v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$1400(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Z)V

    return-void
.end method
