.class public final Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;
.super Lrx/Subscriber;
.source "AbstractOperationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->confirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/ResponseContainerData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchHideProgress()V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lru/rocketbank/core/model/ResponseContainerData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;->onNext(Lru/rocketbank/core/model/ResponseContainerData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/ResponseContainerData;)V
    .locals 0

    .line 254
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->access$closeActivity(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;)V

    return-void
.end method
