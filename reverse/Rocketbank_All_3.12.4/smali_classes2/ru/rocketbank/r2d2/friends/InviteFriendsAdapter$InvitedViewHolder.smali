.class public Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InviteFriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvitedViewHolder"
.end annotation


# instance fields
.field avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

.field description:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field revenue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 379
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09026c

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090064

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/ContactAvatarView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    const v0, 0x7f0902e4

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->revenue:Landroid/widget/TextView;

    const v0, 0x7f09012f

    .line 384
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method
