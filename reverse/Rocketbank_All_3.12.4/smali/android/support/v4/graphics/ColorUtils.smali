.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static RGBToHSL(III[F)V
    .locals 7

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 177
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 178
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move p0, v6

    move v2, p0

    goto :goto_1

    :cond_0
    cmpl-float v1, v0, p0

    if-nez v1, :cond_1

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    move p0, p1

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float/2addr p2, v4

    move p0, p2

    goto :goto_0

    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p0, p1

    :goto_0
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    .line 196
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v5, p1

    div-float/2addr v2, p1

    :goto_1
    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p0, p1

    cmpg-float p2, p0, v6

    if-gez p2, :cond_3

    add-float/2addr p0, p1

    :cond_3
    const/4 p2, 0x0

    cmpg-float v0, p0, v6

    if-gez v0, :cond_4

    move p0, v6

    goto :goto_2

    :cond_4
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    move p0, p1

    .line 204
    :cond_5
    :goto_2
    aput p0, p3, p2

    const/4 p0, 0x1

    cmpg-float p1, v2, v6

    if-gez p1, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    cmpl-float p1, v2, v5

    if-lez p1, :cond_7

    move v2, v5

    .line 205
    :cond_7
    :goto_3
    aput v2, p3, p0

    const/4 p0, 0x2

    cmpg-float p1, v3, v6

    if-gez p1, :cond_8

    move v3, v6

    goto :goto_4

    :cond_8
    cmpl-float p1, v3, v5

    if-lez p1, :cond_9

    move v3, v5

    .line 206
    :cond_9
    :goto_4
    aput v3, p3, p0

    return-void
.end method

.method private static calculateContrast(II)D
    .locals 4

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "background can not be translucent: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 100
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 101
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 104
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method private static calculateLuminance(I)D
    .locals 19

    .line 3610
    sget-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 3612
    new-array v0, v1, [D

    .line 3613
    sget-object v2, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4353
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 4376
    array-length v5, v0

    if-eq v5, v1, :cond_1

    .line 4377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-double v1, v2

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v5

    const-wide v7, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v9, v1, v7

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v16, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v9, :cond_2

    div-double v1, v1, v16

    goto :goto_0

    :cond_2
    add-double/2addr v1, v14

    div-double/2addr v1, v12

    .line 4381
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_0
    int-to-double v10, v3

    div-double/2addr v10, v5

    cmpg-double v3, v10, v7

    if-gez v3, :cond_3

    div-double v10, v10, v16

    const-wide v12, 0x4003333333333333L    # 2.4

    goto :goto_1

    :cond_3
    add-double/2addr v10, v14

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    .line 4383
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    :goto_1
    int-to-double v3, v4

    div-double/2addr v3, v5

    cmpg-double v5, v3, v7

    if-gez v5, :cond_4

    div-double v3, v3, v16

    goto :goto_2

    :cond_4
    add-double/2addr v3, v14

    const-wide v5, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v3, v5

    .line 4385
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_2
    const/4 v5, 0x0

    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v6, v1

    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    .line 4387
    aput-wide v6, v0, v5

    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v5, v1

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v10

    add-double/2addr v5, v12

    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v12, v3

    add-double/2addr v5, v12

    mul-double/2addr v5, v8

    const/4 v7, 0x1

    .line 4388
    aput-wide v5, v0, v7

    const/4 v5, 0x2

    const-wide v12, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v1, v12

    const-wide v12, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    const-wide v10, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v3, v10

    add-double/2addr v1, v3

    mul-double/2addr v1, v8

    .line 4389
    aput-wide v1, v0, v5

    .line 80
    aget-wide v1, v0, v7

    div-double/2addr v1, v8

    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 9

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "background can not be translucent: #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x1000000

    or-int/2addr v0, p0

    .line 126
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p2, 0x0

    move v2, p2

    move v0, v1

    :goto_0
    const/16 v3, 0xa

    if-gt p2, v3, :cond_5

    sub-int v3, v0, v2

    const/4 v6, 0x1

    if-le v3, v6, :cond_5

    add-int v3, v2, v0

    .line 139
    div-int/lit8 v3, v3, 0x2

    if-ltz v3, :cond_4

    if-le v3, v1, :cond_2

    goto :goto_2

    :cond_2
    shl-int/lit8 v6, v3, 0x18

    or-int/2addr v6, p0

    .line 142
    invoke-static {v6, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    cmpg-double v8, v6, v4

    if-gez v8, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6298
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return v0
.end method

.method public static colorToHSL(I[F)V
    .locals 2

    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    return-void
.end method

.method public static compositeColors(II)I
    .locals 8

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    .line 1063
    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v5, v0

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    mul-int/lit16 v5, v2, 0xff

    .line 1068
    div-int/2addr v4, v5

    .line 54
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    if-nez v2, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    mul-int/lit16 v5, v5, 0xff

    mul-int/2addr v5, v1

    mul-int/2addr v7, v0

    mul-int/2addr v7, v3

    add-int/2addr v5, v7

    mul-int/lit16 v7, v2, 0xff

    .line 2068
    div-int/2addr v5, v7

    .line 56
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, v1

    mul-int/2addr p1, v0

    mul-int/2addr p1, v3

    add-int/2addr p0, p1

    mul-int/lit16 p1, v2, 0xff

    .line 3068
    div-int v6, p0, p1

    .line 59
    :goto_2
    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 298
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
