.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->applyUpdate(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;->invoke(Ljava/lang/Boolean;Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;)Z
    .locals 4

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->access$setLastReadId$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;J)V

    .line 419
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->access$setLastRead$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;J)V

    .line 421
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->access$getMessages$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)Lru/rocketbank/r2d2/root/chat/MessageList;

    move-result-object p1

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lru/rocketbank/r2d2/root/chat/MessageList;->updateReadTime(JJ)V

    .line 423
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method
