.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->checkPurposeIsNotEmpty(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $editText:Landroid/widget/EditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_1

    .line 279
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;->$editText:Landroid/widget/EditText;

    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
