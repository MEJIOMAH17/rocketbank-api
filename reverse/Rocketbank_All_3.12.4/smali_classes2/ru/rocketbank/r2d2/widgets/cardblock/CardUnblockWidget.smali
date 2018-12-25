.class public Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;
.super Landroid/widget/FrameLayout;
.source "CardUnblockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;
    }
.end annotation


# instance fields
.field private helpText:Landroid/widget/TextView;

.field private imageViewBlockButton:Landroid/widget/ImageView;

.field private listener:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;

.field private unblockText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06025e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->setBackgroundColor(I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01cc

    const/4 p3, 0x1

    .line 41
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09041d

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    new-instance p2, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$1;-><init>(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    new-instance p2, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$2;-><init>(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901b7

    .line 67
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->helpText:Landroid/widget/TextView;

    const p1, 0x7f090421

    .line 68
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->unblockText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->onBlockButtonClick()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->onCardUnlock()V

    return-void
.end method

.method private onBlockButtonClick()V
    .locals 9

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    .line 74
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 77
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 81
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x190

    .line 82
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v4, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v4, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 85
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 90
    new-instance v5, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$3;

    invoke-direct {v5, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$3;-><init>(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 115
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 117
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onCardUnlock()V
    .locals 1

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->listener:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->listener:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;

    invoke-interface {v0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;->onUnblockRequest()V

    :cond_0
    return-void
.end method


# virtual methods
.method public setIsPassportNeed(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->helpText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->unblockText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1104c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnUnblockRequestListener(Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;->listener:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget$OnUnblockRequestListener;

    return-void
.end method
