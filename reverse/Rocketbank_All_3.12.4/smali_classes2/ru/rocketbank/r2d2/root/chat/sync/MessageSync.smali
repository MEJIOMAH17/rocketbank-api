.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageSync;
.super Ljava/lang/Object;
.source "MessageSync.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageSync.kt\nru/rocketbank/r2d2/root/chat/sync/MessageSync\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,195:1\n1153#2,12:196\n1246#2:208\n1315#2,3:209\n*E\n*S KotlinDebug\n*F\n+ 1 MessageSync.kt\nru/rocketbank/r2d2/root/chat/sync/MessageSync\n*L\n45#1,12:196\n116#1:208\n116#1,3:209\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;

.field private static final TAG:Ljava/lang/String; = "MessageSync"


# instance fields
.field private final managerState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final messageApi:Lru/rocketbank/core/network/api/MessageApi;

.field private final messageQueue:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;

.field private final messageState:Lru/rocketbank/r2d2/root/chat/sync/ChatState;

.field private final nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile nextPage:I

.field private final notifier:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

.field private final publishSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final totalPages:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getNONE()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->managerState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->totalPages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->notifier:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageState:Lru/rocketbank/r2d2/root/chat/sync/ChatState;

    .line 43
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->publishSubject:Lrx/subjects/PublishSubject;

    .line 50
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->publishSubject:Lrx/subjects/PublishSubject;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;-><init>(Lrx/subjects/PublishSubject;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageQueue:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;

    .line 51
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMessageApi()Lru/rocketbank/core/network/api/MessageApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageApi:Lru/rocketbank/core/network/api/MessageApi;

    return-void
.end method

.method public static final synthetic access$getManagerState$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->managerState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getNextInProgress$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getNextPage$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)I
    .locals 0

    .line 29
    iget p0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextPage:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTotalPages$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->totalPages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$setNextPage$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;I)V
    .locals 0

    .line 29
    iput p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextPage:I

    return-void
.end method

.method public static final synthetic access$splitMessage(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;ILru/rocketbank/core/model/message/MessageIn;)Ljava/util/List;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->splitMessage(ILru/rocketbank/core/model/message/MessageIn;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final executeLoadNextPage()V
    .locals 2

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    iget v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextPage:I

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->page(I)V

    return-void
.end method

.method private final loadPage(I)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/dto/Pagination;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;>;"
        }
    .end annotation

    .line 95
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->TAG:Ljava/lang/String;

    const-string v1, "Load page: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageApi:Lru/rocketbank/core/network/api/MessageApi;

    invoke-interface {v0, p1}, Lru/rocketbank/core/network/api/MessageApi;->getPage(I)Lrx/Observable;

    move-result-object p1

    .line 98
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 99
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "messageApi.getPage(page)\u2026ssages)\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final page(I)V
    .locals 7

    .line 161
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->loadPage(I)Lrx/Observable;

    move-result-object p1

    .line 162
    new-instance v6, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)V

    move-object v5, v0

    check-cast v5, Lrx/functions/Func1;

    const/16 v1, 0x1388

    const-wide/16 v2, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;-><init>(IJLjava/util/concurrent/TimeUnit;Lrx/functions/Func1;)V

    check-cast v6, Lrx/functions/Func1;

    invoke-virtual {p1, v6}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 165
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private final splitMessage(ILru/rocketbank/core/model/message/MessageIn;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->getAttachments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 123
    check-cast v0, Ljava/lang/Iterable;

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    check-cast v3, Lru/rocketbank/core/model/message/Attachment;

    .line 117
    sget-object v4, Lru/rocketbank/core/model/message/MessageIn;->Companion:Lru/rocketbank/core/model/message/MessageIn$Companion;

    invoke-virtual {v4, p2, v3}, Lru/rocketbank/core/model/message/MessageIn$Companion;->create(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/core/model/message/Attachment;)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v1}, Lru/rocketbank/core/model/message/MessageIn;->setBody(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, p1}, Lru/rocketbank/core/model/message/MessageIn;->setGroupTime(I)V

    .line 122
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    .line 123
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 125
    :goto_1
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->getBody()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_4

    .line 126
    invoke-virtual {p2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setGroupTime(I)V

    .line 127
    sget-object p1, Lru/rocketbank/core/model/message/MessageIn;->Companion:Lru/rocketbank/core/model/message/MessageIn$Companion;

    invoke-virtual {p1, p2, v1}, Lru/rocketbank/core/model/message/MessageIn$Companion;->create(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/core/model/message/Attachment;)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getMessageApi()Lru/rocketbank/core/network/api/MessageApi;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageApi:Lru/rocketbank/core/network/api/MessageApi;

    return-object v0
.end method

.method public final getMessageQueue()Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageQueue:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;

    return-object v0
.end method

.method public final getMessageState()Lru/rocketbank/r2d2/root/chat/sync/ChatState;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageState:Lru/rocketbank/r2d2/root/chat/sync/ChatState;

    return-object v0
.end method

.method public final getPublishSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->publishSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final loadHead()V
    .locals 2

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->page(I)V

    return-void
.end method

.method public final loadNext()V
    .locals 2

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->totalPages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->nextPage:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->executeLoadNextPage()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->managerState:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getCREATED()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final onMessage(Lru/rocketbank/r2d2/manager/messsage/MessageNotification;)V
    .locals 11

    const-string v0, "messageNotifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->getType()I

    move-result v0

    .line 77
    sget-object v1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_READ()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->getData()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-class v2, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;

    .line 81
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->publishSubject:Lrx/subjects/PublishSubject;

    new-instance v10, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->getMessage()Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->getMessage()Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;-><init>(JJLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v1, v10}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    sget-object v1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_MESSAGE()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->loadHead()V

    return-void

    .line 87
    :cond_1
    sget-object v1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_TYPING()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->getData()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->publishSubject:Lrx/subjects/PublishSubject;

    new-instance v1, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;

    const-string v2, "notification"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2, v3}, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->managerState:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getCONNECT()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->notifier:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->onStart()V

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->notifier:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->setNotificationListener(Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->managerState:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getSTOPPED()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->notifier:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->onStop()V

    return-void
.end method

.method public final sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 5

    const-string v0, "messageIn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->publishSubject:Lrx/subjects/PublishSubject;

    new-instance v1, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;-><init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->messageQueue:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;->sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method

.method public final splitMessages(I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final unpackMessages(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "+",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;)",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u03bb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    check-cast p1, Ljava/lang/Iterable;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 203
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 204
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 205
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 207
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
