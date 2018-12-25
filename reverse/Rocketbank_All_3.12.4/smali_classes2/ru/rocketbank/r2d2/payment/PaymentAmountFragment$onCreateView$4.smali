.class final Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;
.super Ljava/lang/Object;
.source "PaymentAmountFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rootView:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;->$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentAmountFragment$onCreateView$4;->$rootView:Landroid/view/View;

    const-string v1, "rootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->actions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "rootView.actions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->access$showPopup(Lru/rocketbank/r2d2/payment/PaymentAmountFragment;Landroid/view/View;)V

    return-void
.end method
