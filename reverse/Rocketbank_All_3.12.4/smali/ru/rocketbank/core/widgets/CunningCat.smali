.class public final Lru/rocketbank/core/widgets/CunningCat;
.super Landroid/widget/ImageView;
.source "CunningCat.kt"


# instance fields
.field private frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2046
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CunningCat;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080236

    .line 2047
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CunningCat;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3046
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CunningCat;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080236

    .line 3047
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CunningCat;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4046
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CunningCat;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080236

    .line 4047
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CunningCat;->setImageResource(I)V

    :cond_0
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

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5046
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CunningCat;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080236

    .line 5047
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/CunningCat;->setImageResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final resetAnimation()V
    .locals 7

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CunningCat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1052
    new-instance v1, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    invoke-direct {v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>()V

    const/4 v2, 0x0

    .line 1054
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ltz v3, :cond_1

    .line 1055
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1056
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    .line 1058
    invoke-virtual {v1, v5, v6}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/CunningCat;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CunningCat;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAnimationDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    iput-object v0, p0, Lru/rocketbank/core/widgets/CunningCat;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/widgets/CunningCat;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0, v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setOneShot(Z)V

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/widgets/CunningCat;->frameAnimation:Lru/rocketbank/core/widgets/RocketAnimationDrawable;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->start()V

    return-void
.end method
