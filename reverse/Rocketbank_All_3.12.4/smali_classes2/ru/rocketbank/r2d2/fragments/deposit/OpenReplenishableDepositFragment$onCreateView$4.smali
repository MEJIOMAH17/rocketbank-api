.class final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

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

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
