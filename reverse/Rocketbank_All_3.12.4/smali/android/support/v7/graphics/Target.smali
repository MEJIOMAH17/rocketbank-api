.class public final Landroid/support/v7/graphics/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final DARK_MUTED:Landroid/support/v7/graphics/Target;

.field public static final DARK_VIBRANT:Landroid/support/v7/graphics/Target;

.field public static final LIGHT_MUTED:Landroid/support/v7/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

.field public static final MUTED:Landroid/support/v7/graphics/Target;

.field public static final VIBRANT:Landroid/support/v7/graphics/Target;


# instance fields
.field mIsExclusive:Z

.field final mLightnessTargets:[F

.field final mSaturationTargets:[F

.field final mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 90
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    .line 91
    sput-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 2269
    iget-object v1, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2270
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const v1, 0x3f3d70a4    # 0.74f

    const/4 v4, 0x1

    aput v1, v0, v4

    .line 92
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 2274
    iget-object v5, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const v6, 0x3eb33333    # 0.35f

    aput v6, v5, v3

    .line 2275
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v4

    .line 94
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    .line 95
    sput-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    .line 3263
    iget-object v7, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const v8, 0x3e99999a    # 0.3f

    aput v8, v7, v3

    .line 3264
    iget-object v7, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/high16 v9, 0x3f000000    # 0.5f

    aput v9, v7, v4

    .line 3265
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const v7, 0x3f333333    # 0.7f

    const/4 v10, 0x2

    aput v7, v0, v10

    .line 96
    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    .line 3274
    iget-object v11, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v6, v11, v3

    .line 3275
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v5, v0, v4

    .line 98
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    .line 99
    sput-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 4258
    iget-object v11, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const v12, 0x3e851eb8    # 0.26f

    aput v12, v11, v4

    .line 4259
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const v11, 0x3ee66666    # 0.45f

    aput v11, v0, v10

    .line 100
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    .line 4274
    iget-object v13, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v6, v13, v3

    .line 4275
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v5, v0, v4

    .line 102
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    .line 103
    sput-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    .line 5269
    iget-object v5, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v2, v5, v3

    .line 5270
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v1, v0, v4

    .line 104
    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    .line 5279
    iget-object v1, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v8, v1, v4

    .line 5280
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const v1, 0x3ecccccd    # 0.4f

    aput v1, v0, v10

    .line 106
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    .line 107
    sput-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    .line 6263
    iget-object v2, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v8, v2, v3

    .line 6264
    iget-object v2, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v9, v2, v4

    .line 6265
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v7, v0, v10

    .line 108
    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    .line 6279
    iget-object v2, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v8, v2, v4

    .line 6280
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v1, v0, v10

    .line 110
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    .line 111
    sput-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    .line 7258
    iget-object v2, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v12, v2, v4

    .line 7259
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    aput v11, v0, v10

    .line 112
    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    .line 7279
    iget-object v2, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v8, v2, v4

    .line 7280
    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    aput v1, v0, v10

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 115
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    .line 116
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    .line 117
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    .line 121
    iget-object v1, p0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1229
    aput v2, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1230
    aput v4, v1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    .line 1231
    aput v5, v1, v6

    .line 122
    iget-object v1, p0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    .line 2229
    aput v2, v1, v3

    .line 2230
    aput v4, v1, v0

    .line 2231
    aput v5, v1, v6

    .line 2235
    iget-object v1, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const v2, 0x3e75c28f    # 0.24f

    aput v2, v1, v3

    .line 2236
    iget-object v1, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const v3, 0x3f051eb8    # 0.52f

    aput v3, v1, v0

    .line 2237
    iget-object v0, p0, Landroid/support/v7/graphics/Target;->mWeights:[F

    aput v2, v0, v6

    return-void
.end method
