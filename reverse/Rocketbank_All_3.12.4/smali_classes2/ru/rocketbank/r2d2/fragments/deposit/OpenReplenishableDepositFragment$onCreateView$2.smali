.class public final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "OpenReplenishableDepositFragment.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->updateDepositInfo(I)V

    return-void
.end method
