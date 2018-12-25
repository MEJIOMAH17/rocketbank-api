.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$11;
.super Ljava/lang/Object;
.source "RemittanceTransferAmountFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->createPopUpMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$11;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 448
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 450
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$11;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->callEditInfoFragment()V

    const/4 p1, 0x1

    return p1
.end method
