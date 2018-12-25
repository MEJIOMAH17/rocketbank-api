.class public final Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;
.super Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
.source "TailMessagesEvent.kt"


# instance fields
.field private final update:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;->update:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;-><init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final getUpdate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;->update:Ljava/util/List;

    return-object v0
.end method
