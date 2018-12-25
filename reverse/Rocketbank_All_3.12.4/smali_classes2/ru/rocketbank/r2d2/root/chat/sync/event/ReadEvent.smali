.class public final Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;
.super Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
.source "ReadEvent.kt"


# instance fields
.field private final id:J

.field private final time:J


# direct methods
.method public constructor <init>(JJLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 0

    .line 7
    invoke-direct {p0, p5}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    iput-wide p1, p0, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->id:J

    iput-wide p3, p0, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->time:J

    return-void
.end method

.method public synthetic constructor <init>(JJLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;-><init>(JJLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->id:J

    return-wide v0
.end method

.method public final getTime()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->time:J

    return-wide v0
.end method
