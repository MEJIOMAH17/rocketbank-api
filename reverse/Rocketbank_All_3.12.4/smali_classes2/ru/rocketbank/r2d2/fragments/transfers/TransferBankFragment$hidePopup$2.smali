.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$2;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hidePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 621
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->buttonInfoUin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "fragmentView.budgetView.buttonInfoUin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1104c3

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$showPopup(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/ImageButton;I)V

    return-void
.end method
