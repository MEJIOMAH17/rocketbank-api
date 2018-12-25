.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 758
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lru/rocketbank/r2d2/R$id;->editTextBik:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz v0, :cond_0

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setBackgroundResource(I)V

    .line 759
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->notifyPropertyChanged(I)V

    .line 763
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void
.end method
