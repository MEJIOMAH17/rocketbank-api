.class public Lru/rocketbank/core/widgets/RocketNumpadButton;
.super Landroid/widget/FrameLayout;
.source "RocketNumpadButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _number:I

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketNumpadButton;->setClickable(Z)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c019e

    .line 23
    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0903be

    .line 25
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketNumpadButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 26
    invoke-virtual {v1, p0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget-object v1, Lru/rocketbank/core/R$styleable;->RocketNumpadButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    sget p2, Lru/rocketbank/core/R$styleable;->RocketNumpadButton_number:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lru/rocketbank/core/widgets/RocketNumpadButton;->_number:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketNumpadButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 42
    iget p2, p0, Lru/rocketbank/core/widgets/RocketNumpadButton;->_number:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 46
    iget v0, p0, Lru/rocketbank/core/widgets/RocketNumpadButton;->_number:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpadButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpadButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setOnPressed(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpadButton;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
