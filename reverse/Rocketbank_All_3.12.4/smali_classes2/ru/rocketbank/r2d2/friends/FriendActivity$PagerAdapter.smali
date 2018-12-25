.class Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/friends/FriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerAdapter"
.end annotation


# instance fields
.field private fragments:[Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;


# direct methods
.method varargs constructor <init>(Landroid/support/v4/app/FragmentManager;[Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 214
    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->fragments:[Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->fragments:[Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;
    .locals 1

    .line 219
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->fragments:[Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    aget-object p1, v0, p1

    return-object p1
.end method
