.class public Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MonthYearPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;
    }
.end annotation


# instance fields
.field private _listener:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;)Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->_listener:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 15
    new-instance p1, Lru/rocketbank/core/widgets/MonthYearPickerDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u0412\u044b\u0431\u043e\u0440 \u0434\u0430\u0442\u044b"

    .line 16
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c"

    .line 17
    new-instance v1, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$1;-><init>(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;Lru/rocketbank/core/widgets/MonthYearPickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->setValue(II)V

    return-object p1
.end method

.method public setOnMonthYearSelectedListener(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->_listener:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;

    return-void
.end method
