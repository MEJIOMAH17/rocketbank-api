.class final Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$1;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $messageIn:Lru/rocketbank/core/model/message/MessageIn;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$1;->$messageIn:Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/MessageResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$1;->call(Lru/rocketbank/core/network/model/MessageResponse;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/MessageResponse;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ")",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$1;->$messageIn:Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
