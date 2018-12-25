.class final Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;
.source "RocketSnackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior<",
        "Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketSnackbar;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    .line 889
    instance-of p1, p1, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    return p1
.end method

.method public final bridge synthetic onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 886
    check-cast p2, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    .line 1897
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1898
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1900
    :pswitch_0
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/SnackbarManager;->cancelTimeout(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    goto :goto_0

    .line 1904
    :cond_0
    :pswitch_1
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/SnackbarManager;->restoreTimeout(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    .line 1909
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
