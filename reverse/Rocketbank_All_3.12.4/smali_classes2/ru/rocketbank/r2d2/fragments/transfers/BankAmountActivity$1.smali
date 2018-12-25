.class Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity$1;
.super Ljava/lang/Object;
.source "BankAmountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->access$000(Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->access$000(Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/NextButtonListener;->onNextButtonClick()V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
