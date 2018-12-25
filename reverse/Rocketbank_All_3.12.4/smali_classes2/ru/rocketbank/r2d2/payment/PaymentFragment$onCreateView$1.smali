.class final Lru/rocketbank/r2d2/payment/PaymentFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->showPayments()V

    return-void
.end method
