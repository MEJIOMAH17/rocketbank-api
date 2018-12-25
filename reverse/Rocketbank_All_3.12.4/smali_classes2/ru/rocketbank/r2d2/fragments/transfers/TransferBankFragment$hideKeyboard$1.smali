.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hideKeyboard$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hideKeyboard(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hideKeyboard$1;->$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 852
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hideKeyboard$1;->$editText:Landroid/widget/EditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    return-void
.end method
