.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDateCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $editText:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 842
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "editText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;-><init>(Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax_period_date(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V

    .line 843
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$hideKeyboard(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V

    return-void
.end method
