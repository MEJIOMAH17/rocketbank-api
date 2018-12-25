.class public Lru/rocketbank/r2d2/payment/RocketPaymentEditText;
.super Landroid/widget/LinearLayout;
.source "RocketPaymentEditText.java"

# interfaces
.implements Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;,
        Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;
    }
.end annotation


# static fields
.field public static final STATUS_FORMAT_CORRECT:I = 0x1

.field public static final STATUS_FORMAT_WRONG:I = 0x2


# instance fields
.field private _status:I

.field private editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

.field private field:Lru/rocketbank/core/model/provider/ProviderField;

.field private formattedValue:Ljava/lang/String;

.field private hasFatalRegexpError:Z

.field private listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

.field private pickContact:Landroid/view/View;

.field private pickContactListener:Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;

.field private regexp:Ljava/util/regex/Pattern;

.field private textViewError:Lru/rocketbank/core/widgets/RocketTextView;

.field private textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

.field private textViewPrefix:Lru/rocketbank/core/widgets/RocketTextView;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 33
    iput p2, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->_status:I

    .line 58
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->inflateLayout(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findWidgets()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->pickContactListener:Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/core/widgets/RocketEditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->formattedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->formattedValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/util/regex/Pattern;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->regexp:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setStatus(I)V

    return-void
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->update()V

    return-void
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    return-object p0
.end method

.method static synthetic access$900(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/core/model/provider/ProviderField;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->field:Lru/rocketbank/core/model/provider/ProviderField;

    return-object p0
.end method

.method private findWidgets()V
    .locals 2

    const v0, 0x7f090423

    .line 89
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewPrefix:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0903a6

    .line 90
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090424

    .line 91
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    const v0, 0x7f09039d

    .line 92
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewError:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0902b1

    .line 93
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->pickContact:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->pickContact:Landroid/view/View;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$2;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V

    .line 96
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V

    .line 102
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private inflateLayout(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c01d0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private setStatus(I)V
    .locals 0

    .line 155
    iput p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->_status:I

    return-void
.end method

.method private update()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080296

    goto :goto_0

    :cond_0
    const v0, 0x7f080294

    .line 160
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setError(Ljava/lang/String;)V

    return-void
.end method

.method public getParameterValue()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFatalRegexpError()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->hasFatalRegexpError:Z

    return v0
.end method

.method public isMandatory()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->field:Lru/rocketbank/core/model/provider/ProviderField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/ProviderField;->isMandatory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 6

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->value:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 171
    :goto_0
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->regexp:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_2

    iget v3, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->_status:I

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    .line 172
    :goto_2
    iget-object v4, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v4}, Lru/rocketbank/core/model/provider/ProviderField;->getPattern()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->formattedValue:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->formattedValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v5}, Lru/rocketbank/core/model/provider/ProviderField;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v2

    .line 173
    :goto_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->isMandatory()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    return v1

    :cond_6
    :goto_5
    return v2
.end method

.method public setError(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewError:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewError:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewError:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 74
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->update()V

    return-void
.end method

.method public setField(Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 2

    .line 193
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->field:Lru/rocketbank/core/model/provider/ProviderField;

    .line 194
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setLabel(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getPlaceholder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setHint(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getKeyboard_kind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getField_kind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setKeyboardKind(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setPrefix(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iput-boolean v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->hasFatalRegexpError:Z

    .line 200
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getRegexp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setRegexp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->hasFatalRegexpError:Z

    .line 205
    :goto_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getPattern()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Lru/rocketbank/core/model/provider/ProviderField;)V

    goto :goto_1

    .line 213
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$4;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V

    .line 220
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    new-instance v1, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Lrx/functions/Func1;)V

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    new-instance v0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected setHint(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setKeyboardKind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "phone"

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setRawInputType(I)V

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->pickContact:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p2, "numbers"

    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setRawInputType(I)V

    return-void

    :cond_1
    const-string p2, "numbersdot"

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 130
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setRawInputType(I)V

    return-void
.end method

.method protected setLabel(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewLabel:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnPaymentFieldChangedListener(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->listener:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    return-void
.end method

.method public setPickContactListener(Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->pickContactListener:Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;

    return-void
.end method

.method protected setPrefix(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewPrefix:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->textViewPrefix:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setRegexp(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->regexp:Ljava/util/regex/Pattern;

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->requestFocusFromTouch()Z

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->show(Landroid/widget/EditText;)V

    return-void
.end method
