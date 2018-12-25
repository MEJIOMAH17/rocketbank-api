.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 281
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 283
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 284
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->$editText:Landroid/widget/EditText;

    const v2, 0x7f1104ad

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    return-void
.end method
