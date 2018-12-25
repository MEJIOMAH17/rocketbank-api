.class public final Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;
.super Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
.source "TypingEvent.kt"


# instance fields
.field private final typingNotification:Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 1

    const-string v0, "typingNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;->typingNotification:Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;-><init>(Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final getTypingNotification()Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;->typingNotification:Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;

    return-object v0
.end method
