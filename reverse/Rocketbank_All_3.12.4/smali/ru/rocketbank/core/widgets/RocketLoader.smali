.class public final Lru/rocketbank/core/widgets/RocketLoader;
.super Landroid/widget/FrameLayout;
.source "RocketLoader.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;
    }
.end annotation


# instance fields
.field private error:Z

.field private frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

.field private loaderImageView:Landroid/widget/ImageView;

.field private onEndAnimationListener:Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

.field private rocketAnimationDrawableError:Landroid/graphics/drawable/AnimationDrawable;

.field private rocketAnimationDrawableSucces:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

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

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketLoader;->initLoader$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method private final initLoader$51fe1fdb(Landroid/content/Context;)V
    .locals 2

    .line 69
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->loaderImageView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->loaderImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f08020d

    .line 72
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableSucces:Landroid/graphics/drawable/AnimationDrawable;

    const v0, 0x7f08020b

    .line 73
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableError:Landroid/graphics/drawable/AnimationDrawable;

    .line 75
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketLoader;->loaderImageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketLoader;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketLoader;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final hasError()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->error:Z

    return v0
.end method

.method public final resetAnimation()V
    .locals 7

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->error:Z

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08020c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 1106
    new-instance v2, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    invoke-direct {v2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>()V

    .line 1108
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    move v4, v0

    .line 1109
    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1110
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    .line 1112
    invoke-virtual {v2, v5, v6}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->loaderImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->loaderImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAnimationDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v1, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    iput-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    .line 38
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object v2, p0

    check-cast v2, Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setEndListener(Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;)V

    .line 39
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setOneShot(Z)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->start()V

    return-void
.end method

.method public final setError()V
    .locals 5

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->error:Z

    .line 84
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableError:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_4

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableError:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableError:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->addEndingFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eq v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_4
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->swithEnding()V

    return-void
.end method

.method public final setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketLoader;->onEndAnimationListener:Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

    return-void
.end method

.method public final setSuccess()V
    .locals 5

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->error:Z

    .line 94
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableSucces:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 95
    :goto_0
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableSucces:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketLoader;->rocketAnimationDrawableSucces:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->addEndingFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eq v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_4
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->swithEnding()V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->onEndAnimationListener:Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketLoader;->onEndAnimationListener:Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-boolean v1, p0, Lru/rocketbank/core/widgets/RocketLoader;->error:Z

    invoke-interface {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;->animationEnd(Z)V

    :cond_1
    return-void
.end method
