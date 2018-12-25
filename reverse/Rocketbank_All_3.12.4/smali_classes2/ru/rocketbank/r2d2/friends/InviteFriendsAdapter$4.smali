.class Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;
.super Ljava/lang/Object;
.source "InviteFriendsAdapter.java"

# interfaces
.implements Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 191
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p2, 0x8

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$002(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 194
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$102(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/core/model/contact/Contact;

    return-void
.end method
