.class final Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $event:Lrx/subjects/Subject;


# direct methods
.method constructor <init>(Lrx/subjects/Subject;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$3;->$event:Lrx/subjects/Subject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$3;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/ChatState$update$3;->$event:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
