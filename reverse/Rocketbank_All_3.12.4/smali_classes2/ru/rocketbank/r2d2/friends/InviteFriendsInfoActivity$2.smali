.class Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;
.super Ljava/lang/Object;
.source "InviteFriendsInfoActivity.java"

# interfaces
.implements Lio/codetail/animation/SupportAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reverseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 1

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->finish()V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->access$100(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->finish()V

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->overridePendingTransition(II)V

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
