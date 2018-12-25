.class public final Lru/rocketbank/core/manager/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/TemplateManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/TemplateManager$Companion;

.field private static final TAG:Ljava/lang/String; = "TemplateManager"


# instance fields
.field private final rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

.field private final transferTemplateObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/TransferTemplates;",
            ">;"
        }
    .end annotation
.end field

.field private final transferTemplateSubject:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject<",
            "Lru/rocketbank/core/model/TransferTemplates;",
            "Lru/rocketbank/core/model/TransferTemplates;",
            ">;"
        }
    .end annotation
.end field

.field private transferTemplates:Lru/rocketbank/core/model/TransferTemplates;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/TemplateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/TemplateManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/TemplateManager;->Companion:Lru/rocketbank/core/manager/TemplateManager$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "rocketApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/TemplateManager;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 28
    new-instance p1, Lrx/subjects/SerializedSubject;

    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lrx/subjects/Subject;

    invoke-direct {p1, v0}, Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V

    check-cast p1, Lrx/subjects/Subject;

    iput-object p1, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateSubject:Lrx/subjects/Subject;

    .line 29
    iget-object p1, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateSubject:Lrx/subjects/Subject;

    invoke-virtual {p1}, Lrx/subjects/Subject;->asObservable()Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->publish()Lrx/observables/ConnectableObservable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/observables/ConnectableObservable;->refCount()Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->onBackpressureDrop()Lrx/Observable;

    move-result-object p1

    const-string v0, "transferTemplateSubject.\u2026nt().onBackpressureDrop()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateObservable:Lrx/Observable;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/core/manager/TemplateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTransferTemplateSubject$p(Lru/rocketbank/core/manager/TemplateManager;)Lrx/subjects/Subject;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateSubject:Lrx/subjects/Subject;

    return-object p0
.end method

.method public static final synthetic access$setTemplates(Lru/rocketbank/core/manager/TemplateManager;Lru/rocketbank/core/model/TransferTemplates;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplates:Lru/rocketbank/core/model/TransferTemplates;

    .line 1044
    iget-object p0, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateSubject:Lrx/subjects/Subject;

    invoke-virtual {p0, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getTemplates()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/TransferTemplates;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplates:Lru/rocketbank/core/model/TransferTemplates;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplates:Lru/rocketbank/core/model/TransferTemplates;

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateObservable:Lrx/Observable;

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.merge(Observa\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/TemplateManager;->transferTemplateObservable:Lrx/Observable;

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "transferTemplateObservab\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final refreshTemplates()V
    .locals 6

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/manager/TemplateManager;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->getRecentTransfers()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/utils/rx/RetryWithDelay;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xa

    const-wide/16 v4, 0xf

    invoke-direct {v1, v3, v4, v5, v2}, Lru/rocketbank/core/utils/rx/RetryWithDelay;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 49
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 50
    sget-object v1, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;->INSTANCE:Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 73
    new-instance v1, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$2;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$2;-><init>(Lru/rocketbank/core/manager/TemplateManager;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method
