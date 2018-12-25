.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->onPaymentFieldChanged(Lru/rocketbank/core/model/provider/ProviderField;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/OperatorResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $dataManager:Lru/rocketbank/core/manager/DataManager;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/manager/DataManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->$dataManager:Lru/rocketbank/core/manager/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lru/rocketbank/core/network/model/OperatorResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->call(Lru/rocketbank/core/network/model/OperatorResponse;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/OperatorResponse;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->$dataManager:Lru/rocketbank/core/manager/DataManager;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/OperatorResponse;->getProvider_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/DataManager;->getProvider(J)Lru/rocketbank/core/model/provider/Provider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$setProvider$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/Provider;)V

    .line 363
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$updateProvider(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V

    .line 364
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$checkProvider(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V

    :cond_0
    return-void
.end method
