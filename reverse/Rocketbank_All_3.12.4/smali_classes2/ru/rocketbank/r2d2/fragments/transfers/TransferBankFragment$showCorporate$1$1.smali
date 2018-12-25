.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferBankFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;->invoke(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getCorporateViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->setGkhPeriod(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V

    .line 478
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getCorporateViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void
.end method
