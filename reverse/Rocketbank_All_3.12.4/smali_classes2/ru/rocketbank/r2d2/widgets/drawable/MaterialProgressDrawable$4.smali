.class Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 305
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    .line 316
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 317
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 318
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 319
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$600(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$602(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$4;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$602(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;F)F

    return-void
.end method
