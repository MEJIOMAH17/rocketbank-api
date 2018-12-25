.class Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;
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

    .line 242
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 246
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result p2

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p2, v0

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    .line 249
    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 251
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    .line 253
    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    .line 254
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 255
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$1;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method
