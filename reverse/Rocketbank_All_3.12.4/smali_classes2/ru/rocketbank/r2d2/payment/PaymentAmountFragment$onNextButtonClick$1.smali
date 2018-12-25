.class final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;
.super Ljava/lang/Object;
.source "PaymentAmountFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onNextButtonClick(Lru/rocketbank/core/network/model/PaymentRequest;)V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;->$requestData:Lru/rocketbank/core/network/model/PaymentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onNextButtonClick$1;->$requestData:Lru/rocketbank/core/network/model/PaymentRequest;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->pay(Lru/rocketbank/core/network/model/PaymentRequest;)V

    return-void
.end method
