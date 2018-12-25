.class Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;
.super Lrx/Subscriber;
.source "RenameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onOkClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->val$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->val$name:Ljava/lang/String;

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

    .line 211
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->hideSpinner()V

    .line 212
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11018d

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 217
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->access$000(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)Lrx/functions/Action1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->access$000(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;)Lrx/functions/Action1;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 219
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->hideSpinner()V

    .line 220
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->dismiss()V

    .line 221
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$6;->this$0:Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
