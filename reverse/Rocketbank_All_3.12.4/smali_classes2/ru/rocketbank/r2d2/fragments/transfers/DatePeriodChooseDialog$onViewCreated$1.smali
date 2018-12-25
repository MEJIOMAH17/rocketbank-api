.class final Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $selectedDatePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$selectedDatePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$selectedDatePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$selectedDatePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getTabMonth$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$selectedDatePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getQuarter()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getTabQuarter$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$selectedDatePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getHalf()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getTabHalf$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getTabYear$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 139
    :cond_3
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$view:Landroid/view/View;

    sget v2, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;->$view:Landroid/view/View;

    sget v3, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    const-string v3, "view.tabLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->updateTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method
