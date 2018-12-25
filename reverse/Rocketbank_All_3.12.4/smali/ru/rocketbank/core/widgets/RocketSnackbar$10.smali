.class final Lru/rocketbank/core/widgets/RocketSnackbar$10;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketSnackbar;I)V
    .locals 0

    .line 649
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$10;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    iput p2, p0, Lru/rocketbank/core/widgets/RocketSnackbar$10;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 652
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$10;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$300$aabb9b3(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
