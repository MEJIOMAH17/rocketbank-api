.class final Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$2;
.super Ljava/lang/Object;
.source "MessageOutQueueImpl.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->sending(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
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
        "Ljava/lang/Throwable;",
        "Lkotlin/Pair<",
        "+",
        "Lru/rocketbank/core/model/message/MessageIn;",
        "+",
        "Lru/rocketbank/core/network/model/MessageResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $messageIn:Lru/rocketbank/core/model/message/MessageIn;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$2;->$messageIn:Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$2;->call(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 3

    .line 96
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/SendingException;

    const-string v1, "Sending has failed"

    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$2;->$messageIn:Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v0, v1, p1, v2}, Lru/rocketbank/r2d2/root/chat/sync/SendingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lru/rocketbank/core/model/message/MessageIn;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
