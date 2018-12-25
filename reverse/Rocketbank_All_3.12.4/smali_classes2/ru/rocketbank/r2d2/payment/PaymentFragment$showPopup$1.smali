.class final Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;->showPopup(Landroid/view/View;Lru/rocketbank/core/model/transfers/Template;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $template:Lru/rocketbank/core/model/transfers/Template;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    .line 304
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 313
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$deleteTemplate(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/core/model/transfers/Template;)V

    return v0

    .line 306
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->getInstance(Lru/rocketbank/core/model/transfers/Template;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    move-result-object p1

    .line 307
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->onRenameTemplate(Lrx/functions/Action1;)V

    .line 308
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$showPopup$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
