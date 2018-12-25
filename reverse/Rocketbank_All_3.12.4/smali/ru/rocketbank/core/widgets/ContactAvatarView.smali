.class public Lru/rocketbank/core/widgets/ContactAvatarView;
.super Landroid/widget/FrameLayout;
.source "ContactAvatarView.java"


# instance fields
.field private background:Landroid/widget/ImageView;

.field private image:Landroid/widget/ImageView;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->init()V

    .line 33
    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/ContactAvatarView;->applyAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->init()V

    .line 39
    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/ContactAvatarView;->applyAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/R$styleable;->ContactAvatarView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    :try_start_0
    sget v0, Lru/rocketbank/core/R$styleable;->ContactAvatarView_textSize:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->text:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static colorFromString(Ljava/lang/String;)I
    .locals 2

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, -0x777778

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/lit8 p0, p0, 0xe

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const-string p0, "#656d78"

    .line 130
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1
    const-string p0, "#ccd0d9"

    .line 128
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    const-string p0, "#ec87bf"

    .line 126
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_3
    const-string p0, "#ac92ed"

    .line 124
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_4
    const-string p0, "#5d9cec"

    .line 122
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_5
    const-string p0, "#4fc0e8"

    .line 120
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_6
    const-string p0, "#48cfae"

    .line 118
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_7
    const-string p0, "#a0d468"

    .line 116
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    const-string p0, "#ffce55"

    .line 114
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_9
    const-string p0, "#fb6e52"

    .line 112
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_a
    const-string p0, "#ed5564"

    .line 110
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01ce

    invoke-static {v0, v1, p0}, Lru/rocketbank/core/widgets/ContactAvatarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090069

    .line 44
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/ContactAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->background:Landroid/widget/ImageView;

    const v0, 0x7f0901c7

    .line 45
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/ContactAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->image:Landroid/widget/ImageView;

    const v0, 0x7f090381

    .line 46
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/ContactAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->text:Landroid/widget/TextView;

    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 89
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/core/widgets/ContactAvatarView;->colorFromString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 91
    iget-object v1, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->background:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, ""

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final setContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/ContactAvatarView;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object p1, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    iget-object p2, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->image:Landroid/widget/ImageView;

    const v0, 0x7f06024b

    invoke-virtual {p1, p2, p3, v0}, Lru/rocketbank/core/utils/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public final setContact(Lru/rocketbank/core/model/contact/Contact;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lru/rocketbank/core/widgets/ContactAvatarView;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getAvatar()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f06024b

    if-eqz p1, :cond_0

    .line 82
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/ContactAvatarView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
