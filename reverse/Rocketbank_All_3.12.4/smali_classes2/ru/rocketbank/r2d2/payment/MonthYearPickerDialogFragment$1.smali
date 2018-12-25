.class Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "MonthYearPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

.field final synthetic val$dialog:Lru/rocketbank/core/widgets/MonthYearPickerDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;Lru/rocketbank/core/widgets/MonthYearPickerDialog;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;->this$0:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;->val$dialog:Lru/rocketbank/core/widgets/MonthYearPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 20
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;->this$0:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->access$000(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;)Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;->this$0:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->access$000(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;)Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;->val$dialog:Lru/rocketbank/core/widgets/MonthYearPickerDialog;

    invoke-virtual {p2}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->getYear()I

    move-result p2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;->val$dialog:Lru/rocketbank/core/widgets/MonthYearPickerDialog;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->getMonth()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, p2, v0, v1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;->onMonthYearSelected(III)V

    :cond_0
    return-void
.end method
