.class Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

.field final synthetic val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 280
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result p2

    float-to-double v0, p2

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    .line 281
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v2

    div-double/2addr v0, v4

    .line 280
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 282
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    .line 283
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 284
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    sub-float p2, v3, p2

    .line 288
    invoke-static {}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr p2, v4

    add-float/2addr v0, p2

    .line 289
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 291
    invoke-static {}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$500()Landroid/view/animation/Interpolator;

    move-result-object p2

    .line 292
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    .line 293
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    .line 295
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setRotation(F)V

    const/high16 p2, 0x43100000    # 144.0f

    mul-float/2addr p2, p1

    .line 296
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    .line 297
    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$600(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x44340000    # 720.0f

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 298
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$3;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->setRotation(F)V

    return-void
.end method
