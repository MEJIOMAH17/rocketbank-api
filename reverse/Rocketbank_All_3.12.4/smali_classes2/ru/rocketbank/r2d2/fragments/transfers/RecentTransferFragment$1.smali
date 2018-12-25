.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;
.super Ljava/lang/Object;
.source "RecentTransferFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$ClickMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDialogRequested(Landroid/view/View;)V
    .locals 5

    .line 81
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090202

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f11017b

    .line 84
    invoke-interface {v1, v2, v2, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v3, 0x1

    const v4, 0x7f110136

    .line 85
    invoke-interface {v1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 86
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 115
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method
