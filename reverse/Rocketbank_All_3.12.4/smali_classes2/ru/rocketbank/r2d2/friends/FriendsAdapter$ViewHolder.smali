.class public Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/FriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

.field name:Landroid/widget/TextView;

.field rocketIcon:Landroid/view/View;

.field root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 276
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902fb

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    const v0, 0x7f09026c

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090064

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/ContactAvatarView;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    const v0, 0x7f0901dc

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->rocketIcon:Landroid/view/View;

    return-void
.end method
