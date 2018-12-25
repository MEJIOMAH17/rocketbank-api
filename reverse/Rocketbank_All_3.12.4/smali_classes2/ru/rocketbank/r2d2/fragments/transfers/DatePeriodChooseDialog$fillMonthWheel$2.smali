.class final Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillMonthWheel$2;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->fillMonthWheel(Lru/rocketbank/core/widgets/WheelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillMonthWheel$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ILjava/lang/String;)V
    .locals 0

    .line 187
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillMonthWheel$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->access$getDatePeriod$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    move-result-object p2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setMonth(Ljava/lang/Integer;)V

    return-void
.end method
