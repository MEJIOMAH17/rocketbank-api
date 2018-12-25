.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$1;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 136
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$100(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
