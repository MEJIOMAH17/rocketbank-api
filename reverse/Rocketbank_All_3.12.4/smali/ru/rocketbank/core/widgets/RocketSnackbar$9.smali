.class final Lru/rocketbank/core/widgets/RocketSnackbar$9;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "RocketSnackbar.java"


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

    .line 634
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$9;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    iput p2, p0, Lru/rocketbank/core/widgets/RocketSnackbar$9;->val$event:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .line 642
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$9;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$300$aabb9b3(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .line 637
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$9;->this$0:Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->access$500(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->animateChildrenOut$255f295()V

    return-void
.end method
