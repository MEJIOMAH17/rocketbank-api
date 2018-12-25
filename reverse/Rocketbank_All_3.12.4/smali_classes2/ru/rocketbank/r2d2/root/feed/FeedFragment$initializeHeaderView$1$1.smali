.class final Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 252
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/feed/FeedFragment$initializeHeaderView$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getSearchView$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Landroid/support/v7/widget/SearchView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    const/4 p1, 0x1

    return p1
.end method
