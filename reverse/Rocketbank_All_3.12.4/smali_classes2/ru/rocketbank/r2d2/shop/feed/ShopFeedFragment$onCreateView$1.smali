.class final Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "ShopFeedFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->access$getPresenter$p(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->onCartButtonClick()V

    return-void
.end method
