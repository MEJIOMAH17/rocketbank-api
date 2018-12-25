.class final Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedFragment;->initializeHeaderView()V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 246
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 247
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->$toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getBinding$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090025

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 251
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;)V

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
