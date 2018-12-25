.class public Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;
.super Landroid/widget/LinearLayout;
.source "ProgressRegistrationView.java"


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private step:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->step:I

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->step:I

    .line 32
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->step:I

    .line 37
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->step:I

    .line 43
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->init()V

    return-void
.end method

.method private getDrawable(IZ)I
    .locals 2

    const v0, 0x7f080194

    const v1, 0x7f080198

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_4

    return v1

    :pswitch_0
    if-eqz p2, :cond_0

    const p1, 0x7f08019b

    return p1

    :cond_0
    const p1, 0x7f080197

    return p1

    :pswitch_1
    if-eqz p2, :cond_1

    const p1, 0x7f08019a

    return p1

    :cond_1
    const p1, 0x7f080196

    return p1

    :pswitch_2
    if-eqz p2, :cond_2

    const p1, 0x7f080199

    return p1

    :cond_2
    const p1, 0x7f080195

    return p1

    :pswitch_3
    if-eqz p2, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setOrientation(I)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->removeAllViews()V

    return-void
.end method


# virtual methods
.method public getStep()I
    .locals 1

    .line 94
    iget v0, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->step:I

    return v0
.end method

.method public setStep(I)V
    .locals 5

    .line 53
    iput p1, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->step:I

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    .line 57
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ge v1, p1, :cond_0

    const v3, 0x7f080193

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    .line 62
    invoke-direct {p0, v1, v3}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->getDrawable(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    if-le v1, p1, :cond_2

    .line 65
    invoke-direct {p0, v1, v0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->getDrawable(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :cond_2
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->addView(Landroid/view/View;)V

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 69
    iget-object v2, p0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0196

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ge v1, p1, :cond_3

    const v4, 0x7f060200

    goto :goto_1

    :cond_3
    const v4, 0x7f060095

    :goto_1
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->invalidate()V

    return-void
.end method
