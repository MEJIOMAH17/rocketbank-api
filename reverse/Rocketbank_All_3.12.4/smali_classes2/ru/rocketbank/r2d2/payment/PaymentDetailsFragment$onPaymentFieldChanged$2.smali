.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $widget:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->$widget:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->$widget:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->getErrorMessage(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->setError(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getPaymentProvider()Lru/rocketbank/core/model/provider/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$setProvider$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/Provider;)V

    .line 370
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$updateProvider(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V

    .line 371
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$checkProvider(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V

    return-void
.end method
