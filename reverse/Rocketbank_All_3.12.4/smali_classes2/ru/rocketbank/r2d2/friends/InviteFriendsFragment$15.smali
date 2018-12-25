.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$15;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->hideFab()V
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

    .line 412
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$15;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 420
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$15;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
