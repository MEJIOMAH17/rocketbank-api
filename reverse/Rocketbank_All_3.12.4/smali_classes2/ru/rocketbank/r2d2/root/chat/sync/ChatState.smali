.class public final Lru/rocketbank/r2d2/root/chat/sync/ChatState;
.super Ljava/lang/Object;
.source "ChatState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatState.kt\nru/rocketbank/r2d2/root/chat/sync/ChatState\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n683#2:61\n705#2,2:62\n1246#2:64\n1315#2,3:65\n*E\n*S KotlinDebug\n*F\n+ 1 ChatState.kt\nru/rocketbank/r2d2/root/chat/sync/ChatState\n*L\n15#1:61\n15#1,2:62\n17#1:64\n17#1,3:65\n*E\n"
.end annotation


# instance fields
.field private firstPageLoaded:Z

.field private final ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->ids:Ljava/util/Set;

    return-void
.end method

.method private final fire(Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;+",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method

.method private final transformUpdate(Ljava/util/List;ILkotlin/jvm/functions/Function3;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            "+",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p3, p2, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final transformUpdate(Lkotlin/Pair;ILkotlin/jvm/functions/Function3;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;+",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            "+",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p2, v2, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final filterLoaded(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/core/model/message/MessageIn;

    .line 15
    invoke-virtual {v2}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getIds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 66
    check-cast v1, Lru/rocketbank/core/model/message/MessageIn;

    .line 17
    invoke-virtual {v1}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final onHeadUpdate(ILjava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ")",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 51
    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->firstPageLoaded:Z

    if-nez v1, :cond_0

    .line 52
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->firstPageLoaded:Z

    .line 53
    new-instance p1, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;

    invoke-direct {p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;-><init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 54
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->firstPageLoaded:Z

    if-eqz p1, :cond_1

    .line 55
    new-instance p1, Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;

    invoke-direct {p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;-><init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    return-object p1

    :cond_1
    return-object p3
.end method

.method public final onTailUpdate(ILjava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ")",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 45
    new-instance p1, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;

    invoke-direct {p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;-><init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    return-object p1

    :cond_0
    return-object p3
.end method

.method public final storeIds(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->getIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final update(ILjava/util/List;Lrx/subjects/Subject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lrx/subjects/Subject<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->ids:Ljava/util/Set;

    invoke-virtual {p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->filterLoaded(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->ids:Ljava/util/Set;

    invoke-virtual {p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->storeIds(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/ChatState;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p2, p1, v0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->transformUpdate(Ljava/util/List;ILkotlin/jvm/functions/Function3;)Lkotlin/Pair;

    move-result-object p2

    .line 39
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$2;-><init>(Lru/rocketbank/r2d2/root/chat/sync/ChatState;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p2, p1, v0}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->transformUpdate(Lkotlin/Pair;ILkotlin/jvm/functions/Function3;)Lkotlin/Pair;

    move-result-object p1

    .line 40
    new-instance p2, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$3;

    invoke-direct {p2, p3}, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$3;-><init>(Lrx/subjects/Subject;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->fire(Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
