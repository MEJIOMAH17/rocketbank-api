.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;
.super Lrx/Subscriber;
.source "RemittanceTransferAmountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->createAmountSubscriber()Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Double;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$102(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 328
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$900(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 313
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;->onNext(Ljava/lang/Double;)V

    return-void
.end method
