.class Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;
.super Lrx/Subscriber;
.source "RenameSafeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;->onOkClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->val$name:Ljava/lang/String;

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

    .line 239
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;->hideSpinner()V

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->val$view:Landroid/view/View;

    const v0, 0x7f11018d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;->access$200(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;)Lrx/functions/Action1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;->access$200(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;)Lrx/functions/Action1;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 248
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;->hideSpinner()V

    .line 249
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$RecentTransferRenameDialogFragment;->dismiss()V

    return-void
.end method
