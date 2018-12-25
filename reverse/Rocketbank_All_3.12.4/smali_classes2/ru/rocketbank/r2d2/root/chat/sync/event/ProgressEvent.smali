.class public final Lru/rocketbank/r2d2/root/chat/sync/event/ProgressEvent;
.super Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
.source "ProgressEvent.kt"


# instance fields
.field private final loading:Z


# direct methods
.method public constructor <init>(ZLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/chat/sync/event/ProgressEvent;->loading:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/ProgressEvent;-><init>(ZLru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final getLoading()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/ProgressEvent;->loading:Z

    return v0
.end method
