.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showCorporate(Ljava/lang/String;Z)V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 475
    sget-object p1, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->Companion:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;->newInstance(Z)Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    move-result-object p1

    .line 476
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onChooseDate(Lkotlin/jvm/functions/Function1;)V

    .line 480
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 481
    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
