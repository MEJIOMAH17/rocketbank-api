.class public final Lru/rocketbank/r2d2/friends/ChooseFriendFragment;
.super Lru/rocketbank/r2d2/friends/FriendsFragment;
.source "ChooseFriendFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final createFriendAdapter()Lru/rocketbank/r2d2/friends/ChooseFriendAdapter;
    .locals 2

    .line 16
    new-instance v0, Lru/rocketbank/r2d2/friends/ChooseFriendAdapter;

    new-instance v1, Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/ChooseFriendFragment$createFriendAdapter$1;-><init>(Lru/rocketbank/r2d2/friends/ChooseFriendFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/friends/ChooseFriendAdapter;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public final bridge synthetic createFriendAdapter()Lru/rocketbank/r2d2/friends/FriendsAdapter;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->createFriendAdapter()Lru/rocketbank/r2d2/friends/ChooseFriendAdapter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/friends/FriendsAdapter;

    return-object v0
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/ChooseFriendFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    const-string p2, "fab"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method protected final setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
