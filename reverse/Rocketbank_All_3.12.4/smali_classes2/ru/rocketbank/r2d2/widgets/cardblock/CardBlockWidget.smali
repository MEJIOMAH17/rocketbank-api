.class public Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;
.super Landroid/widget/FrameLayout;
.source "CardBlockWidget.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;
    }
.end annotation


# instance fields
.field private imageViewBlockButton:Landroid/widget/ImageView;

.field private listener:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06025d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->setBackgroundColor(I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01cb

    const/4 p3, 0x1

    .line 37
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09041d

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    .line 41
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    new-instance p2, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$1;-><init>(Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    new-instance p2, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$2;-><init>(Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->onBlockButtonClick()V

    return-void
.end method

.method private onBlockButtonClick()V
    .locals 9

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    .line 71
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 74
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 78
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x190

    .line 79
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    iget-object v4, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->imageViewBlockButton:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v4, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 82
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 85
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 87
    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 90
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 92
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

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


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->listener:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->listener:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;->onBlockRequest()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public setOnBlockRequestListener(Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;->listener:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$OnBlockRequestListener;

    return-void
.end method
