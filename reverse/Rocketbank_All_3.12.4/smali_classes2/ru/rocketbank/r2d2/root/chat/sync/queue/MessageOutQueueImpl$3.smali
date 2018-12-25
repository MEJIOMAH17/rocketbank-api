.class final Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$3;
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
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$3;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/model/message/MessageIn;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$3;->call(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lrx/Observable<",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$3;->this$0:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->access$sending(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
