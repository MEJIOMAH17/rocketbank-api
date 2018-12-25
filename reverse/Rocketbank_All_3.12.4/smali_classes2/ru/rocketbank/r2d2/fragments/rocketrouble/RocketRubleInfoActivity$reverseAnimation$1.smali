.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;
.super Ljava/lang/Object;
.source "RocketRubleInfoActivity.kt"

# interfaces
.implements Lio/codetail/animation/SupportAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reverseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel()V
    .locals 1

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->finish()V

    return-void
.end method

.method public final onAnimationEnd()V
    .locals 2

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$getMContentView$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->finish()V

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onAnimationRepeat()V
    .locals 0

    return-void
.end method

.method public final onAnimationStart()V
    .locals 0

    return-void
.end method
