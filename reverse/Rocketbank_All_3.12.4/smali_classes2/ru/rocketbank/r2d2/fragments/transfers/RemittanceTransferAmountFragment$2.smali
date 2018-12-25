.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$2;
.super Lru/rocketbank/core/widgets/listener/AddCurrencyListener;
.source "RemittanceTransferAmountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;-><init>(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method protected getCurrency()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    const-string v1, "RUB"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
