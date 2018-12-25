.class Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;
.super Lrx/Subscriber;
.source "CloseDepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeDeposit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/response/DepositResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

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

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->access$002(Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;Z)Z

    const-string v0, "CloseDeposit"

    const-string v1, "close deposit failed: "

    .line 213
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_1

    .line 215
    move-object v0, p1

    check-cast v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 216
    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->statusView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->statusView:Lru/rocketbank/core/widgets/RocketTextView;

    const v1, 0x7f11018d

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    .line 225
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Lru/rocketbank/core/model/response/DepositResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->onNext(Lru/rocketbank/core/model/response/DepositResponse;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/response/DepositResponse;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->statusView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f110140

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 231
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    return-void
.end method
