.class Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InviteFriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3$1;->this$1:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3$1;->this$1:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3$1;->this$1:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_0
    return-void
.end method
