.class Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;
.super Ljava/lang/Object;
.source "InviteFriendsActivity.java"

# interfaces
.implements Lio/codetail/animation/SupportAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->reverseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->finish()V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->access$100(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->finish()V

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimationRepeat()V
    .locals 0

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
