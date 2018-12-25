.class Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$2;
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

    .line 109
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$2;->this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$2;->this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$2;->this$0:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-static {v1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->access$000(Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 141
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
