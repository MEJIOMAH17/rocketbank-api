.class Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;
.super Ljava/lang/Object;
.source "UserFeedRefillFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 73
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$PageChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$PageChangeEvent;-><init>(ILru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->access$100(Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;I)V

    return-void
.end method
