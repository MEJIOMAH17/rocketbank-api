.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePeriodChooseDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferBankFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDatePeriodChooseDialog()V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePeriodChooseDialog$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePeriodChooseDialog$2;->invoke(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePeriodChooseDialog$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object v0

    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax_period_date(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V

    return-void
.end method
