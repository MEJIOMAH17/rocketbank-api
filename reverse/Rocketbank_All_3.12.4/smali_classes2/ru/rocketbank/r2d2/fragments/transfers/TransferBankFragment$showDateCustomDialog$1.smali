.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDateCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $editText:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 839
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$hideKeyboard(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V

    return-void
.end method
