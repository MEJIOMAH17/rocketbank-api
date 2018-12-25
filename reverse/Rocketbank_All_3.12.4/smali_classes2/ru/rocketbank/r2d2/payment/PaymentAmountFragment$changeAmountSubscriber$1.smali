.class final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;
.super Ljava/lang/Object;
.source "PaymentAmountFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;-><init>()V
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Double;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getTemplate$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lru/rocketbank/core/model/transfers/Template;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lru/rocketbank/core/model/transfers/Template;->amount:D

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$getCommissionSubscription$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$setCommissionSubscription$p(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Lrx/Subscription;)V

    .line 242
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->updateEditText(Ljava/lang/Double;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$changeAmountSubscriber$1;->call(Ljava/lang/Double;)V

    return-void
.end method
