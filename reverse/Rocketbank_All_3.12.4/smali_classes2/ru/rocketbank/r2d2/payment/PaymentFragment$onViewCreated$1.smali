.class final Lru/rocketbank/r2d2/payment/PaymentFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$loadTemplates(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    return-void
.end method
