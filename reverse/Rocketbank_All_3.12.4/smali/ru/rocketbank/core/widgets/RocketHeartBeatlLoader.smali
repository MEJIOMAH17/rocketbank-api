.class public final Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;
.super Landroid/widget/FrameLayout;
.source "RocketHeartBeatlLoader.kt"


# instance fields
.field private frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

.field private loaderImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method private static convertFromDrawable(Landroid/graphics/drawable/AnimationDrawable;)Lru/rocketbank/core/widgets/RocketAnimationDrawable;
    .locals 5

    .line 60
    new-instance v0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    invoke-direct {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>()V

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 64
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .line 66
    invoke-virtual {v0, v3, v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final initLoader$51fe1fdb(Landroid/content/Context;)V
    .locals 2

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->loaderImageView:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->loaderImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->loaderImageView:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f0800dd

    .line 48
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->convertFromDrawable(Landroid/graphics/drawable/AnimationDrawable;)Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->loaderImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->loaderImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAnimationDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    .line 54
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setOneShot(Z)V

    .line 55
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->start()V

    :cond_7
    return-void
.end method
