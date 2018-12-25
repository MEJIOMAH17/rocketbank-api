.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$4;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$4;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 847
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$4;->$editText:Lru/rocketbank/core/widgets/RocketEditText;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->show(Landroid/widget/EditText;)V

    return-void
.end method
