.class public abstract Lru/rocketbank/core/manager/loader/OperationLoader;
.super Ljava/lang/Object;
.source "OperationLoader.kt"

# interfaces
.implements Lru/rocketbank/core/manager/loader/OperationLoaderInterface;


# instance fields
.field private final feedObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final feedSubjectSubject:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lrx/subjects/SerializedSubject;

    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v1

    check-cast v1, Lrx/subjects/Subject;

    invoke-direct {v0, v1}, Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V

    check-cast v0, Lrx/subjects/Subject;

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/OperationLoader;->feedSubjectSubject:Lrx/subjects/Subject;

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/OperationLoader;->feedSubjectSubject:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->asObservable()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->publish()Lrx/observables/ConnectableObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/ConnectableObservable;->refCount()Lrx/Observable;

    move-result-object v0

    const-string v1, "feedSubjectSubject.asObs\u2026n()).publish().refCount()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/loader/OperationLoader;->feedObservable:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public changeObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/OperationLoader;->feedSubjectSubject:Lrx/subjects/Subject;

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/Subject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "feedSubjectSubject.obser\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final notifyItemChange(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/OperationLoader;->feedSubjectSubject:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/OperationLoader;->feedSubjectSubject:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
