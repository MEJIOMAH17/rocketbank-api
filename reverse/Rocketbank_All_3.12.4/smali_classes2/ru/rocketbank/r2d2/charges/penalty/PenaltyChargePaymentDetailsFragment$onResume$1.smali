.class final Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$1;
.super Ljava/lang/Object;
.source "PenaltyChargePaymentDetailsFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->onResume()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->updateNextButton()V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
