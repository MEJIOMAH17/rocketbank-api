.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fieldWidget:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

.field final synthetic $phones:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;->$fieldWidget:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;->$phones:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;->$fieldWidget:Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;->$phones:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
