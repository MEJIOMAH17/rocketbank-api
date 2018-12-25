.class final Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1$1;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
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
        "Lru/rocketbank/core/model/transfers/Template;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lru/rocketbank/core/model/transfers/Template;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1$1;->call(Lru/rocketbank/core/model/transfers/Template;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 307
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$loadTemplates(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    return-void
.end method
