.class public final Landroid/support/v7/graphics/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/Palette$Filter;,
        Landroid/support/v7/graphics/Palette$Builder;,
        Landroid/support/v7/graphics/Palette$Swatch;,
        Landroid/support/v7/graphics/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;


# instance fields
.field private final mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v7/graphics/Target;",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 956
    new-instance v0, Landroid/support/v7/graphics/Palette$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/Palette$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Target;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 157
    iput-object p2, p0, Landroid/support/v7/graphics/Palette;->mTargets:Ljava/util/List;

    .line 159
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 160
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    .line 162
    invoke-direct {p0}, Landroid/support/v7/graphics/Palette;->findDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-void
.end method

.method private findDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 6

    .line 423
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 424
    iget-object v4, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/graphics/Palette$Swatch;

    .line 425
    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 427
    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1

    .line 100
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method final generate()V
    .locals 20

    move-object/from16 v0, p0

    .line 352
    iget-object v1, v0, Landroid/support/v7/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_e

    .line 353
    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/graphics/Target;

    const/4 v5, 0x0

    move v6, v2

    move v7, v5

    :goto_1
    const/4 v8, 0x3

    if-ge v6, v8, :cond_1

    .line 7243
    iget-object v8, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v8, v8, v6

    cmpl-float v9, v8, v5

    if-lez v9, :cond_0

    add-float/2addr v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    cmpl-float v6, v7, v5

    if-eqz v6, :cond_3

    move v6, v2

    :goto_2
    if-ge v6, v8, :cond_3

    .line 7250
    iget-object v9, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v9, v9, v6

    cmpl-float v9, v9, v5

    if-lez v9, :cond_2

    .line 7251
    iget-object v9, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v10, v9, v6

    div-float/2addr v10, v7

    aput v10, v9, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 355
    :cond_3
    iget-object v6, v0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    const/4 v7, 0x0

    .line 7373
    iget-object v8, v0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v10, v5

    move-object v9, v7

    move v7, v2

    :goto_3
    const/4 v11, 0x1

    if-ge v7, v8, :cond_c

    .line 7374
    iget-object v12, v0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/graphics/Palette$Swatch;

    .line 7389
    invoke-virtual {v12}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v13

    .line 7390
    aget v14, v13, v11

    .line 8139
    iget-object v15, v4, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aget v15, v15, v2

    cmpl-float v14, v14, v15

    const/4 v15, 0x2

    if-ltz v14, :cond_4

    .line 7390
    aget v14, v13, v11

    .line 8155
    iget-object v11, v4, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aget v11, v11, v15

    cmpg-float v11, v14, v11

    if-gtz v11, :cond_4

    .line 7390
    aget v11, v13, v15

    .line 8163
    iget-object v14, v4, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aget v14, v14, v2

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_4

    .line 7391
    aget v11, v13, v15

    .line 8179
    iget-object v13, v4, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aget v13, v13, v15

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_4

    .line 7391
    iget-object v11, v0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 7392
    invoke-virtual {v12}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    move v11, v2

    :goto_4
    if-eqz v11, :cond_a

    .line 8396
    invoke-virtual {v12}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v11

    .line 8402
    iget-object v13, v0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v13, :cond_5

    iget-object v13, v0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v13}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v13

    goto :goto_5

    :cond_5
    const/4 v13, 0x1

    .line 9192
    :goto_5
    iget-object v14, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v14, v14, v2

    cmpl-float v14, v14, v5

    const/high16 v17, 0x3f800000    # 1.0f

    if-lez v14, :cond_6

    .line 10192
    iget-object v14, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v14, v14, v2

    const/16 v16, 0x1

    .line 8405
    aget v18, v11, v16

    .line 11147
    iget-object v2, v4, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aget v2, v2, v16

    sub-float v2, v18, v2

    .line 8406
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v17, v2

    mul-float/2addr v2, v14

    goto :goto_6

    :cond_6
    const/16 v16, 0x1

    move v2, v5

    .line 11205
    :goto_6
    iget-object v14, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v14, v14, v16

    cmpl-float v14, v14, v5

    if-lez v14, :cond_7

    .line 12205
    iget-object v14, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v14, v14, v16

    .line 8409
    aget v11, v11, v15

    .line 13171
    iget-object v5, v4, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aget v5, v5, v16

    sub-float/2addr v11, v5

    .line 8410
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v17, v17, v5

    mul-float v5, v14, v17

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    .line 13216
    :goto_7
    iget-object v11, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v11, v11, v15

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_8

    .line 14216
    iget-object v11, v4, Landroid/support/v7/graphics/Target;->mWeights:[F

    aget v11, v11, v15

    .line 8414
    invoke-virtual {v12}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v15

    int-to-float v15, v15

    int-to-float v13, v13

    div-float/2addr v15, v13

    mul-float/2addr v11, v15

    goto :goto_8

    :cond_8
    move v11, v14

    :goto_8
    add-float/2addr v2, v5

    add-float/2addr v2, v11

    if-eqz v9, :cond_9

    cmpl-float v5, v2, v10

    if-lez v5, :cond_b

    :cond_9
    move v10, v2

    move-object v9, v12

    goto :goto_9

    :cond_a
    move v14, v5

    :cond_b
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move v5, v14

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    if-eqz v9, :cond_d

    .line 14225
    iget-boolean v2, v4, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    if-eqz v2, :cond_d

    .line 7365
    iget-object v2, v0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 355
    :cond_d
    invoke-interface {v6, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 358
    :cond_e
    iget-object v1, v0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public final getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 2

    .line 238
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    .line 6313
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public final getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 2

    .line 208
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 3313
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public final getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .line 335
    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public final getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 2

    .line 228
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    .line 5313
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public final getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 2

    .line 198
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 2313
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public final getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 2

    .line 218
    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    .line 4313
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public final getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 2

    .line 188
    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    .line 1313
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method
