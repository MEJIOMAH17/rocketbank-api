.class Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;
.super Lrx/Subscriber;
.source "RenameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->onOkClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 366
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->hideSpinner()V

    .line 367
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11018d

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 358
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 1

    .line 372
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->access$300(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;)Lru/rocketbank/core/model/transfers/Template;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->val$name:Ljava/lang/String;

    iput-object v0, p1, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    .line 373
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->access$400(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;)Lrx/functions/Action1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->access$400(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;)Lrx/functions/Action1;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->access$300(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;)Lru/rocketbank/core/model/transfers/Template;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 376
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->hideSpinner()V

    .line 377
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->dismiss()V

    return-void
.end method
