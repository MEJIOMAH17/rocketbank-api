.class Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;
.super Lrx/Subscriber;
.source "RenameSafeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->onOkClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/EditCardResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->val$view:Landroid/view/View;

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

    .line 158
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->hideSpinner()V

    .line 159
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->val$view:Landroid/view/View;

    const v0, 0x7f11018d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lru/rocketbank/core/network/model/EditCardResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->onNext(Lru/rocketbank/core/network/model/EditCardResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/network/model/EditCardResponse;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->hideSpinner()V

    .line 165
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->access$000(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 166
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 167
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$4;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
