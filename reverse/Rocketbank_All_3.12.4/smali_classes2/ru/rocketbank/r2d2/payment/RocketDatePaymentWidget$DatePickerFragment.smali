.class public Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RocketDatePaymentWidget.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatePickerFragment"
.end annotation


# instance fields
.field listener:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 287
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 288
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 289
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 292
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 297
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method public setListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->listener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method
