.class final Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;
.super Ljava/lang/Object;
.source "MessageSync.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->loadPage(I)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageSync.kt\nru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 MessageSync.kt\nru/rocketbank/r2d2/root/chat/sync/MessageSync\n*L\n1#1,195:1\n360#2:196\n310#2:197\n1051#3,2:198\n1153#3,12:201\n1054#3:213\n1153#3,12:214\n45#4:200\n*E\n*S KotlinDebug\n*F\n+ 1 MessageSync.kt\nru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1\n*L\n104#1:196\n104#1:197\n104#1,2:198\n104#1,12:201\n104#1:213\n106#1,12:214\n104#1:200\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lru/rocketbank/core/network/model/MessagesResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;->call(Lru/rocketbank/core/network/model/MessagesResponse;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/MessagesResponse;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/MessagesResponse;",
            ")",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/dto/Pagination;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/MessagesResponse;->getPagination()Lru/rocketbank/core/model/dto/Pagination;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$getTotalPages$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/MessagesResponse;->getPagination()Lru/rocketbank/core/model/dto/Pagination;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/Pagination;->getTotalPages()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 106
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/MessagesResponse;->getMessages()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 196
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_1

    .line 1139
    div-int/lit8 v3, v2, 0x3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 196
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 197
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 198
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 199
    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$loadPage$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->splitMessages(I)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 200
    check-cast v4, Ljava/lang/Iterable;

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 208
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 209
    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 210
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 212
    :cond_2
    check-cast v5, Ljava/util/List;

    .line 105
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 221
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 222
    check-cast v2, Ljava/util/List;

    .line 106
    check-cast v2, Ljava/lang/Iterable;

    .line 223
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 225
    :cond_4
    check-cast v1, Ljava/util/List;

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 108
    :goto_4
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
