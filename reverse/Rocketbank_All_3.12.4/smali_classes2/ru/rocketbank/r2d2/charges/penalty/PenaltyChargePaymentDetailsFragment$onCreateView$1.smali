.class final Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "PenaltyChargePaymentDetailsFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 49
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->access$getPenaltyCharge$p(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;)Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->setIKnowNum(Ljava/lang/Boolean;)V

    return-void
.end method
