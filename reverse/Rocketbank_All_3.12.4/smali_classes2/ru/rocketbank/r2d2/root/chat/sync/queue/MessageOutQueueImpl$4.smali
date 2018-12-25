.class public final Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;
.super Lrx/Subscriber;
.source "MessageOutQueueImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;-><init>(Lrx/subjects/PublishSubject;)V
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
        "Lru/rocketbank/core/model/message/MessageIn;",
        "+",
        "Lru/rocketbank/core/network/model/MessageResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 70
    instance-of v0, p1, Lru/rocketbank/r2d2/root/chat/sync/SendingException;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/root/chat/sync/SendingException;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/SendingException;->getMessageIn()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setFailed(Z)V

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setUploading(Z)V

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getPublishSubject()Lrx/subjects/PublishSubject;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3, v4}, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;-><init>(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v1, v2}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 79
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->Companion:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to send"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;->onNext(Lkotlin/Pair;)V

    return-void
.end method

.method public final onNext(Lkotlin/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/MessageIn;

    .line 42
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/MessageResponse;

    .line 43
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/MessageResponse;->getMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 45
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/MessageIn;->setFailed(Z)V

    .line 46
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getPublishSubject()Lrx/subjects/PublishSubject;

    move-result-object p1

    new-instance v3, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;

    invoke-direct {v3, v0, v2, v1, v2}, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;-><init>(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {p1, v3}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getCreatedAt()I

    move-result v3

    invoke-virtual {v0, v3}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    .line 51
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAdminPermalink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/rocketbank/core/model/message/MessageIn;->setAdminPermalink(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/rocketbank/core/model/message/MessageIn;->setAttachments(Ljava/util/List;)V

    .line 53
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result v3

    invoke-virtual {v0, v3}, Lru/rocketbank/core/model/message/MessageIn;->setDeliveredAt(I)V

    .line 54
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/rocketbank/core/model/message/MessageIn;->setAuthor(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    .line 56
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/rocketbank/core/model/message/MessageIn;->setAuthor(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getReadAt()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/MessageIn;->setReadAt(I)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/MessageIn;->setUploading(Z)V

    .line 60
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/MessageIn;->setFailed(Z)V

    .line 62
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getPublishSubject()Lrx/subjects/PublishSubject;

    move-result-object p1

    new-instance v3, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;

    invoke-direct {v3, v0, v2, v1, v2}, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;-><init>(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {p1, v3}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
