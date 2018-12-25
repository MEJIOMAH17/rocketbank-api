.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->requestBik(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/transfers/bank/BiksResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;->call(Lru/rocketbank/core/model/transfers/bank/BiksResponseData;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/transfers/bank/BiksResponseData;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;->getBik()Lru/rocketbank/core/model/transfers/bank/BankData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getBankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;->getBik()Lru/rocketbank/core/model/transfers/bank/BankData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getCorrBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BiksResponseData;->getBik()Lru/rocketbank/core/model/transfers/bank/BankData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/BankData;->getLogo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 756
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$loadBikLogo(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    return-void
.end method
