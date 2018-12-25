.class Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;
.super Ljava/lang/Object;
.source "InviteFriendsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 51
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->access$100(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->access$200(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->access$002(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;Lio/codetail/animation/SupportAnimator;)Lio/codetail/animation/SupportAnimator;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method
