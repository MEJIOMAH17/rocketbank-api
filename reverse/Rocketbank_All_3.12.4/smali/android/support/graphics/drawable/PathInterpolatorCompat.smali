.class public final Landroid/support/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1188
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    const-string p2, "pathData"

    const-string p3, "http://schemas.android.com/apk/res/android"

    .line 3056
    invoke-interface {p4, p3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p2, :cond_5

    const-string p2, "pathData"

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 4056
    invoke-interface {p4, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    const/4 p2, 0x4

    .line 3160
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2084
    :goto_3
    invoke-static {p2}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    if-nez p3, :cond_4

    .line 2086
    new-instance p1, Landroid/view/InflateException;

    const-string p3, "The path is null, which is created from "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2089
    :cond_4
    invoke-direct {p0, p3}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    goto/16 :goto_10

    :cond_5
    const-string p2, "controlX1"

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 5056
    invoke-interface {p4, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    move p2, p3

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    if-nez p2, :cond_7

    .line 2092
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p2, "controlY1"

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 6056
    invoke-interface {p4, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    move p2, p3

    goto :goto_5

    :cond_8
    move p2, v1

    :goto_5
    if-nez p2, :cond_9

    .line 2094
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p2, "controlX1"

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 7056
    invoke-interface {p4, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    move p2, p3

    goto :goto_6

    :cond_a
    move p2, v1

    :goto_6
    const/4 v0, 0x0

    if-nez p2, :cond_b

    move v3, v0

    goto :goto_7

    .line 6072
    :cond_b
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v3, p2

    :goto_7
    const-string p2, "controlY1"

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 8056
    invoke-interface {p4, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    move p2, p3

    goto :goto_8

    :cond_c
    move p2, v1

    :goto_8
    if-nez p2, :cond_d

    move v4, v0

    goto :goto_9

    .line 7072
    :cond_d
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v4, p2

    :goto_9
    const-string p2, "controlX2"

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9056
    invoke-interface {p4, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    move p2, p3

    goto :goto_a

    :cond_e
    move p2, v1

    :goto_a
    const-string v2, "controlY2"

    const-string v5, "http://schemas.android.com/apk/res/android"

    .line 10056
    invoke-interface {p4, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    move v2, p3

    goto :goto_b

    :cond_f
    move v2, v1

    :goto_b
    if-eq p2, v2, :cond_10

    .line 2105
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-nez p2, :cond_11

    .line 10122
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 10123
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 10124
    invoke-virtual {p2, v3, v4, p3, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 10125
    invoke-direct {p0, p2}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    goto :goto_10

    :cond_11
    const-string p2, "controlX2"

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 12056
    invoke-interface {p4, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    move p2, p3

    goto :goto_c

    :cond_12
    move p2, v1

    :goto_c
    if-nez p2, :cond_13

    move v5, v0

    goto :goto_d

    :cond_13
    const/4 p2, 0x2

    .line 11072
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v5, p2

    :goto_d
    const-string p2, "controlY2"

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 13056
    invoke-interface {p4, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    goto :goto_e

    :cond_14
    move p3, v1

    :goto_e
    if-nez p3, :cond_15

    move v6, v0

    goto :goto_f

    :cond_15
    const/4 p2, 0x3

    .line 12072
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v6, p2

    .line 13129
    :goto_f
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 13130
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p2

    .line 13131
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 13132
    invoke-direct {p0, p2}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 75
    :goto_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 10

    .line 136
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    const v2, 0x3b03126f    # 0.002f

    div-float v2, p1, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0xbb8

    .line 139
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gtz v2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path has a invalid length "

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-array v4, v2, [F

    iput-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    .line 146
    new-array v4, v2, [F

    iput-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v4, 0x2

    .line 148
    new-array v4, v4, [F

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_1

    int-to-float v6, v5

    mul-float/2addr v6, p1

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    .line 151
    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 153
    iget-object v6, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v7, v4, v1

    aput v7, v6, v5

    .line 154
    iget-object v6, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v7, v4, v3

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double p1, v4, v6

    if-gtz p1, :cond_6

    iget-object p1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    cmpl-double p1, v4, v6

    if-gtz p1, :cond_6

    iget-object p1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v4, v2, -0x1

    aget p1, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v8, p1

    cmpl-double p1, v8, v6

    if-gtz p1, :cond_6

    iget-object p1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget p1, p1, v4

    sub-float/2addr p1, v5

    .line 158
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    cmpl-double p1, v4, v6

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    move v3, p1

    move p1, v1

    :goto_1
    if-ge v1, v2, :cond_4

    .line 168
    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v5, p1, 0x1

    aget p1, v4, p1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot loop back on itself, x :"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aput p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v3, p1

    move p1, v5

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 177
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    .line 159
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    const/4 v3, 0x1

    array-length v2, v2

    sub-int/2addr v2, v3

    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    add-int v4, v1, v2

    .line 204
    div-int/lit8 v4, v4, 0x2

    .line 205
    iget-object v5, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    .line 212
    :cond_3
    iget-object v3, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 214
    iget-object p1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget p1, p1, v1

    return p1

    .line 217
    :cond_4
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v0, v0, v1

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    .line 220
    iget-object v0, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v0, v0, v1

    .line 221
    iget-object v1, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v1, v2

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method
