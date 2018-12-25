.class public Lru/rocketbank/core/widgets/MosenergoPicker;
.super Landroid/widget/FrameLayout;
.source "MosenergoPicker.java"


# instance fields
.field private _fields:Lru/rocketbank/core/model/provider/ProviderValues;

.field private final _numberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0170

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f090269

    .line 22
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/MosenergoPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public final setFields(Lru/rocketbank/core/model/provider/ProviderValues;)V
    .locals 3

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_fields:Lru/rocketbank/core/model/provider/ProviderValues;

    .line 28
    iget-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 29
    iget-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_fields:Lru/rocketbank/core/model/provider/ProviderValues;

    iget-object v1, v1, Lru/rocketbank/core/model/provider/ProviderValues;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 30
    iget-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_fields:Lru/rocketbank/core/model/provider/ProviderValues;

    iget-object v1, v1, Lru/rocketbank/core/model/provider/ProviderValues;->labels:Ljava/util/List;

    iget-object v2, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_fields:Lru/rocketbank/core/model/provider/ProviderValues;

    iget-object v2, v2, Lru/rocketbank/core/model/provider/ProviderValues;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public final setIndex(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/widgets/MosenergoPicker;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method
