.class final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;
.super Ljava/lang/Object;
.source "PaymentAmountFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->showPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "it"

    .line 215
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.payment.PaymentDetailsActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getProvider$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getTemplate$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lru/rocketbank/core/model/transfers/Template;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->replaceDetailsFragment(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
