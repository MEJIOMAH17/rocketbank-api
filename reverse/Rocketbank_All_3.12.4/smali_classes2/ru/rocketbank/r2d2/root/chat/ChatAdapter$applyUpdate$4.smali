.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;
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
        "Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;->invoke(Ljava/lang/Boolean;Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    sget-object p1, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->Companion:Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Publish error"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->access$getMessages$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)Lru/rocketbank/r2d2/root/chat/MessageList;

    move-result-object p1

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;->getMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/MessageList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 390
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemChanged(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
