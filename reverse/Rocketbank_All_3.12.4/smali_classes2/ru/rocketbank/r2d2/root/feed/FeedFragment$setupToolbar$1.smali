.class final Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedFragment;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $toolbar:Landroid/support/v7/widget/Toolbar;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 411
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 412
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 413
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getBinding$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object v1

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v2, "binding.realToolbar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f090026

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "binding.realToolbar.menu\u2026dItem(R.id.action_search)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$setSearchMenuItem$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/view/MenuItem;)V

    .line 416
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getSearchMenuItem$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.SearchView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/support/v7/widget/SearchView;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$setSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;Landroid/support/v7/widget/SearchView;)V

    .line 417
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    check-cast v1, Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 418
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    check-cast v1, Landroid/support/v7/widget/SearchView$OnCloseListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    .line 419
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment$setupToolbar$1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
