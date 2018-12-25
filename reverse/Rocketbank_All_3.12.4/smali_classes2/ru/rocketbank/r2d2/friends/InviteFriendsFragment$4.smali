.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$4;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 186
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$4;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$4;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onScrollChanged(IZZ)V

    return-void
.end method
