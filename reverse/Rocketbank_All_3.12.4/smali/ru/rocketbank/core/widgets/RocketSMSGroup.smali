.class public Lru/rocketbank/core/widgets/RocketSMSGroup;
.super Landroid/widget/RelativeLayout;
.source "RocketSMSGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;
    }
.end annotation


# instance fields
.field private _listenerOnCodeInput:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

.field private _listenerOnCodeReset:Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;

.field private error:Lru/rocketbank/core/widgets/RocketTextView;

.field private fingerPrintImage:Landroid/widget/ImageView;

.field private numpad:Lru/rocketbank/core/widgets/RocketNumpad;

.field private smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

.field private swirlView:Lcom/mattprecious/swirl/SwirlView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lru/rocketbank/core/R$styleable;->RocketSMSGroup:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 35
    sget v0, Lru/rocketbank/core/R$styleable;->RocketSMSGroup_group_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 37
    sget v0, Lru/rocketbank/core/R$styleable;->RocketSMSGroup_allow_code_reset:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 38
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01a1

    .line 41
    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f090327

    .line 43
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketSMSInput;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    .line 44
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    new-instance p2, Lru/rocketbank/core/widgets/RocketSMSGroup$1;

    invoke-direct {p2, p0}, Lru/rocketbank/core/widgets/RocketSMSGroup$1;-><init>(Lru/rocketbank/core/widgets/RocketSMSGroup;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketSMSInput;->setOnCodeInputListener(Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;)V

    const p1, 0x7f090285

    .line 56
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketNumpad;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    .line 57
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    new-instance p2, Lru/rocketbank/core/widgets/RocketSMSGroup$2;

    invoke-direct {p2, p0}, Lru/rocketbank/core/widgets/RocketSMSGroup$2;-><init>(Lru/rocketbank/core/widgets/RocketSMSGroup;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketNumpad;->setOnNumberListener(Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;)V

    const p1, 0x7f090179

    .line 91
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->fingerPrintImage:Landroid/widget/ImageView;

    const p1, 0x7f090165

    .line 92
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->error:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090178

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mattprecious/swirl/SwirlView;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    .line 95
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    sget-object p2, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    invoke-virtual {p1, p2, v1}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 99
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketNumpad;->setResetEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSInput;
    .locals 0

    .line 16
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->_listenerOnCodeInput:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketNumpad;
    .locals 0

    .line 16
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->_listenerOnCodeReset:Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;

    return-object p0
.end method


# virtual methods
.method public final regroup()V
    .locals 2

    .line 152
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSInput;->regroup()V

    .line 153
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->numpad:Lru/rocketbank/core/widgets/RocketNumpad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketNumpad;->setEraseEnabled(Z)V

    return-void
.end method

.method public final setOff()V
    .locals 4

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    sget-object v2, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->fingerPrintImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->error:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOffImidiate()V
    .locals 4

    .line 113
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    sget-object v2, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->fingerPrintImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->error:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setOnCodeInputListener(Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->_listenerOnCodeInput:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    return-void
.end method

.method public final setOnCodeResetListener(Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->_listenerOnCodeReset:Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;

    return-void
.end method

.method public final setTouchError(Ljava/lang/String;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    sget-object v2, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->fingerPrintImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->error:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->error:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTouchWaiting()V
    .locals 3

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->ON:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->fingerPrintImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup;->error:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method
