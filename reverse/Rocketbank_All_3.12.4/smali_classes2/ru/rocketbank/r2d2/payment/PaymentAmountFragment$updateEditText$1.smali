.class public final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;
.super Lrx/Subscriber;
.source "PaymentAmountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->updateEditText(Ljava/lang/Double;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/response/CommissionStringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getComission1TextView$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v0, 0x7f110454

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getViewSwitcher$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 306
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$setHasCommission$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Z)V

    .line 307
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getButtonNext$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 298
    check-cast p1, Lru/rocketbank/core/model/response/CommissionStringResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->onNext(Lru/rocketbank/core/model/response/CommissionStringResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/response/CommissionStringResponse;)V
    .locals 7

    const-string v0, "commissionStringResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getComission1TextView$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionStringResponse;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "\u0452"

    const-string v3, "\u20bd"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/response/CommissionStringResponse;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-static {v0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$setHasCommission$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Z)V

    .line 313
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getViewSwitcher$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 314
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$updateEditText$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getButtonNext$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
