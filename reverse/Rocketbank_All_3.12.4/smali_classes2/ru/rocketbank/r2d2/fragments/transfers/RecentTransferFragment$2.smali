.class Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$2;
.super Ljava/lang/Object;
.source "RecentTransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 121
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->goToBankTransferFragment()V

    return-void
.end method
