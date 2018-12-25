.class public final Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;
.super Landroid/view/View;
.source "SwitchAvatarButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;,
        Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwitchAvatarButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwitchAvatarButton.kt\nru/rocketbank/r2d2/root/analytics/SwitchAvatarButton\n*L\n1#1,271:1\n*E\n"
.end annotation


# static fields
.field private static final CIRCLE_PAINT:Landroid/graphics/Paint;

.field private static final CIRCLE_STROKE:F = 3.0f

.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$Companion;

.field private static final POSITION_ANIMATION_DURATION:J = 0x12cL


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private avatarPosition:F

.field private final dstRect:Landroid/graphics/RectF;

.field private isDoubleAvatar:Z

.field private final m:Landroid/graphics/Matrix;

.field private movingAvatar:Landroid/graphics/Bitmap;

.field private final movingAvatarPosition:Landroid/graphics/Point;

.field private positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

.field private final srcRect:Landroid/graphics/RectF;

.field private staticAvatar:Landroid/graphics/Bitmap;

.field private final staticAvatarPosition:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->Companion:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$Companion;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    sput-object v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    .line 120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    .line 124
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    .line 41
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    .line 120
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    .line 124
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    .line 128
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    .line 132
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    .line 136
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    .line 45
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    .line 120
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    .line 124
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    .line 128
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    .line 132
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    .line 136
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    .line 49
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    .line 120
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    .line 124
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    .line 128
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    .line 132
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    .line 136
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    .line 53
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMovingAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatar:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getPositionAnimator$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    return-object p0
.end method

.method public static final synthetic access$getStaticAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatar:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$newAvatarPosition(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Z)F
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMovingAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatar:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setPosition(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setPosition(F)V

    return-void
.end method

.method public static final synthetic access$setPositionAnimator$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    return-void
.end method

.method public static final synthetic access$setStaticAvatar$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatar:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final animateAvatar(Z)V
    .locals 3

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->cancelPositionAnimator()V

    .line 160
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;-><init>(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;FF)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    if-eqz v0, :cond_1

    sget-wide v1, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->POSITION_ANIMATION_DURATION:J

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->setDuration(J)V

    .line 162
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    if-eqz v0, :cond_2

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;-><init>(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Z)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    check-cast p1, Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final avatarOffset(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private final cancelPositionAnimator()V
    .locals 1

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->clearAnimation()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->positionAnimator:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    :cond_0
    return-void
.end method

.method private final newAvatarPosition(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method private final setAvatarPosition(F)V
    .locals 0

    .line 95
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->invalidate()V

    return-void
.end method

.method private final setPosition(F)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setAvatarPosition(F)V

    .line 194
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f080061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    new-instance v3, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-direct {v3, p1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    check-cast v3, Lcom/bumptech/glide/load/Transformation;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$init$1;-><init>(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final isDoubleAvatar()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v2, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatar:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatar:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    return-void

    .line 204
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_STROKE:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float/2addr v4, v5

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v7, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v9, v5

    div-double/2addr v7, v9

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getHeight()I

    move-result v5

    int-to-double v9, v5

    mul-double/2addr v7, v9

    double-to-int v5, v7

    .line 208
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 209
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 215
    iget-object v9, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    int-to-float v7, v7

    invoke-direct {v0, v5}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarOffset(I)F

    move-result v10

    add-float/2addr v10, v7

    float-to-int v10, v10

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Point;->set(II)V

    .line 216
    iget-object v9, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 217
    iget-object v9, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    div-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 218
    iget-object v11, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    div-float v13, v4, v6

    sub-float/2addr v11, v13

    .line 219
    iget-object v14, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    int-to-float v15, v5

    add-float v12, v9, v15

    add-float v6, v11, v4

    invoke-virtual {v14, v9, v11, v12, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 220
    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 221
    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    iget-object v9, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    iget-object v11, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v9, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 222
    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v9, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v11, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sget v14, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_STROKE:F

    div-float/2addr v14, v12

    add-float/2addr v11, v14

    sget-object v12, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 228
    invoke-direct {v0, v5}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarOffset(I)F

    move-result v3

    sub-float/2addr v7, v3

    .line 229
    iget v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarPosition:F

    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatarPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    mul-float/2addr v3, v5

    .line 230
    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    add-float/2addr v7, v3

    float-to-int v3, v7

    invoke-virtual {v5, v3, v8}, Landroid/graphics/Point;->set(II)V

    .line 231
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    .line 233
    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatarPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    sub-float/2addr v5, v13

    .line 234
    iget-object v6, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    add-float/2addr v15, v3

    add-float/2addr v4, v5

    invoke-virtual {v6, v3, v5, v15, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 236
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    iget-object v4, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->srcRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 237
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->dstRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v7, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_STROKE:F

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    sget-object v6, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 238
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 7

    .line 242
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 243
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatar:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 244
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setMeasuredDimension(II)V

    return-void

    .line 247
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatar:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    return-void

    .line 248
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_STROKE:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 249
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget v1, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_STROKE:F

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-double v0, v0

    float-to-double v3, p2

    div-double/2addr v0, v3

    int-to-double v3, p1

    mul-double/2addr v0, v3

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v5, v0, v3

    mul-double/2addr v3, v5

    double-to-int p2, v0

    .line 251
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->avatarOffset(I)F

    move-result p2

    mul-float/2addr v2, p2

    float-to-double v0, v2

    add-double/2addr v3, v0

    const/high16 p2, 0x40400000    # 3.0f

    sget v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->CIRCLE_STROKE:F

    mul-float/2addr p2, v0

    float-to-double v0, p2

    add-double/2addr v3, v0

    double-to-int p2, v3

    invoke-virtual {p0, p2, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAvatars(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "movingAvatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticAvatar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->movingAvatar:Landroid/graphics/Bitmap;

    .line 147
    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->staticAvatar:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->requestLayout()V

    .line 149
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->invalidate()V

    return-void
.end method

.method public final setDoubleAvatar(Z)V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->animateAvatar(Z)V

    return-void

    .line 85
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->cancelPositionAnimator()V

    .line 86
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->isDoubleAvatar:Z

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->newAvatarPosition(Z)F

    move-result p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setAvatarPosition(F)V

    return-void
.end method
