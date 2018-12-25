.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;
.super Lrx/Subscriber;
.source "MessageSync.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->page(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lkotlin/Pair<",
        "+",
        "Lru/rocketbank/core/model/dto/Pagination;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/message/MessageIn;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageSync.kt\nru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

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

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$getNextInProgress$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->onNext(Lkotlin/Pair;)V

    return-void
.end method

.method public final onNext(Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/dto/Pagination;",
            "+",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "chatMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/Pagination;

    .line 176
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 179
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->getMessageState()Lru/rocketbank/r2d2/root/chat/sync/ChatState;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/Pagination;->getCurrentPage()I

    move-result v0

    .line 181
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->getPublishSubject()Lrx/subjects/PublishSubject;

    move-result-object v2

    check-cast v2, Lrx/subjects/Subject;

    .line 179
    invoke-virtual {v1, v0, p1, v2}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->update(ILjava/util/List;Lrx/subjects/Subject;)V

    .line 182
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$getNextPage$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$setNextPage$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;I)V

    .line 185
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$2;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$getNextInProgress$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
