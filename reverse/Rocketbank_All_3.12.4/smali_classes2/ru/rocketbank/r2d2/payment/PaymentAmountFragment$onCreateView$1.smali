.class public final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$1;
.super Lru/rocketbank/core/widgets/listener/AddCurrencyListener;
.source "PaymentAmountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;-><init>(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method protected final getCurrency()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    const-string v1, "RUB"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
