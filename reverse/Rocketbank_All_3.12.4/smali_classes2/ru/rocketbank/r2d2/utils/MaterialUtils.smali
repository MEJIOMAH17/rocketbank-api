.class public final Lru/rocketbank/r2d2/utils/MaterialUtils;
.super Ljava/lang/Object;
.source "MaterialUtils.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/utils/MaterialUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lru/rocketbank/r2d2/utils/MaterialUtils;

    invoke-direct {v0}, Lru/rocketbank/r2d2/utils/MaterialUtils;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/utils/MaterialUtils;->INSTANCE:Lru/rocketbank/r2d2/utils/MaterialUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRipple(Landroid/support/v7/graphics/Palette;FFIZ)Landroid/graphics/drawable/RippleDrawable;
    .locals 1

    const-string v0, "palette"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p3, "palette.vibrantSwatch!!"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(IF)I

    move-result p4

    goto/16 :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string p2, "palette.lightVibrantSwatch!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(IF)I

    move-result p4

    goto/16 :goto_0

    .line 30
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string p3, "palette.darkVibrantSwatch!!"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(IF)I

    move-result p4

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string p3, "palette.mutedSwatch!!"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(IF)I

    move-result p4

    goto :goto_0

    .line 35
    :cond_7
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    const-string p2, "palette.lightMutedSwatch!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(IF)I

    move-result p4

    goto :goto_0

    .line 38
    :cond_9
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 39
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    const-string p3, "palette.darkMutedSwatch!!"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(IF)I

    move-result p4

    .line 41
    :cond_b
    :goto_0
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p5, :cond_c

    .line 42
    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    const/4 p5, -0x1

    invoke-direct {p4, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_c
    move-object p4, p3

    :goto_1
    check-cast p4, Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-direct {p1, p2, p3, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public final modifyAlpha(IF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 56
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/utils/MaterialUtils;->modifyAlpha(II)I

    move-result p1

    return p1
.end method

.method public final modifyAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method
