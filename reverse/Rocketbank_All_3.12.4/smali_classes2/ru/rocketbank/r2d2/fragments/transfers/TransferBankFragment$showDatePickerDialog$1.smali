.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePickerDialog$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDatePickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePickerDialog$1\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePickerDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 819
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePickerDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;-><init>()V

    .line 820
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->setYear(Ljava/lang/Integer;)V

    .line 821
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->setMonth(Ljava/lang/Integer;)V

    .line 822
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->setDay(Ljava/lang/Integer;)V

    .line 819
    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax_period_date(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V

    return-void
.end method
