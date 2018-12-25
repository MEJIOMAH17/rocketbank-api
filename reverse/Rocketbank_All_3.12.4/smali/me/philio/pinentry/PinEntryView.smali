.class public Lme/philio/pinentry/PinEntryView;
.super Landroid/view/ViewGroup;
.source "PinEntryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/philio/pinentry/PinEntryView$DigitView;,
        Lme/philio/pinentry/PinEntryView$SavedState;
    }
.end annotation


# instance fields
.field private accentColor:I

.field private accentType:I

.field private accentWidth:I

.field private digitBackground:I

.field private digitElevation:I

.field private digitHeight:I

.field private digitSpacing:I

.field private digitTextColor:I

.field private digitTextSize:I

.field private digitWidth:I

.field private digits:I

.field private editText:Landroid/widget/EditText;

.field private inputType:I

.field private mask:Ljava/lang/String;

.field private onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lme/philio/pinentry/PinEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lme/philio/pinentry/PinEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "*"

    .line 86
    iput-object p1, p0, Lme/philio/pinentry/PinEntryView;->mask:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lme/philio/pinentry/R$styleable;->PinEntryView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    sget p2, Lme/philio/pinentry/R$styleable;->PinEntryView_numDigits:I

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    .line 112
    sget p2, Lme/philio/pinentry/R$styleable;->PinEntryView_pinInputType:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lme/philio/pinentry/PinEntryView;->inputType:I

    .line 113
    sget p2, Lme/philio/pinentry/R$styleable;->PinEntryView_accentType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lme/philio/pinentry/PinEntryView;->accentType:I

    .line 116
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 117
    sget v1, Lme/philio/pinentry/R$styleable;->PinEntryView_digitWidth:I

    const/high16 v2, 0x42480000    # 50.0f

    const/4 v3, 0x1

    .line 118
    invoke-static {v3, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 117
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/philio/pinentry/PinEntryView;->digitWidth:I

    .line 119
    sget v1, Lme/philio/pinentry/R$styleable;->PinEntryView_digitHeight:I

    .line 120
    invoke-static {v3, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/philio/pinentry/PinEntryView;->digitHeight:I

    .line 121
    sget v1, Lme/philio/pinentry/R$styleable;->PinEntryView_digitSpacing:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 122
    invoke-static {v3, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 121
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/philio/pinentry/PinEntryView;->digitSpacing:I

    .line 123
    sget v1, Lme/philio/pinentry/R$styleable;->PinEntryView_digitTextSize:I

    const/high16 v2, 0x41700000    # 15.0f

    .line 124
    invoke-static {p3, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 123
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lme/philio/pinentry/PinEntryView;->digitTextSize:I

    .line 125
    sget p3, Lme/philio/pinentry/R$styleable;->PinEntryView_accentWidth:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 126
    invoke-static {v3, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 125
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/philio/pinentry/PinEntryView;->accentWidth:I

    .line 127
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    .line 128
    sget p2, Lme/philio/pinentry/R$styleable;->PinEntryView_digitElevation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    .line 132
    :cond_0
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 135
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x1010054

    .line 136
    invoke-virtual {p2, v0, p3, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 137
    sget v0, Lme/philio/pinentry/R$styleable;->PinEntryView_digitBackground:I

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lme/philio/pinentry/PinEntryView;->digitBackground:I

    .line 141
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x1010036

    .line 142
    invoke-virtual {p2, v0, p3, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    sget v0, Lme/philio/pinentry/R$styleable;->PinEntryView_digitTextColor:I

    iget v1, p3, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_0

    :cond_1
    iget p3, p3, Landroid/util/TypedValue;->data:I

    .line 143
    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lme/philio/pinentry/PinEntryView;->digitTextColor:I

    .line 148
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x7f04007e

    .line 149
    invoke-virtual {p2, v0, p3, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 150
    sget p2, Lme/philio/pinentry/R$styleable;->PinEntryView_pinAccentColor:I

    iget v0, p3, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p3, Landroid/util/TypedValue;->data:I

    .line 150
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/philio/pinentry/PinEntryView;->accentColor:I

    .line 155
    sget p2, Lme/philio/pinentry/R$styleable;->PinEntryView_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 157
    iput-object p2, p0, Lme/philio/pinentry/PinEntryView;->mask:Ljava/lang/String;

    .line 161
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-direct {p0}, Lme/philio/pinentry/PinEntryView;->addViews()V

    return-void
.end method

.method static synthetic access$000(Lme/philio/pinentry/PinEntryView;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lme/philio/pinentry/PinEntryView;)I
    .locals 0

    .line 46
    iget p0, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    return p0
.end method

.method static synthetic access$200(Lme/philio/pinentry/PinEntryView;)I
    .locals 0

    .line 46
    iget p0, p0, Lme/philio/pinentry/PinEntryView;->accentType:I

    return p0
.end method

.method static synthetic access$300(Lme/philio/pinentry/PinEntryView;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lme/philio/pinentry/PinEntryView;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lme/philio/pinentry/PinEntryView;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lme/philio/pinentry/PinEntryView;->mask:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lme/philio/pinentry/PinEntryView;)I
    .locals 0

    .line 46
    iget p0, p0, Lme/philio/pinentry/PinEntryView;->accentColor:I

    return p0
.end method

.method static synthetic access$700(Lme/philio/pinentry/PinEntryView;)I
    .locals 0

    .line 46
    iget p0, p0, Lme/philio/pinentry/PinEntryView;->accentWidth:I

    return p0
.end method

.method private addViews()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 297
    :goto_0
    iget v2, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    if-ge v1, v2, :cond_1

    .line 298
    new-instance v2, Lme/philio/pinentry/PinEntryView$DigitView;

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lme/philio/pinentry/PinEntryView$DigitView;-><init>(Lme/philio/pinentry/PinEntryView;Landroid/content/Context;)V

    .line 299
    iget v3, p0, Lme/philio/pinentry/PinEntryView;->digitWidth:I

    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setWidth(I)V

    .line 300
    iget v3, p0, Lme/philio/pinentry/PinEntryView;->digitHeight:I

    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setHeight(I)V

    .line 301
    iget v3, p0, Lme/philio/pinentry/PinEntryView;->digitBackground:I

    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setBackgroundResource(I)V

    .line 302
    iget v3, p0, Lme/philio/pinentry/PinEntryView;->digitTextColor:I

    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setTextColor(I)V

    .line 303
    iget v3, p0, Lme/philio/pinentry/PinEntryView;->digitTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setTextSize(F)V

    const/16 v3, 0x11

    .line 304
    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setGravity(I)V

    .line 305
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 306
    iget v3, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lme/philio/pinentry/PinEntryView$DigitView;->setElevation(F)V

    .line 308
    :cond_0
    invoke-virtual {p0, v2}, Lme/philio/pinentry/PinEntryView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    .line 313
    iget-object v1, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 314
    iget-object v1, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 315
    iget-object v1, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 316
    iget-object v1, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 317
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    iget v1, p0, Lme/philio/pinentry/PinEntryView;->inputType:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 318
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 319
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    new-instance v1, Lme/philio/pinentry/PinEntryView$1;

    invoke-direct {v1, p0}, Lme/philio/pinentry/PinEntryView$1;-><init>(Lme/philio/pinentry/PinEntryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    new-instance v1, Lme/philio/pinentry/PinEntryView$2;

    invoke-direct {v1, p0}, Lme/philio/pinentry/PinEntryView$2;-><init>(Lme/philio/pinentry/PinEntryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 367
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lme/philio/pinentry/PinEntryView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final clearText()V
    .locals 2

    .line 289
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 238
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public final getText()Landroid/text/Editable;
    .locals 1

    .line 270
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 p1, 0x0

    move p2, p1

    .line 191
    :goto_0
    iget p3, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    if-ge p2, p3, :cond_1

    .line 192
    invoke-virtual {p0, p2}, Lme/philio/pinentry/PinEntryView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 193
    iget p4, p0, Lme/philio/pinentry/PinEntryView;->digitWidth:I

    mul-int/2addr p4, p2

    if-lez p2, :cond_0

    iget p5, p0, Lme/philio/pinentry/PinEntryView;->digitSpacing:I

    mul-int/2addr p5, p2

    goto :goto_1

    :cond_0
    move p5, p1

    :goto_1
    add-int/2addr p4, p5

    .line 195
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingLeft()I

    move-result p5

    add-int/2addr p5, p4

    iget v0, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    add-int/2addr p5, v0

    .line 196
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 197
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p4, v1

    iget v1, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    add-int/2addr p4, v1

    iget v1, p0, Lme/philio/pinentry/PinEntryView;->digitWidth:I

    add-int/2addr p4, v1

    .line 198
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lme/philio/pinentry/PinEntryView;->digitHeight:I

    add-int/2addr v1, v2

    .line 194
    invoke-virtual {p3, p5, v0, p4, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iget p2, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    invoke-virtual {p0, p2}, Lme/philio/pinentry/PinEntryView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p1, p4, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 175
    iget p1, p0, Lme/philio/pinentry/PinEntryView;->digitWidth:I

    iget p2, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    mul-int/2addr p1, p2

    iget p2, p0, Lme/philio/pinentry/PinEntryView;->digitSpacing:I

    iget v0, p0, Lme/philio/pinentry/PinEntryView;->digits:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 177
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p2, v0

    iget v0, p0, Lme/philio/pinentry/PinEntryView;->digitHeight:I

    .line 178
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lme/philio/pinentry/PinEntryView;->digitElevation:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 176
    invoke-virtual {p0, p2, v0}, Lme/philio/pinentry/PinEntryView;->setMeasuredDimension(II)V

    .line 180
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    .line 183
    :goto_0
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lme/philio/pinentry/PinEntryView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 230
    check-cast p1, Lme/philio/pinentry/PinEntryView$SavedState;

    .line 231
    invoke-virtual {p1}, Lme/philio/pinentry/PinEntryView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 232
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    iget-object v1, p1, Lme/philio/pinentry/PinEntryView$SavedState;->editTextValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    iget-object p1, p1, Lme/philio/pinentry/PinEntryView$SavedState;->editTextValue:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 222
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 223
    new-instance v1, Lme/philio/pinentry/PinEntryView$SavedState;

    invoke-direct {v1, v0}, Lme/philio/pinentry/PinEntryView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 224
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lme/philio/pinentry/PinEntryView$SavedState;->editTextValue:Ljava/lang/String;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object p1, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 212
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 p1, 0x1

    return p1

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lme/philio/pinentry/PinEntryView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lme/philio/pinentry/PinEntryView;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
