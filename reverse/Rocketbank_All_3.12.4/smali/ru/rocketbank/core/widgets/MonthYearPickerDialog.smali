.class public final Lru/rocketbank/core/widgets/MonthYearPickerDialog;
.super Landroid/app/AlertDialog;
.source "MonthYearPickerDialog.java"


# instance fields
.field private final _picker:Lru/rocketbank/core/widgets/MonthYearPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c016f

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f090268

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/MonthYearPicker;

    iput-object p1, p0, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->_picker:Lru/rocketbank/core/widgets/MonthYearPicker;

    return-void
.end method


# virtual methods
.method public final getMonth()I
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->_picker:Lru/rocketbank/core/widgets/MonthYearPicker;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/MonthYearPicker;->getMonth()I

    move-result v0

    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->_picker:Lru/rocketbank/core/widgets/MonthYearPicker;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/MonthYearPicker;->getYear()I

    move-result v0

    return v0
.end method

.method public final setValue(II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPickerDialog;->_picker:Lru/rocketbank/core/widgets/MonthYearPicker;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/widgets/MonthYearPicker;->setValue(II)V

    return-void
.end method
