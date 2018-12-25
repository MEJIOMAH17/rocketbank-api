.class final Lru/rocketbank/core/widgets/RocketSnackbar$8;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketSnackbar;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$8;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 612
    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$600$2cdccd1c()Lru/rocketbank/core/widgets/RocketSnackbar$Callback;

    .line 615
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$8;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/SnackbarManager;->onShown(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

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
