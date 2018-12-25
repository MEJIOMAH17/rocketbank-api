.class final Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->bindTemplate(Lru/rocketbank/core/model/transfers/Template;Lru/rocketbank/core/model/provider/Provider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $template:Lru/rocketbank/core/model/transfers/Template;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;

    iget-object p1, p1, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->getActions()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$showPopup(Lru/rocketbank/r2d2/payment/PaymentFragment;Landroid/view/View;Lru/rocketbank/core/model/transfers/Template;)V

    return-void
.end method
