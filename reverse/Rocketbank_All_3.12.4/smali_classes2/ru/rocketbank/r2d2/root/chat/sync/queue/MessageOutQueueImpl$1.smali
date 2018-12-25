.class final Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$1;
.super Ljava/lang/Object;
.source "MessageOutQueueImpl.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;-><init>(Lrx/subjects/PublishSubject;)V
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


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$1;->call(Ljava/lang/Long;)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Long;)Lru/rocketbank/core/model/message/MessageIn;
    .locals 0

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->access$getQueue$p(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/MessageIn;

    return-object p1
.end method
