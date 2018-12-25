.class public Lru/rocketbank/core/utils/presenter/RxPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "RxPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/presenter/RxPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lru/rocketbank/core/utils/presenter/Presenter;"
    }
.end annotation


# static fields
.field private static final CACHED_REQUSTS:Ljava/lang/String; = "CACHED_REQUSTS"

.field public static final Companion:Lru/rocketbank/core/utils/presenter/RxPresenter$Companion;

.field private static final INSTANCE_ID:Ljava/lang/String; = "INSTANCE_ID"

.field private static final REQUEST_IDS:Ljava/lang/String; = "REQUEST_IDS"

.field private static final TAG:Ljava/lang/String; = "RxPresenter"


# instance fields
.field private requestCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private requestedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptionsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private final targetPublish:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/utils/presenter/RxPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/utils/presenter/RxPresenter$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->Companion:Lru/rocketbank/core/utils/presenter/RxPresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 15
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic singleCallOrReplay$default(Lru/rocketbank/core/utils/presenter/RxPresenter;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 6

    if-eqz p7, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: singleCallOrReplay"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 119
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->singleCallOrReplay(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static bridge synthetic singleCallOrRestart$default(Lru/rocketbank/core/utils/presenter/RxPresenter;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 6

    if-eqz p7, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: singleCallOrRestart"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 73
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->singleCallOrRestart(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final createNewInstance(ILkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "instanceCreation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RXPR"

    const-string v1, "Create new instance"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrx/Subscription;

    .line 175
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final deliverCacheSingle(ILandroid/util/SparseArray;)Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lru/rocketbank/core/utils/presenter/DeliverCacheSingle<",
            "TZ;TT;>;"
        }
    .end annotation

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    check-cast v1, Lrx/Observable;

    invoke-direct {v0, p1, p2, v1}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;-><init>(ILandroid/util/SparseArray;Lrx/Observable;)V

    return-object v0
.end method

.method public final deliverSimple(I)Lru/rocketbank/core/utils/presenter/DeliverSimple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lru/rocketbank/core/utils/presenter/DeliverSimple<",
            "TZ;TT;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Lru/rocketbank/core/utils/presenter/DeliverSimple;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    check-cast v1, Lrx/Observable;

    invoke-direct {v0, p1, v1}, Lru/rocketbank/core/utils/presenter/DeliverSimple;-><init>(ILrx/Observable;)V

    return-object v0
.end method

.method public final getRequestCache()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getRequestedIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSubscriptionsMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getTargetPublish()Lrx/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/BehaviorSubject<",
            "TZ;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    return-object v0
.end method

.method public onAttached(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onAttached(Ljava/lang/Object;)V

    .line 222
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 26
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Restoring state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->REQUEST_IDS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "savedInstanceState.getIn\u2026gerArrayList(REQUEST_IDS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->CACHED_REQUSTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, "savedInstanceState.getSp\u2026ableArray(CACHED_REQUSTS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    .line 32
    sget-object p1, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestedIds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object p1, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v0, "create new"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    iget-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    invoke-virtual {p1}, Lrx/subjects/BehaviorSubject;->subscribe()Lrx/Subscription;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 206
    invoke-super {p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroy()V

    .line 208
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 210
    :goto_0
    iget-object v2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    .line 212
    :cond_0
    iget-object v2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->onCompleted()V

    return-void
.end method

.method public onDetached(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onDetached(Ljava/lang/Object;)V

    .line 229
    sget-object p1, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v0, "onDetached"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->targetPublish:Lrx/subjects/BehaviorSubject;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onSavedInstanceState(Landroid/os/Bundle;)V

    .line 196
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Saving state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving requestedIds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving requestCache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->CACHED_REQUSTS:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 201
    sget-object v0, Lru/rocketbank/core/utils/presenter/RxPresenter;->REQUEST_IDS:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final removeInstance(I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 50
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 53
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final setRequestCache(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    return-void
.end method

.method public final setRequestedIds(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSubscriptionsMap(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->subscriptionsMap:Landroid/util/SparseArray;

    return-void
.end method

.method public final simpleCall(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lrx/Observable<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/utils/presenter/RxPresenter$simpleCall$1;-><init>(Lru/rocketbank/core/utils/presenter/RxPresenter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;I)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/core/utils/presenter/RxPresenter;->createNewInstance(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final singleCallOrReplay(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lrx/Observable<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    sget-object p2, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v0, "singleCallOrReplay: Requested"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p5

    .line 126
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;->isRestarted()Z

    move-result p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    .line 127
    sget-object p2, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v0, "singleCallOrReplay: restarted"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 132
    sget-object p4, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v0, "singleCallOrReplay: sending cached value"

    invoke-static {p4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p2

    .line 135
    iget-object p4, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p4}, Lru/rocketbank/core/utils/presenter/RxPresenter;->deliverCacheSingle(ILandroid/util/SparseArray;)Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    move-result-object p1

    check-cast p1, Lrx/Observable$Transformer;

    invoke-virtual {p2, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p3, p5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void

    .line 138
    :cond_1
    sget-object p2, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string p3, "singleCallOrReplay: sending error: no result"

    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0, p5, p4}, Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;

    move-result-object p2

    .line 142
    new-instance p3, Lru/rocketbank/core/utils/presenter/SingleCallRestartedException;

    invoke-direct {p3}, Lru/rocketbank/core/utils/presenter/SingleCallRestartedException;-><init>()V

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p3

    .line 143
    iget-object p4, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p4}, Lru/rocketbank/core/utils/presenter/RxPresenter;->deliverCacheSingle(ILandroid/util/SparseArray;)Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    move-result-object p1

    check-cast p1, Lrx/Observable$Transformer;

    invoke-virtual {p3, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void

    .line 147
    :cond_2
    sget-object p2, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string p4, "singleCallOrReplay: not restarted"

    invoke-static {p2, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 151
    sget-object p4, Lru/rocketbank/core/utils/presenter/RxPresenter;->TAG:Ljava/lang/String;

    const-string v0, "singleCallOrReplay: sending cached result"

    invoke-static {p4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p2

    .line 154
    iget-object p4, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p4}, Lru/rocketbank/core/utils/presenter/RxPresenter;->deliverCacheSingle(ILandroid/util/SparseArray;)Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    move-result-object p1

    check-cast p1, Lrx/Observable$Transformer;

    invoke-virtual {p2, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p3, p5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    :cond_3
    return-void

    .line 159
    :cond_4
    new-instance p5, Lru/rocketbank/core/utils/presenter/RxPresenter$singleCallOrReplay$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/utils/presenter/RxPresenter$singleCallOrReplay$1;-><init>(Lru/rocketbank/core/utils/presenter/RxPresenter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;I)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, p5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->createNewInstance(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final singleCallOrRestart(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lrx/Observable<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p5, :cond_0

    move-object p5, p3

    .line 78
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;->isRestarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p2

    .line 83
    iget-object p3, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Lru/rocketbank/core/utils/presenter/RxPresenter;->deliverCacheSingle(ILandroid/util/SparseArray;)Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    move-result-object p1

    check-cast p1, Lrx/Observable$Transformer;

    invoke-virtual {p2, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p5, v1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->removeInstance(I)V

    .line 87
    new-instance p5, Lru/rocketbank/core/utils/presenter/RxPresenter$singleCallOrRestart$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/utils/presenter/RxPresenter$singleCallOrRestart$1;-><init>(Lru/rocketbank/core/utils/presenter/RxPresenter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;I)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, p5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->createNewInstance(ILkotlin/jvm/functions/Function0;)V

    return-void

    .line 95
    :cond_2
    iget-object p2, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 97
    invoke-static {p2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p2

    .line 98
    iget-object p3, p0, Lru/rocketbank/core/utils/presenter/RxPresenter;->requestCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Lru/rocketbank/core/utils/presenter/RxPresenter;->deliverCacheSingle(ILandroid/util/SparseArray;)Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    move-result-object p1

    check-cast p1, Lrx/Observable$Transformer;

    invoke-virtual {p2, p1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p5, v1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    :cond_3
    return-void

    .line 103
    :cond_4
    new-instance p5, Lru/rocketbank/core/utils/presenter/RxPresenter$singleCallOrRestart$2;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/utils/presenter/RxPresenter$singleCallOrRestart$2;-><init>(Lru/rocketbank/core/utils/presenter/RxPresenter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;I)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, p5}, Lru/rocketbank/core/utils/presenter/RxPresenter;->createNewInstance(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final split(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TZ;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lrx/functions/Action1<",
            "Lru/rocketbank/core/utils/presenter/Delivery<",
            "TZ;TT;>;>;"
        }
    .end annotation

    .line 187
    new-instance v0, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/utils/presenter/RxPresenter$split$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lrx/functions/Action1;

    return-object v0
.end method
