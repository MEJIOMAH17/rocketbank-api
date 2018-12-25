.class final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;
.super Ljava/lang/Object;
.source "OpenReplenishableDepositFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $scroll:Landroid/widget/ScrollView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;->$scroll:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;->$scroll:Landroid/widget/ScrollView;

    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->access$getCardsViewPager$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->updateDepositInfo(I)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
