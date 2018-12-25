.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$3;
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

    .line 158
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$300(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$100(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
