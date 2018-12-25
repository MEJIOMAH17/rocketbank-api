.class final Lru/rocketbank/core/widgets/RocketSnackbar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "RocketSnackbar.java"


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

    .line 589
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$7;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 598
    invoke-static {}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$600$2cdccd1c()Lru/rocketbank/core/widgets/RocketSnackbar$Callback;

    .line 601
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$7;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/SnackbarManager;->onShown(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .line 592
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$7;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$500(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->animateChildrenIn$255f295()V

    return-void
.end method
