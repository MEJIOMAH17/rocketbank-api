.class Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$1;
.super Ljava/lang/Object;
.source "BudgetTransferBinding.java"

# interfaces
.implements Landroid/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$1;->this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$1;->this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcher:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$1;->this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-static {v1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->access$000(Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax(Z)V

    :cond_1
    return-void
.end method
