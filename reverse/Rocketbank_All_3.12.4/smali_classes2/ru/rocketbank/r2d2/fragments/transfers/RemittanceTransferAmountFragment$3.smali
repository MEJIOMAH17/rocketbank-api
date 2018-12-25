.class Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;
.super Ljava/lang/Object;
.source "RemittanceTransferAmountFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

.field final synthetic val$changeAmountSubscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lrx/Subscriber;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;->val$changeAmountSubscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 208
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;->val$changeAmountSubscriber:Lrx/Subscriber;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->access$100(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
