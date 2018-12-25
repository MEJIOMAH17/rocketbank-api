.class public Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;
.super Landroid/widget/FrameLayout;
.source "RocketDatePaymentWidget.java"

# interfaces
.implements Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;,
        Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;
    }
.end annotation


# instance fields
.field private _dialog:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

.field private _format:Ljava/lang/String;

.field private _fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private _listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

.field private calendar:Ljava/util/Calendar;

.field private providerField:Lru/rocketbank/core/model/provider/ProviderField;

.field private textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

.field private textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

.field private textViewTime:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->inflateLayout(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->findWidgets()V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setClickable(Z)V

    .line 73
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$1;-><init>(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewTime:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$2;-><init>(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance p1, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_dialog:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_fragmentManager:Landroid/support/v4/app/FragmentManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setTime(II)V

    return-void
.end method

.method private findWidgets()V
    .locals 1

    const v0, 0x7f090399

    .line 107
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0903af

    .line 108
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewTime:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0903a6

    .line 109
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method private inflateLayout(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c01d1

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private setTime(II)V
    .locals 4

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewTime:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->providerField:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-interface {p1, p2, p0}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;->onPaymentFieldChanged(Lru/rocketbank/core/model/provider/ProviderField;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearError()V
    .locals 0

    return-void
.end method

.method public getMonth()I
    .locals 2

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getParameterValue()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 5

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_format:Ljava/lang/String;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    const-string v4, "ru"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 143
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDateClick(Landroid/view/View;)V
    .locals 5

    .line 199
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "year"

    .line 200
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "month"

    .line 201
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "day"

    .line 202
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->providerField:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x78da29d6

    if-eq v1, v4, :cond_2

    const v4, 0x2eefae

    if-eq v1, v4, :cond_1

    const v3, 0x6ae9bb7b

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "datetime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_1
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v1, "shortdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 219
    :pswitch_0
    new-instance v0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;-><init>()V

    .line 220
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 221
    new-instance p1, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$4;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$4;-><init>(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->setListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 227
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "datePicker"

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$DatePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :pswitch_1
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_dialog:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    new-instance v1, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$3;-><init>(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->setOnMonthYearSelectedListener(Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment$OnMonthYearSelectedListener;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_dialog:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_dialog:Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_fragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/payment/MonthYearPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTimeClick(Landroid/view/View;)V
    .locals 3

    .line 234
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "hour"

    .line 235
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "minute"

    .line 236
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    new-instance v0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;-><init>()V

    .line 238
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 239
    new-instance p1, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$5;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$5;-><init>(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->setOnTimeSetListener(Landroid/app/TimePickerDialog$OnTimeSetListener;)V

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "timePicker"

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$TimePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOnPaymentFieldChangedListener(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    return-void
.end method

.method public setProviderField(Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 5

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->providerField:Lru/rocketbank/core/model/provider/ProviderField;

    .line 91
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getDate_format()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_format:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "time"

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewTime:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "time"

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "datetime"

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setValue(III)V

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setTime(II)V

    return-void
.end method

.method public setValue(III)V
    .locals 6

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    const-string v0, "datetime"

    .line 116
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->providerField:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v3}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "date"

    iget-object v4, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->providerField:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v4}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p3, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "%s %04d"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v4}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v4

    aget-object p2, v4, p2

    aput-object p2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v4, "%d %s %04d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v3

    sget-object p3, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {p3}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object p3

    aget-object p2, p3, p2

    aput-object p2, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->_listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->providerField:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-interface {p1, p2, p0}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;->onPaymentFieldChanged(Lru/rocketbank/core/model/provider/ProviderField;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V

    :cond_2
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showKeyboard()V
    .locals 0

    return-void
.end method
