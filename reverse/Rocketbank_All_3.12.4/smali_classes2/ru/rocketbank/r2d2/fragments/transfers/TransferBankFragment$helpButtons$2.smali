.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferBankFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Landroid/widget/ImageButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;->invoke()[Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Landroid/widget/ImageButton;
    .locals 3

    const/4 v0, 0x2

    .line 112
    new-array v0, v0, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    sget v2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "fragmentView.budgetView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    sget v2, Lru/rocketbank/r2d2/R$id;->buttonInfoUin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    sget v2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "fragmentView.budgetView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    sget v2, Lru/rocketbank/r2d2/R$id;->buttonInfoKbk:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
