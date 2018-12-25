.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastMaxId(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;J)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $maxId:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$5;->$maxId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;)J
    .locals 4

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$5;->$maxId:J

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;->getMessage()Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$5;->invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
