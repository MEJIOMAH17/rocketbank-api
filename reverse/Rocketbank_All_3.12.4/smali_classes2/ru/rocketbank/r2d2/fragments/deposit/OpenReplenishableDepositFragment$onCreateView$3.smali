.class public final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;
.super Lru/rocketbank/core/widgets/listener/AddCurrencyListener;
.source "OpenReplenishableDepositFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenReplenishableDepositFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenReplenishableDepositFragment.kt\nru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3\n*L\n1#1,181:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;-><init>(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method protected final getCurrency()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getMinAmount()Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getMoneyEditText$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;->convertTextToBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2

    if-eqz p1, :cond_3

    .line 102
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 103
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getNextButton$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    cmpl-double p4, p2, v0

    if-ltz p4, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_2
    return-void

    :cond_3
    return-void
.end method
