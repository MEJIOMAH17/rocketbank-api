.class public Lru/rocketbank/core/widgets/RocketSMSInput;
.super Landroid/widget/FrameLayout;
.source "RocketSMSInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;
    }
.end annotation


# instance fields
.field private _codeInputListener:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

.field private _drawableOff:Landroid/graphics/drawable/Drawable;

.field private _drawableOn:Landroid/graphics/drawable/Drawable;

.field private _enabled:Z

.field private _resourceIds:[I

.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_enabled:Z

    const-string v1, ""

    .line 23
    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    const/4 v1, 0x4

    .line 28
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_resourceIds:[I

    .line 30
    sget-object v1, Lru/rocketbank/core/R$styleable;->RocketSMSInput:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 32
    sget v1, Lru/rocketbank/core/R$styleable;->RocketSMSInput_small:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSMSInput;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f080214

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_drawableOn:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSMSInput;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f080215

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_drawableOff:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz v1, :cond_0

    const p2, 0x7f0c01a3

    goto :goto_0

    :cond_0
    const p2, 0x7f0c01a2

    .line 43
    :goto_0
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f09032a
        0x7f09032b
        0x7f09032c
        0x7f09032d
    .end array-data
.end method

.method private updateImagesSources()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_resourceIds:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/RocketSMSInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 49
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_drawableOn:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_drawableOff:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final appendNumber(I)V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_enabled:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSMSInput;->updateImagesSources()V

    .line 1054
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1055
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_codeInputListener:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    if-eqz p1, :cond_0

    .line 1056
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_codeInputListener:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;->onCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final disableSmsInput()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_enabled:Z

    return-void
.end method

.method public final regroup()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_enabled:Z

    const-string v0, ""

    .line 2083
    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    .line 2084
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSMSInput;->updateImagesSources()V

    return-void
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_enabled:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 1083
    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    .line 1084
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSMSInput;->updateImagesSources()V

    .line 76
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSMSInput;->updateImagesSources()V

    .line 2054
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2055
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_codeInputListener:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    if-eqz p1, :cond_0

    .line 2056
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_codeInputListener:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;->onCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setOnCodeInputListener(Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSInput;->_codeInputListener:Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    return-void
.end method
