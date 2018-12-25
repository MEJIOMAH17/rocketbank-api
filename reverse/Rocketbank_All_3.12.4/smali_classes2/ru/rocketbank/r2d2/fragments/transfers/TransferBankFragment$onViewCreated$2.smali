.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $kbkEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->$kbkEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 9

    if-nez p2, :cond_2

    .line 202
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->$kbkEditText:Landroid/widget/EditText;

    const/16 v0, 0x14

    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$addZerosIfNeed(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;I)V

    .line 203
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->$kbkEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "153"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_0

    .line 206
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1, v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax(Z)V

    .line 208
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1, v8}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$changeTaxPeriod(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V

    .line 209
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getSpinnerStatus$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getShowTax()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void

    :cond_0
    const-string v1, "182"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 212
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_1

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 214
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getShowTax()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 216
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getSpinnerStatus$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 217
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1, v7}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$changeTaxPeriod(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V

    return-void

    .line 221
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 222
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1, v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax(Z)V

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getSpinnerStatus$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 225
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getShowTax()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 226
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1, v7}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$changeTaxPeriod(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V

    :cond_2
    return-void
.end method
