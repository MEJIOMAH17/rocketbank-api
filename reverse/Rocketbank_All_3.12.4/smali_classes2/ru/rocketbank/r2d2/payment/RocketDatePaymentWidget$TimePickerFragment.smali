.class public Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RocketDatePaymentWidget.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field onTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 260
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 261
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 264
    new-instance p1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object p1
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    .line 270
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->onTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->onTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method public setOnTimeSetListener(Landroid/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->onTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method
