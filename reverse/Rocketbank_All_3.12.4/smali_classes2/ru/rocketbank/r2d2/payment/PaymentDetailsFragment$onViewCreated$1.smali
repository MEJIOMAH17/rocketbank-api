.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $firstField:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onViewCreated$1;->$firstField:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onViewCreated$1;->$firstField:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    invoke-interface {v0}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->showKeyboard()V

    return-void
.end method
