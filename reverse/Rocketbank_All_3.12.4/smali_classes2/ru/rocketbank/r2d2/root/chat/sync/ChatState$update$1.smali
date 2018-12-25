.class final Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/ChatState;->update(ILjava/util/List;Lrx/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/message/MessageIn;",
        ">;",
        "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
        "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/ChatState;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/ChatState;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/ChatState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/List;

    check-cast p3, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$1;->invoke(ILjava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ILjava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ")",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/ChatState;

    invoke-virtual {v0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/sync/ChatState;->onHeadUpdate(ILjava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    move-result-object p1

    return-object p1
.end method
