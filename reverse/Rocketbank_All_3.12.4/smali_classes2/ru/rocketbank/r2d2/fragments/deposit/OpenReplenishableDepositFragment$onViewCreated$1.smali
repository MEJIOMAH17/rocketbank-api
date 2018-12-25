.class final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "OpenReplenishableDepositFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 126
    sget-object v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->Companion:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 127
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getRefillableType$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/widgets/SwitchCard;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRefillRate()Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 128
    :goto_1
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCapitalization$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/widgets/SwitchCard;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/Deposit;->getCapitalizationAvailable()Z

    move-result v3

    if-ne v3, v2, :cond_3

    const-string v2, "card"

    goto :goto_2

    :cond_3
    const-string v2, "deposit"

    :goto_2
    move-object v3, v2

    .line 129
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getMoneyEditText$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v2}, Lru/rocketbank/core/network/model/Deposit;->getCurrency()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move v2, p1

    .line 126
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;->newInstance(Lru/rocketbank/core/network/model/Deposit;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 131
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method
