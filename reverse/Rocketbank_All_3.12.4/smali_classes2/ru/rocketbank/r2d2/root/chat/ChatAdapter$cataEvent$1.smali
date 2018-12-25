.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $headUpdate:Lkotlin/jvm/functions/Function2;

.field final synthetic $pendingUpdate:Lkotlin/jvm/functions/Function2;

.field final synthetic $progressUpdate:Lkotlin/jvm/functions/Function2;

.field final synthetic $publishErrorEvent:Lkotlin/jvm/functions/Function2;

.field final synthetic $publishEvent:Lkotlin/jvm/functions/Function2;

.field final synthetic $readEvent:Lkotlin/jvm/functions/Function2;

.field final synthetic $tailUpdate:Lkotlin/jvm/functions/Function2;

.field final synthetic $typingMessage:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$headUpdate:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$pendingUpdate:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$tailUpdate:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$publishEvent:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$publishErrorEvent:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$typingMessage:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$readEvent:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$progressUpdate:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ")TT;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    .line 527
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$headUpdate:Lkotlin/jvm/functions/Function2;

    .line 528
    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$pendingUpdate:Lkotlin/jvm/functions/Function2;

    .line 529
    iget-object v4, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$tailUpdate:Lkotlin/jvm/functions/Function2;

    .line 530
    iget-object v5, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$publishEvent:Lkotlin/jvm/functions/Function2;

    .line 531
    iget-object v6, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$publishErrorEvent:Lkotlin/jvm/functions/Function2;

    .line 532
    iget-object v7, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$typingMessage:Lkotlin/jvm/functions/Function2;

    .line 533
    iget-object v8, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$readEvent:Lkotlin/jvm/functions/Function2;

    .line 534
    iget-object v9, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->$progressUpdate:Lkotlin/jvm/functions/Function2;

    move-object v1, p1

    .line 526
    invoke-virtual/range {v0 .. v9}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
