.class public Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.kt"


# instance fields
.field private final parent:Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;->parent:Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final getParent()Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
    .locals 1

    .line 3
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;->parent:Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    return-object v0
.end method
