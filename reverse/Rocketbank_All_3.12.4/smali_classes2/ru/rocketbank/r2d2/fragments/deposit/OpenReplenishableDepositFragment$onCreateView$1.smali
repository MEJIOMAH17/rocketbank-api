.class public final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "OpenReplenishableDepositFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getDeposits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;->getItem(I)Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public final getItem(I)Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;
    .locals 2

    .line 79
    sget-object v0, Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;->Companion:Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getDeposits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "deposit.deposits[position]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/network/model/Deposit;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment$Companion;->newInstance(Lru/rocketbank/core/network/model/Deposit;)Lru/rocketbank/r2d2/fragments/deposit/DepositTypeFragment;

    move-result-object p1

    return-object p1
.end method
