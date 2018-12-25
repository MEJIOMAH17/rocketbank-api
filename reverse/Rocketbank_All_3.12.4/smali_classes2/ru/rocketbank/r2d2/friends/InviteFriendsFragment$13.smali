.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 369
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$500(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/helpers/UIHelper;->colorizeToolbar(Landroid/support/v7/widget/Toolbar;ILandroid/app/Activity;)V

    return-void
.end method
