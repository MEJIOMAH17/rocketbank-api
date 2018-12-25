.class public final Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;
.super Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
.source "PublishedMessageEvent.kt"


# instance fields
.field private final message:Lru/rocketbank/core/model/message/MessageIn;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;->message:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;-><init>(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final getMessage()Lru/rocketbank/core/model/message/MessageIn;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;->message:Lru/rocketbank/core/model/message/MessageIn;

    return-object v0
.end method
