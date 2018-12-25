.class final Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$3;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePeriodChooseDialog.kt\nru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$3\n*L\n1#1,306:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ILjava/lang/String;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getDatePeriod$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    move-result-object p1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setYear(I)V

    return-void
.end method
