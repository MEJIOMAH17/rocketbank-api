.class public Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InviteFriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InviteViewHolder"
.end annotation


# instance fields
.field avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

.field buttonInvite:Landroid/view/View;

.field buttonInviteEmail:Landroid/widget/ImageButton;

.field buttonInviteSMS:Landroid/widget/ImageButton;

.field content:Landroid/view/ViewGroup;

.field menu:Landroid/view/ViewGroup;

.field name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 360
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09026c

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090105

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f090064

    .line 364
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/ContactAvatarView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    const v0, 0x7f090097

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInvite:Landroid/view/View;

    const v0, 0x7f090099

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInviteSMS:Landroid/widget/ImageButton;

    const v0, 0x7f090098

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInviteEmail:Landroid/widget/ImageButton;

    const v0, 0x7f090250

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    return-void
.end method
