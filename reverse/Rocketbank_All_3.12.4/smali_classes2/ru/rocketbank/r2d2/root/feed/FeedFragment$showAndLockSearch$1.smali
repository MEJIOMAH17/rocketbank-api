.class public final Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedFragment;->showAndLockSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 657
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$setToolbarAnimation$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$setToolbarAnimation$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$showAndLockSearch$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$setToolbarAnimation$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Z)V

    return-void
.end method
