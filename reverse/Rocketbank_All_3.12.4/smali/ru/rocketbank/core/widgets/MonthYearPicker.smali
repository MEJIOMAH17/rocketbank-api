.class public Lru/rocketbank/core/widgets/MonthYearPicker;
.super Landroid/widget/FrameLayout;
.source "MonthYearPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field private _month:I

.field private final _pickerMonth:Landroid/widget/NumberPicker;

.field private final _pickerYear:Landroid/widget/NumberPicker;

.field private _year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    const v0, 0x7f0c016e

    .line 25
    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_month:I

    const v0, 0x7f090267

    .line 31
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/MonthYearPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    sget-object v1, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v1}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    iget v1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_month:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 38
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    .line 39
    iget p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    add-int/lit8 p1, p1, -0x64

    .line 40
    iget p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    add-int/lit8 p2, p2, 0x64

    const v0, 0x7f090429

    .line 42
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/MonthYearPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 44
    iget-object p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 45
    iget-object p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    iget p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 46
    iget-object p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    invoke-virtual {p1, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void
.end method


# virtual methods
.method public final getMonth()I
    .locals 1

    .line 54
    iget v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_month:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 50
    iget v0, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    return v0
.end method

.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 0

    .line 69
    iget-object p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    if-ne p1, p2, :cond_0

    .line 70
    iput p3, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_month:I

    return-void

    .line 71
    :cond_0
    iget-object p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    if-ne p1, p2, :cond_1

    .line 72
    iput p3, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    :cond_1
    return-void
.end method

.method public final setValue(II)V
    .locals 0

    .line 58
    iput p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_month:I

    .line 59
    iput p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    .line 61
    iget-object p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerYear:Landroid/widget/NumberPicker;

    iget p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_year:I

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 62
    iget-object p1, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_pickerMonth:Landroid/widget/NumberPicker;

    iget p2, p0, Lru/rocketbank/core/widgets/MonthYearPicker;->_month:I

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method
