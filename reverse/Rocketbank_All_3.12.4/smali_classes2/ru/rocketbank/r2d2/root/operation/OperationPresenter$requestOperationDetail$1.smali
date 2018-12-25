.class public final Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;
.super Lrx/Subscriber;
.source "OperationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/OperationPresenter;->requestOperationDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/ContextResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$refreshData(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lru/rocketbank/core/network/model/ContextResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;->onNext(Lru/rocketbank/core/network/model/ContextResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/ContextResponse;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/ContextResponse;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->setOperationFetched(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 46
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;->this$0:Lru/rocketbank/r2d2/root/operation/OperationPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->access$refreshData(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V

    return-void
.end method
