.class public final Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;
.super Lrx/Subscriber;
.source "AbstractOperationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->saveOperationComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $comment:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->$comment:Ljava/lang/String;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->onError()V

    .line 153
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->$comment:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->onCommentUpdateFinished(ZLjava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Lru/rocketbank/core/model/ResponseModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->onNext(Lru/rocketbank/core/model/ResponseModel;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/ResponseModel;)V
    .locals 3

    .line 147
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->$comment:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->onCommentUpdateFinished(ZLjava/lang/String;)V

    .line 148
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getOperationId()J

    move-result-wide v0

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;->$comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lru/rocketbank/core/manager/loader/FeedLoader;->onChangedComment(JLjava/lang/String;)V

    return-void
.end method
