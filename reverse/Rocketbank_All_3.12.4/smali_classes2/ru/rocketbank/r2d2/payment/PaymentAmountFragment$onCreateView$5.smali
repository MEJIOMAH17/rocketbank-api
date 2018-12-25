.class final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;
.super Ljava/lang/Object;
.source "PaymentAmountFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $requestData:Lru/rocketbank/core/network/model/PaymentRequest;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lru/rocketbank/core/network/model/PaymentRequest;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;->$requestData:Lru/rocketbank/core/network/model/PaymentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$5;->$requestData:Lru/rocketbank/core/network/model/PaymentRequest;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onNextButtonClick(Lru/rocketbank/core/network/model/PaymentRequest;)V

    return-void
.end method
