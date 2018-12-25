.class public Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$StartCurveInterpolator;,
        Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$EndCurveInterpolator;,
        Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;,
        Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mFinishAnimation:Landroid/view/animation/Animation;

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$EndCurveInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 55
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->COLORS:[I

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 325
    new-instance v1, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 84
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 86
    new-instance p1, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p1, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 88
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->updateSizes(I)V

    .line 89
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->setupAnimators()V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)Landroid/view/animation/Animation;
    .locals 0

    .line 35
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mParent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .line 35
    sget-object v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/animation/Interpolator;
    .locals 1

    .line 35
    sget-object v0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)F
    .locals 0

    .line 35
    iget p0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$602(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;F)F
    .locals 0

    .line 35
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private getRotation()F
    .locals 1

    .line 201
    iget v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 4

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    .line 94
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 95
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr p1, v2

    .line 96
    iput-wide p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mWidth:D

    mul-double/2addr p3, v2

    .line 97
    iput-wide p3, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mHeight:D

    double-to-float p1, p7

    mul-float/2addr p1, v1

    .line 98
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-double/2addr p5, v2

    .line 99
    invoke-virtual {v0, p5, p6}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    mul-float/2addr p9, v1

    mul-float/2addr p10, v1

    .line 101
    invoke-virtual {v0, p9, p10}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 102
    iget-wide p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mWidth:D

    double-to-int p1, p1

    iget-wide p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mHeight:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method private setupAnimators()V
    .locals 5

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    .line 242
    new-instance v1, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;)V

    .line 258
    sget-object v2, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x29a

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    new-instance v2, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    new-instance v2, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;)V

    const/4 v3, -0x1

    .line 301
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v3, 0x1

    .line 302
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 303
    sget-object v3, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x535

    .line 304
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 305
    new-instance v3, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;

    invoke-direct {v3, p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;-><init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 322
    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mFinishAnimation:Landroid/view/animation/Animation;

    .line 323
    iput-object v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 177
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 179
    iget v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 180
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 169
    iget-wide v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 173
    iget-wide v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .line 209
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 212
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 213
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 165
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setRotation(F)V
    .locals 0

    .line 196
    iput p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRotation:F

    .line 197
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 221
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 222
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mFinishAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 228
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 229
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->setRotation(F)V

    .line 236
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 237
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 238
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->mRing:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method public updateSizes(I)V
    .locals 22
    .param p1    # I
        .annotation build Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 113
    invoke-direct/range {v0 .. v10}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    return-void

    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    .line 116
    invoke-direct/range {v11 .. v21}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    return-void
.end method
