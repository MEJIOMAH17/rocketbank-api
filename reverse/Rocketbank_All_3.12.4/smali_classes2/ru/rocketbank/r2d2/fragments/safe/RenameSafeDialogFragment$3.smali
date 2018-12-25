.class Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;
.super Lrx/Subscriber;
.source "RenameSafeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->setName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/facade/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

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

    .line 128
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11018d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 132
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;->onNext(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/facade/Account;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
