.class final Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;
.super Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;
.source "RocketAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimationState"
.end annotation


# instance fields
.field private mDurations:[I

.field private mOneShot:Z


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Lru/rocketbank/core/widgets/RocketAnimationDrawable;Landroid/content/res/Resources;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;-><init>(Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;Lru/rocketbank/core/widgets/DrawableContainer;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 323
    iget-object p2, p1, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    .line 324
    iget-boolean p1, p1, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mOneShot:Z

    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mOneShot:Z

    return-void

    .line 1707
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 326
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mOneShot:Z

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)[I
    .locals 0

    .line 315
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    return-object p0
.end method

.method static synthetic access$002(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;[I)[I
    .locals 0

    .line 315
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    return-object p1
.end method

.method static synthetic access$100(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mOneShot:Z

    return p0
.end method

.method static synthetic access$102(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Z)Z
    .locals 0

    .line 315
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mOneShot:Z

    return p1
.end method


# virtual methods
.method public final addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .line 2681
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 2683
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    .line 2684
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->growArray(II)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2687
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2688
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mOwner:Lru/rocketbank/core/widgets/DrawableContainer;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2690
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 2691
    iget v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/2addr v3, v1

    iput v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 2692
    iget v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 2693
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    const/4 p1, 0x0

    .line 2695
    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 2696
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 2697
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 345
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    aput p2, p1, v0

    return-void
.end method

.method public final growArray(II)V
    .locals 2

    .line 350
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 351
    new-array p2, p2, [I

    .line 352
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->mDurations:[I

    return-void
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 333
    new-instance v0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Landroid/content/res/Resources;B)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 338
    new-instance v0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Landroid/content/res/Resources;B)V

    return-object v0
.end method
