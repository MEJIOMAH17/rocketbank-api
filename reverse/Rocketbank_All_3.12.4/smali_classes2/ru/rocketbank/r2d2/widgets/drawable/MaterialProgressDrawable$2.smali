.class Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;
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

    .line 260
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 267
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 268
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->val$ring:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 269
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$300(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$2;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->access$200(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
